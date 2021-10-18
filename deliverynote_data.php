<?php

session_start();

////////////////////////////////////////////// Database Connector /////////////////////////////////////////////////////////////
require_once ("connection_sql.php");

////////////////////////////////////////////// Write XML ////////////////////////////////////////////////////////////////////
header('Content-Type: text/xml');

date_default_timezone_set('Asia/Colombo');

/////////////////////////////////////// GetValue //////////////////////////////////////////////////////////////////////////
///////////////////////////////////// Registration /////////////////////////////////////////////////////////////////////////

if ($_POST["Command"] == "getdt") {
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<new>";

    $sql = "SELECT DELIVERYNOTE FROM invpara";
    $result = $conn->query($sql);

    $row = $result->fetch();
    $no = $row['DELIVERYNOTE'];
    $uniq = uniqid();
    $ResponseXML .= "<id><![CDATA[$no]]></id>";
    $ResponseXML .= "<uniq><![CDATA[$uniq]]></uniq>";
    $ResponseXML .= "<dt><![CDATA[".date("Y-m-d")."]]></dt>";

    $ResponseXML .= "</new>";

    echo $ResponseXML;
}

 
 

 

if ($_GET["Command"] == "pass_rec") {
 

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_GET["custno"];

    $sql = "Select * from s_delivery where   REFNO ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }
    
     $ResponseXML .= "<sales_table><![CDATA[<table class=\"table table-bordered\">
    ";

        $i = 1;
        $mtot = 0;
        $sql = "Select * from s_delivery_item where REFNO='" . $cuscode. "'"; 
        foreach ($conn->query($sql) as $row1) {

            $ResponseXML .= "<tr>                              
             <td style=\"width: 120px;\">" . $row1['STK_NO'] . "</td>
        <td style=\"width: 340px;\">" . $row1['DESCRIPT'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['RATE'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['OQTY'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['BQTY'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['QTY'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['SUBTOT'] . "</td>  
            </tr>";
        }
 
        $ResponseXML .= "   </table>]]></sales_table>";

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}


 

if ($_POST["Command"] == "save_item") {
    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();

        $sql_invpara = "SELECT * from invpara"; 
        $result_invpara = $conn->query($sql_invpara);
        $row_invpara = $result_invpara->fetch();
 

        $sql = "select * from s_delivery where REFNO='" . $_POST["invno"] . "'";
        $result = $conn->query($sql);
        if ($row = $result->fetch()) {
            echo "Number Already Exists";
            exit();
        }else {
            
 
              $i = 0;
              $qty=0;
             while ($i < $_POST["mcount"]) {
                $ITEM="ITEM" .$i; 
                $DES="DES" .$i;   
                $RATE="RATE" .$i;
                $OQTY="OQTY" .$i; 
                $DQTY="DQTY" .$i; 
                $BQTY="BQTY" .$i; 
                $SUBTOT="SUBTOT" .$i; 
             
                if($_POST[$DQTY]>0){
                    $sql4 = "insert into s_delivery_item(REFNO, SDATE, STK_NO, DESCRIPT,QTY, RATE, SUBTOT, UNIQ,OQTY,BQTY) values"
                    . " ('" . $_POST["invno"] . "', '" . $_POST["sdate"] . "', '" . $_POST[$ITEM]. "', '" . $_POST[$DES] . "','" . $_POST[$DQTY]. "', '" . $_POST[$RATE] . "', '" . $_POST[$SUBTOT] . "','" . $_POST["uniq"]. "', '" . $_POST[$OQTY] . "', '" . $_POST[$BQTY] . "')";
    
                    $result4 = $conn->query($sql4);
                    
                    $sql5 = "update s_ordmas_item set DQTY=DQTY+'".$_POST[$DQTY]."' where REFNO='".$_POST["ordno"]."' and STK_NO='".$_POST[$ITEM]."'";
                    $result5 = $conn->query($sql5);
                }
            
                 $i = $i + 1;
                 $qty = $qty + $_POST[$DQTY];
            }

            $sql1 = "insert into s_delivery(REFNO, SDATE, DEPARTMENT, SALEX, REMARK, UNIQ,TOTAMOUNT,CUSCODE,CUSNAME,ORDNO,TOTQTY) values ('" . $_POST["invno"]. "', '" . $_POST["sdate"] . "' ,  '" . $_POST["department"] . "','" . $_POST["rep"] . "','" . $_POST["remark"] . "','" . $_POST["uniq"] . "','" . $_POST["total_value"] . "','" . $_POST["c_code"] . "','" . $_POST["c_name"] . "','" . $_POST["ordno"] . "','" . $qty . "')";
            $conn->exec($sql1);
            
            
            $sql1 = "update s_ordmas set FLAG='6' where REFNO='". $_POST["ordno"] ."'";
            $conn->exec($sql1);
            
             $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . $_POST["invno"] . "', '" . $_SESSION["CURRENT_USER"] . "', 'DELIVERY NOTE', 'SAVE', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);

            $sql1 = "update invpara set DELIVERYNOTE=DELIVERYNOTE+1";
            $conn->exec($sql1);

            $conn->commit();
            echo "Saved";

        }

    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
}



 
if ($_GET["Command"] == "del_inv") {

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";
    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();

        $sql = "select * from s_delivery where REFNO ='" . $_GET['invno'] . "'";
        $result = $conn->query($sql);
        if ($row = $result->fetch()) {
            if ($row['CANCELL'] != "0") {
                echo "Already Cancelled";
                exit();
            }
 

                $sql = "update s_delivery_item set CANCELL='1' where REFNO = '" . $row['REFNO'] . "'";
                $conn->exec($sql);
                
                $sql = "update s_delivery set CANCELL='1' where REFNO = '" . $row['REFNO'] . "'";
                $conn->exec($sql);
 
                $sql1 = "Select * from s_delivery_item where REFNO='" . $row['REFNO']. "'"; 
                foreach ($conn->query($sql1) as $row1) {
                    
                    $sql5 = "update s_ordmas_item set DQTY=DQTY-'".$_POST[$DQTY]."' where REFNO='".$row['ORDNO']."' and STK_NO='".$row1['STK_NO']."'";
                    $result5 = $conn->query($sql5);
                    
                }
               
                
                 $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . $_GET["invno"] . "', '" . $_SESSION["CURRENT_USER"] . "', 'SALESORDER', 'CANCEL', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
                 $resultlog = $conn->query($sqllog);

 
                $conn->commit();
                echo "Cancelled";
             
        } else {
            echo "Entry Not Found";
        }
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
}



if ($_GET["Command"] == "pass_quot1") {
 

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_GET["custno"];

    $sql = "Select * from s_ordmas where   REFNO ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }
    
     $ResponseXML .= "<sales_table><![CDATA[<table class=\"table table-bordered\"  style=\"overflow-x:auto;\">
    ";

         $i=0;
        
        $sql = "Select * from s_ordmas_item where REFNO='" . $cuscode. "'";  
        foreach ($conn->query($sql) as $row1) {
            $ITEM="ITEM".$i; 
            $DES="DES".$i;   
            $RATE="RATE".$i;
            $OQTY="OQTY".$i; 
            $DQTY="DQTY".$i; 
            $BQTY="BQTY".$i; 
            $SUBTOT="SUBTOT".$i; 
          
           
            $BALQTY=$row1['QTY']-$row1['DQTY'];
            $ResponseXML .= "<tr>                              
                <td style=\"width: 120px;\"><div id='".$ITEM."'>".$row1["STK_NO"]."</div></td>
                <td style=\"width: 340px;\"><div id='".$DES."'>" . $row1['DESCRIPT'] . "</div></td>
                <td style=\"width: 120px;\" align='right'><input type=\"number\" style=\"text-align:right\" disabled   value=\"".$row1['RATE']."\"  name=\"".$RATE."\" id=\"".$RATE."\" class=\"form-control col-sm-1 input-sm\" onblur=\"cal_bal('".$i."');\"/></td> 
                <td style=\"width: 120px;\" align='right'><input type=\"number\" style=\"text-align:right\" disabled value=\"".$row1['QTY']."\"  name=\"".$OQTY."\" id=\"".$OQTY."\" class=\"form-control col-sm-1 input-sm\" onblur=\"cal_bal('".$i."');\"/></td>
                <td style=\"width: 120px;\" align='right'><input type=\"number\" style=\"text-align:right\" disabled value=\"".$BALQTY."\"  name=\"".$BQTY."\" id=\"".$BQTY."\" class=\"form-control col-sm-1 input-sm\" onblur=\"cal_bal('".$i."');\"/></td> 
                <td style=\"width: 120px;\" align='right'><input type=\"number\" style=\"text-align:right\"    name=\"".$DQTY."\" id=\"".$DQTY."\" class=\"form-control col-sm-1 input-sm\" onblur=\"cal_bal('".$i."');\"/></td> 
                <td style=\"width: 120px;\" align='right'><div id='".$SUBTOT."'></div></td> 
            </tr>";
              $i=$i+1;   
              
               
        }
 
        $ResponseXML .= "   </table>]]></sales_table>";
     $ResponseXML .= "<mcount><![CDATA[".$i."]]></mcount>";
    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}




?>