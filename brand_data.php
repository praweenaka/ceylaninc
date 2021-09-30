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
    
    $sql = "Select BRAND from invpara";
    $result = $conn->query($sql);
    $row = $result->fetch(); 
    $invno = $row['BRAND']; 
    $tmpinvno = "0" . $invno;
    $lenth = strlen($tmpinvno);
    $invno = substr($tmpinvno, $lenth - 2);
    
    
    
    $ResponseXML .= "<sales_table><![CDATA[<table class=\"table\" style=\"width:70%\">
    ";
 
    $sql = "Select * from brand_mas where cancel='0' order by id desc";
    foreach ($conn->query($sql) as $row) {

        $ResponseXML .= "<tr>                              
        <td class=\"col-sm-2\" onclick=\"stono('".$row['code']."', '".$row['barnd_name']."', '".$row['act']."');\">" . $row['code'] . "</td>
        <td class=\"col-sm-5\" onclick=\"stono('".$row['code']."', '".$row['barnd_name']."', '".$row['act']."');\">" . $row['barnd_name'] . "</td> 
        <td onclick=\"stono('".$row['code']."', '".$row['barnd_name']."', '".$row['act']."');\">" . $row['act'] . "</td> 
        </tr>"; 
    }



    $ResponseXML .= "   </table>]]></sales_table>";

    $ResponseXML .= "<invno><![CDATA[" . $invno . "]]></invno>";  

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}

 
if ($_POST["Command"] == "save_inv") {


    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();

        $sqlisalma_q = "select * from brand_mas where code='" . $_POST['code'] . "' and cancel='0'";
        $resultsalma_q = $conn->query($sqlisalma_q);
        if ($rowsalma_q = $resultsalma_q->fetch()) {
            if ($_POST["act"]=="true"){
				$act=1;
			} else {
				$act=0;
			}
            $sql = "update brand_mas set barnd_name='" . strtoupper($_POST['name']) . "', act= '" . $act . "'  where code='" . $_POST['code'] . "'";
            $result = $conn->query($sql);
            
            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . trim($_POST['code']) . "', '" . $_SESSION["CURRENT_USER"] . "', 'BRAND', 'Update', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);

            
            echo "Updated";
        }else{
            if ($_POST["act"]=="true"){
				$act=1;
			} else {
				$act=0;
			}
			
            $sql2 = "insert into brand_mas(code, barnd_name,act) values ('" . $_POST['code'] . "', '" . strtoupper($_POST['name']) . "', '" . $act . "')"; 
            $result2 = $conn->query($sql2);

            $sql = "SELECT BRAND FROM invpara";
            $resul = $conn->query($sql);
            $row = $resul->fetch();
            $no = $row['BRAND'];
            $no2 = $no + 1;
            $sql = "update invpara set BRAND = $no2 where BRAND = $no";
            $result = $conn->query($sql);

            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . trim($_POST['code']) . "', '" . $_SESSION["CURRENT_USER"] . "', 'BRAND', 'Save', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
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
        $sql = "SELECT * from brand_mas where code='" . $_POST['code'] . "'";

        $result = $conn->query($sql);
        if ($row = $result->fetch()) {

            $sql = "UPDATE brand_mas set cancel='1' where code='" . $_POST['code'] . "'";
            $result = $conn->query($sql);
            

            $sql2 = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . $_POST['code'] . "', '" . $_SESSION["CURRENT_USER"] . "', 'BRAND', 'Cancel', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $result2 = $conn->query($sql2);

            $conn->commit();
            echo "Cancel";
        } else {
            exit("Brand Not Found...!!!");
        }
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
} 
 

?>