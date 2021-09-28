<?php

session_start();

////////////////////////////////////////////// Database Connector /////////////////////////////////////////////////////////////
require_once ("connection_sql.php");

////////////////////////////////////////////// Write XML ////////////////////////////////////////////////////////////////////
header('Content-Type: text/xml');

date_default_timezone_set('Asia/Colombo');

/////////////////////////////////////// GetValue //////////////////////////////////////////////////////////////////////////
///////////////////////////////////// Registration /////////////////////////////////////////////////////////////////////////

if ($_POST["Command"] == "new_inv") {
    
    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";
    
    // $sql = "Select bank from invpara_new";
    // $result = $conn->query($sql);
    // $row = $result->fetch(); 
    // $invno = $row['bank']; 
    // $tmpinvno = "0" . $invno;
    // $lenth = strlen($tmpinvno);
    // $invno = substr($tmpinvno, $lenth - 2);
    
    
    
    $ResponseXML .= "<sales_table><![CDATA[<table class=\"table\" style=\"width:80%\">
    ";
 
    $sql = "Select * from bankmas where cancel='0'  order by bcode";
    foreach ($conn->query($sql) as $row) {

        $ResponseXML .= "<tr>                              
        <td class=\"col-sm-2\" onclick=\"stono('".$row['bcode']."', '".$row['bbcode']."', '".$row['bname']."', '".$row['shname']."', '".$row['act']."');\">" . $row['bcode'] . "</td>
        <td class=\"col-sm-2\" onclick=\"stono('".$row['bcode']."', '".$row['bbcode']."', '".$row['bname']."', '".$row['shname']."', '".$row['act']."');\">" . $row['bbcode'] . "</td> 
        <td class=\"col-sm-5\" onclick=\"stono('".$row['bcode']."', '".$row['bbcode']."', '".$row['bname']."', '".$row['shname']."', '".$row['act']."');\">" . $row['bname'] . "</td> 
        <td class=\"col-sm-2\" onclick=\"stono('".$row['bcode']."', '".$row['bbcode']."', '".$row['bname']."', '".$row['shname']."', '".$row['act']."');\">" . $row['shname'] . "</td> 
        <td class=\"col-sm-1\" onclick=\"stono('".$row['bcode']."', '".$row['bbcode']."', '".$row['bname']."', '".$row['shname']."', '".$row['act']."');\">" . $row['act'] . "</td> 
        </tr>"; 
    }



    $ResponseXML .= "   </table>]]></sales_table>";

    // $ResponseXML .= "<invno><![CDATA[" . $invno . "]]></invno>";  

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}

 
if ($_POST["Command"] == "save_inv") {


    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();

        $sqlisalma_q = "select * from bankmas where bcode='" . $_POST['code'] . "' and cancel='0'";
        $resultsalma_q = $conn->query($sqlisalma_q);
        if ($rowsalma_q = $resultsalma_q->fetch()) {
            if ($_POST["act"]=="true"){
				$act=1;
			} else {
				$act=0;
			}
            $sql = "update bankmas set bbcode='" . $_POST['code1'] . "', bname='" . $_POST['name'] . "', shname='" . $_POST['name1'] . "', act= '" . $act . "'  where bcode='" . $_POST['code'] . "'";
            $result = $conn->query($sql);
            
            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . trim($_POST['code']) . "', '" . $_SESSION["CURRENT_USER"] . "', 'BANK', 'Update', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);

            
            echo "Updated";
        }else{
            if ($_POST["act"]=="true"){
				$act=1;
			} else {
				$act=0;
			}
			
            $sql2 = "insert into bankmas(bcode,bbcode, bname,shname,act) values ('" . $_POST['code'] . "', '" . $_POST['name'] . "','" . $_POST['code1'] . "', '" . $_POST['name1'] . "', '" . $act . "')"; 
            $result2 = $conn->query($sql2);

            // $sql = "SELECT bank FROM invpara_new";
            // $resul = $conn->query($sql);
            // $row = $resul->fetch();
            // $no = $row['bank'];
            // $no2 = $no + 1;
            // $sql = "update invpara_new set bank = $no2 where bank = $no";
            // $result = $conn->query($sql);

            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . trim($_POST['code']) . "', '" . $_SESSION["CURRENT_USER"] . "', 'BANK', 'Save', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);
            
            
            echo "Saved";
        }
        $conn->commit();
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
    
}
 
if ($_POST["Command"] == "cancel_inv") {
    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();
        $sql = "SELECT * from bankmas where bcode='" . $_POST['code'] . "'";

        $result = $conn->query($sql);
        if ($row = $result->fetch()) {

            $sql = "UPDATE bankmas set cancel='1' where bcode='" . $_POST['code'] . "'";
            $result = $conn->query($sql);
            

            $sql2 = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . $_POST['code'] . "', '" . $_SESSION["CURRENT_USER"] . "', 'BANK', 'Cancel', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $result2 = $conn->query($sql2);

            $conn->commit();
            echo "Cancel";
        } else {
            exit("BANK Not Found...!!!");
        }
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
} 
 

?>