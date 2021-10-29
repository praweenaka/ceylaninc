<?php

session_start();


require_once ("connection_sql.php");

header('Content-Type: text/xml');

date_default_timezone_set('Asia/Colombo');

if ($_POST["Command"] == "getdt") {
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<new>";

    $sql = "SELECT EMPLOYEE FROM invpara";
    $result = $conn->query($sql);

    $row = $result->fetch();
    $no = $row['EMPLOYEE'];
    $uniq = uniqid();
    $ResponseXML .= "<id><![CDATA[$no]]></id>";
    $ResponseXML .= "<uniq><![CDATA[$uniq]]></uniq>";

    $ResponseXML .= "</new>";

    echo $ResponseXML;
}


if ($_POST["Command"] == "save_inv") {


    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();

        $sqlisalma_q = "select * from employee where code='" . $_POST['code'] . "'";
        $resultsalma_q = $conn->query($sqlisalma_q);
        if ($rowsalma_q = $resultsalma_q->fetch()) {
            
            $sql = "update employee set name= '" . strtoupper($_POST['des']) . "',type= '" . $_POST['type'] . "',nic= '" . $_POST['nic'] . "',land= '" . $_POST['land'] . "',mobile= '" . $_POST['mobile'] . "',address= '" . $_POST['address'] . "'   where code='" . $_POST['code'] . "'";
            $result = $conn->query($sql);
            
            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . trim($_POST['code']) . "', '" . $_SESSION["CURRENT_USER"] . "', 'EMPLOYEE', 'Update', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);

            
            echo "Updated";
        }else{
            $sql2 = "insert into employee(code,name,nic,land,mobile,address,type) values ('" . $_POST['code'] . "' , '" . strtoupper($_POST['des']) . "', '" . $_POST['nic'] . "', '" . $_POST['land'] . "', '" . $_POST['mobile'] . "', '" . $_POST['address'] . "', '" . $_POST['type'] . "')"; 
            $result2 = $conn->query($sql2);

            $sql = "SELECT EMPLOYEE FROM invpara";
            $resul = $conn->query($sql);
            $row = $resul->fetch();
            $no = $row['EMPLOYEE'];
            $no2 = $no + 1;
            $sql = "update invpara set EMPLOYEE = $no2 where EMPLOYEE = $no";
            $result = $conn->query($sql);

            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . trim($_POST['code']) . "', '" . $_SESSION["CURRENT_USER"] . "', 'EMPLOYEE', 'Save', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);

            
            echo "Saved";
        }
        $conn->commit();
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
    
}

if ($_POST["Command"] == "pass_quot") {
    $_SESSION["custno"] = $_GET['custno'];

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_POST["custno"];

    $sql = "Select * from employee where   code ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}

if ($_POST["Command"] == "cancel_inv") {


    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();
        
        $sql = "SELECT * from employee where  code='".$_POST['refno']."' and cancel='1'";
        $result = $conn->query($sql);
        if ($row = $result->fetch()) {
            exit("Already Cancel Employee...!!!");
        }
        
        
        
        $sql = "SELECT * from employee where  code='".$_POST['refno']."'  ";
        $result = $conn->query($sql);
        if ($row = $result->fetch()) {
            $sql = "update employee set cancel = '1' where  code='".$_POST['refno']."' ";
            $result = $conn->query($sql);
             
            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('" . trim($_POST['refno']) . "', '" . $_SESSION["CURRENT_USER"] . "', 'EMPLOYEE', 'CANCEL', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);
         
            
        }

        $conn->commit();
        echo "Cancel";



    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
}
?>