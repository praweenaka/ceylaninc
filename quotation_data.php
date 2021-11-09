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

    $sql = "SELECT QUOTATION FROM invpara";
    $result = $conn->query($sql);

    $row = $result->fetch();
    $no = $row['QUOTATION'];
    $uniq = uniqid();
    $ResponseXML .= "<id><![CDATA[$no]]></id>";
    $ResponseXML .= "<uniq><![CDATA[$uniq]]></uniq>";
    $ResponseXML .= "<dt><![CDATA[".date("Y-m-d")."]]></dt>";

    $ResponseXML .= "</new>";

    echo $ResponseXML;
}

 
 if ($_GET["Command"] == "custno1") {
 

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_GET["custno"];

    $sql = "Select * from s_mas where   STK_NO ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}


 if ($_POST["Command"] == "pass_quot2") {
    $_SESSION["custno"] = $_GET['custno'];

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_POST["custno"];

    $sql = "Select * from vendor where   CODE ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}

if ($_GET["Command"] == "pass_rec") {
 

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_GET["custno"];

    $sql = "Select * from s_quomas where   REFNO ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }
    
     $ResponseXML .= "<sales_table><![CDATA[<table class=\"table table-bordered\">
    ";

        $i = 1;
        $mtot = 0;
        $sql = "Select * from s_quomas_item where REFNO='" . $cuscode. "'"; 
        foreach ($conn->query($sql) as $row1) {

            $ResponseXML .= "<tr>                              
             <td style=\"width: 120px;\">" . $row1['STK_NO'] . "</td>
        <td style=\"width: 380px;\">" . $row1['DESCRIPT'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['RATE'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['QTY'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row1['SUBTOT'] . "</td> 
        <td style=\"width: 100px;\"></td> 
            </tr>";
        }
 
        $ResponseXML .= "   </table>]]></sales_table>";

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}


if ($_POST["Command"] == "setitem") {
 
    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";


    $sql = "delete from s_quomas_item_tmp where stk_no='" . $_POST['itemCode'] . "' and uniq='" . $_POST['uniq'] . "' ";
    $result = $conn->query($sql);
    if ($_POST["Command1"] == "add_tmp") {
 
        $sql = "Insert into s_quomas_item_tmp (stk_no, descript, qty, rate,uniq,subtot,refno)values 
        ('" . $_POST['itemCode'] . "', '" . $_POST['itemDesc'] . "'," . $_POST['qty'] . ", '" . $_POST['selling'] . "','" . $_POST['uniq'] . "','" . $_POST['qty'] * $_POST['selling'] . "','" . $_POST['invno'] . "') ";
        $result = $conn->query($sql);
    }

    $ResponseXML .= "<sales_table><![CDATA[<table class=\"table table-bordered\">
    ";

    $i = 1;
    $mqty = 0;
    $sql = "Select * from s_quomas_item_tmp where uniq='" . $_POST['uniq'] . "'";
    foreach ($conn->query($sql) as $row) {

        $ResponseXML .= "<tr>                              
        <td style=\"width: 120px;\">" . $row['stk_no'] . "</td>
        <td style=\"width: 380px;\">" . $row['descript'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row['rate'] . "</td>
        <td style=\"width: 120px;\" align='right'>" . $row['qty'] . "</td>
        <td style=\"width: 120px;\">" . $row['subtot'] . "</td> 
        <td style=\"width: 100px;\"><button   onClick=\"del_item('" . $row['stk_no'] . "')\" type=\"button\" class=\"btn btn-danger btnDelete btn-sm\">Remove</button> </td>
        
        </tr>";

        $mqty = $mqty + ($row['rate']*$row['qty']);
        $i = $i + 1;
    } 

    $ResponseXML .= "   </table>]]></sales_table>";
 
    $ResponseXML .= "<subtot><![CDATA[" . $mqty . "]]></subtot>";
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
 

        $sql = "select * from s_quomas where REFNO='" . $_POST["invno"] . "'";
        $result = $conn->query($sql);
        if ($row = $result->fetch()) {
            echo "Number Already Exists";
            exit();
        }else {
            $sql1 = "insert into s_quomas(REFNO, SDATE, DEPARTMENT, SALEX, REMARK, UNIQ,TOTAMOUNT,CUSCODE,CUSNAME) values ('" . $_POST["invno"]. "', '" . $_POST["sdate"] . "' ,  '" . $_POST["department"] . "','" . $_POST["rep"] . "','" . $_POST["remark"] . "','" . $_POST["uniq"] . "','" . $_POST["total_value"] . "','" . $_POST["c_code"] . "','" . $_POST["c_name"] . "')";
            $conn->exec($sql1);
 
            $sql = "select * from s_quomas_item_tmp where uniq='" . $_POST["uniq"] . "'"; 
            foreach ($conn->query($sql) as $row) {

                $sql121 = "insert into s_quomas_item(REFNO, SDATE, STK_NO, DESCRIPT,QTY, RATE, SUBTOT, UNIQ) values"
                . " ('" . $_POST["invno"] . "', '" . $_POST["sdate"] . "', '" . $row['stk_no'] . "', '" . $row['descript'] . "','" . $row['qty'] . "', '" . $row['rate'] . "', '" . $row['subtot'] . "','" . $row['uniq'] . "')";

                $conn->exec($sql121);  
            }

            $sql = "delete from s_quomas_item_tmp where uniq='" . $_POST["uniq"] . "'";
            $result = $conn->query($sql);
            
             $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . $_POST["invno"] . "', '" . $_SESSION["CURRENT_USER"] . "', 'QUOTATION', 'SAVE', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);

            $sql1 = "update invpara set QUOTATION=QUOTATION+1";
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

        $sql = "select * from s_quomas where REFNO ='" . $_GET['invno'] . "'";
        $result = $conn->query($sql);
        if ($row = $result->fetch()) {
            if ($row['CANCELL'] != "0") {
                echo "Already Cancelled";
                exit();
            }
 

                $sql = "update s_quomas_item set CANCELL='1' where REFNO = '" . $row['REFNO'] . "'";
                $conn->exec($sql);
 

                $sql = "update s_quomas set CANCELL='1' where REFNO = '" . $row['REFNO'] . "'";
                $conn->exec($sql);
                
                 $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . $_GET["invno"] . "', '" . $_SESSION["CURRENT_USER"] . "', 'QUOTATION', 'CANCEL', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
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






?>