<?php  
session_start();

////////////////////////////////////////////// Database Connector /////////////////////////////////////////////////////////////

require_once ("connection_sql.php"); 
    ////////////////////////////////////////////// Write XML ////////////////////////////////////////////////////////////////////
header('Content-Type: text/xml'); 

date_default_timezone_set('Asia/Colombo'); 

    /////////////////////////////////////// GetValue //////////////////////////////////////////////////////////////////////////



    ///////////////////////////////////// Registration /////////////////////////////////////////////////////////////////////////





if ($_POST["Command"] == "pass_quot") {
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

if($_GET["Command"]=="new_crn")
{
 
    
    $sql="Select CREDITNOTE from invpara "; 
    $result = $conn->query($sql); 
    $row = $result->fetch();
    $tmpinvno="000000".$row["CREDITNOTE"];
    $lenth=strlen($tmpinvno); 
    $crn=trim("CRN/ ").substr($tmpinvno, $lenth-6);
    
    $_SESSION["crn"]=$crn;
    
    $_SESSION["custno"]=""; 
    
    
    
    header('Content-Type: text/xml'); 
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
    
    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";
    $ResponseXML .= "<crn><![CDATA[".$crn."]]></crn>";
    $ResponseXML .= "<cur_date><![CDATA[".date("Y-m-d")."]]></cur_date>";
    $ResponseXML .= "</salesdetails>";  
    echo $ResponseXML;
    
}





if($_GET["Command"]=="delete_crn")
{
    
    
    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();
        
        $sql="select * from c_bal where REFNO= '".trim($_GET["crnno"])."' and BALANCE=AMOUNT "; 
        $result = $conn->query($sql);
        if ($row = $result->fetch()) {
            if (date("m", strtotime($row["SDATE"]))==date("m")){
                $sql1="delete from c_bal where REFNO='".$_GET["crnno"]."'";
                $result1 = $conn->query($sql1);   
                
                $sql1="update cred set CANCELL='1' where C_REFNO='".$_GET["crnno"]."'";
                $result1 = $conn->query($sql1);  
                
                $sql1="update s_salma set RET_AMO=RET_AMO-".$_GET["amount"]." where REF_NO='".$_GET["invno"]."'";
                $result1 = $conn->query($sql1);   
                
                // $sql1="delete from s_led  where REF_NO = '".$_GET["crnno"]."'";
                // $result1=mysql_query($sql1, $dbinv);
                // if ($result1!=1){ $sql_status=4; }  
                
                //$sql1="update vendor set CUR_BAL=CUR_BAL+ ".$_GET["amount"]."  where CODE='".$_GET["cus_code"]."'";
                //$result1=mysql_query($sql1, $dbinv);
                //if ($result1!=1){ $sql_status=5; }    
                
                //$sql1="update br_trn set credit=credit+ ".$_GET["amount"]."  where cus_code='".$_GET["cus_code"]."' and Rep='".$_GET["salesrep"]."'";
                //$result1=mysql_query($sql1, $dbinv);
                //if ($result1!=1){ $sql_status=6; }    
                
                $sql1="insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('".$_GET["crnno"]."', '".$_SESSION["CURRENT_USER"]."', 'Credit Note', 'Cancel', '".date("Y-m-d H:i:s")."', '".date("Y-m-d")."')";
                $result1 = $conn->query($sql1);  
                
                $conn->commit();
                echo "Canceled";
                
                 
            }   else {
                exit("Not In Current Month");
            }
            
        }else{
           exit("Already Settle..Please First Cancel Utilize..!!");
        }
        
        
        
        echo $ResponseXML;
        
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }
}



if($_GET["Command"]=="pass_crnno")
{
    $ResponseXML .= "";
    $ResponseXML .= "<salesdetails>";
    $sql="Select * from cred where C_REFNO='".$_GET['crnno']."'";
    $result = $conn->query($sql);
    if ($row = $result->fetch()) {
        $ResponseXML .= "<C_REFNO><![CDATA[".$row["C_REFNO"]."]]></C_REFNO>";
        $ResponseXML .= "<C_DATE><![CDATA[".$row["C_DATE"]."]]></C_DATE>";
        $ResponseXML .= "<C_CODE><![CDATA[".$row["C_CODE"]."]]></C_CODE>";
        
        $ResponseXML .= "<cancel><![CDATA[" . $row['CANCELL'] . "]]></cancel>";
        
        $sql1="Select * from vendor where CODE='".$row["C_CODE"]."'";
        $result1 = $conn->query($sql1);
        if ($row1 = $result1->fetch()) {
            $ResponseXML .= "<name><![CDATA[".$row1["NAME"]."]]></name>";
        }
        $ResponseXML .= "<C_INVNO><![CDATA[".$row["C_INVNO"]."]]></C_INVNO>";
        
        $sql1="Select * from s_salma where REF_NO='".$row["C_INVNO"]."'";
        $result1 = $conn->query($sql1);
        if ($row1 = $result1->fetch()) {
            $ResponseXML .= "<invdate><![CDATA[".$row1['SDATE']."]]></invdate>";
            $ResponseXML .= "<inv_amt><![CDATA[".$row1['GRAND_TOT']."]]></inv_amt>"; 
            $bal=$row1['GRAND_TOT']-$row1['TOTPAY'];
            $ResponseXML .= "<balance><![CDATA[".$bal."]]></balance>";
        } else {
            $ResponseXML .= "<invdate><![CDATA[]]></invdate>";
            $ResponseXML .= "<inv_amt><![CDATA[]]></inv_amt>"; 
            $ResponseXML .= "<balance><![CDATA[]]></balance>";
        }
        $ResponseXML .= "<C_REMARK><![CDATA[".$row["C_REMARK"]."]]></C_REMARK>";
        $ResponseXML .= "<C_SALEX><![CDATA[".$row["C_SALEX"]."]]></C_SALEX>"; 
        $ResponseXML .= "<C_PAYMENT><![CDATA[".$row["C_PAYMENT"]."]]></C_PAYMENT>";
    }
    
    // $sql="Select * from c_bal where REFNO='".$_GET['crnno']."'";
    // $result =$db->RunQuery($sql);   
    // if ($row = mysql_fetch_array($result)){
    //     $ResponseXML .= "<DEP><![CDATA[".$row["DEP"]."]]></DEP>"; 
    // } else {
    //     $ResponseXML .= "<DEP><![CDATA[]]></DEP>"; 
    // }
    
    
    
    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}

if($_GET["Command"]=="save_crn")
{
  try {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->beginTransaction();
    
    $sqltmp="select * from invpara";
    $resulttmp = $conn->query($sqltmp); 
    $rowtmp = $resulttmp->fetch();  
    
//      if ($rowtmp["form_loc"]=="1"){
//              exit("no");
//          }   
    
    
    $sql="Select C_REFNO from cred where C_REFNO='".$_GET['crnno']."'";
    $result = $conn->query($sql);
    if ($row = $result->fetch()) { 
                //$ResponseXML .= "<msg_exist><![CDATA[Credit Note NO Already Exists]]></msg_exist>";
        exit("Credit Note NO Already Exists");
    }
    
    $mcash=0;
//          if ($_GET["chkcash_disc"]=="true"){
//              $mcash=1;
//          }
    
    $remarks=str_replace("~", "&", $_GET["remarks"]);
    $remarks=str_replace("&nbsp;", " ", $remarks);
    
    $sql_invpara="SELECT * from invpara";
    $result_invpara = $conn->query($sql_invpara); 
    $row_invpara = $result_invpara->fetch(); 
    
    $mvatrate=$row_invpara["vatrate"];
    
//          $sql_crnfrm="select * from s_crnfrm where Refno='".$_GET["txt_frmno"]."'";
//          $result_crnfrm=mysql_query($sql_crnfrm, $dbinv);
//          $row_crnfrm = mysql_fetch_array($result_crnfrm);
    
    $sql="Insert into c_bal (REFNO, SDATE, trn_type, CUSCODE, AMOUNT, BALANCE, brand, DEP, SAL_EX, vatrate, RNO, flag1, DEV, CANCELL, old, active, totpay ) values 
    ('".$_GET["crnno"]."', '".$_GET["crndate"]."', 'CNT', '".$_GET["cus_code"]."', '".$_GET["amount"]."', '".$_GET["amount"]."', '', '".$_GET["department"]."', '".$_GET["salesrep"]."', '".$mvatrate."', '', '".$mcash."', '', '0', '0', 1, 0 ) ";
    $result = $conn->query($sql);
    
    $sql="insert into s_sttr_all(ST_REFNO, ST_DATE, ST_INVONO, ST_PAID, balance, netamount, cus_code, cusname, sal_ex, DEV, del_days, deliin_days, deliin_amo, deliin_lock, department, form_type, trn_type) values
    ('".$_GET["crnno"]."', '".$_GET["crndate"]."', '".$_GET["crnno"]."', ".$_GET["amount"].", ".$_GET["amount"].", ".(-1*$_GET["amount"]).", '".$_GET["cus_code"]."', '".$_GET["cus_name"]."', '".$_GET["salesrep"]."',  '', 0, 0, 0, '0', '".$_GET["department"]."', 'CNT', 'OVER')";
    $result = $conn->query($sql);
    
    $sql="Insert into cred (C_REFNO, C_DATE, C_INVNO, C_CODE, C_PAYMENT, C_REMARK, C_SALEX, Brand, DEV, CANCELL, company) values 
    ('".$_GET["crnno"]."', '".$_GET["crndate"]."', '".$_GET["invno"]."', '".$_GET["cus_code"]."', '".$_GET["amount"]."', '".$remarks."', '".$_GET["salesrep"]."', '', '', '0', '".$_SESSION['COMCODE']."') ";
    
    $result = $conn->query($sql);
    
    $sql="update s_salma set RET_AMO=RET_AMO+".$_GET["amount"]." where REF_NO='".$_GET["invno"]."'";
    $result = $conn->query($sql);
    
    
//          $sql="Insert into s_led (REF_NO, SDATE, C_CODE, AMOUNT, FLAG, DEPARTMENT, DEV) values 
//          ('".$_GET["crnno"]."', '".$_GET["crndate"]."', '".$_GET["cus_code"]."', '".$_GET["amount"]."', 'CRN', '".$_GET["department"]."', '') ";
//          $result=mysql_query($sql, $dbinv);
//          if ($result!=1){ $sql_status=1; }   
    
    $sql="update vendor set CUR_BAL = CUR_BAL - ".$_GET["amount"]." where CODE='".$_GET["cus_code"]."'";
    $result = $conn->query($sql);
    
    
//          $sql="update br_trn set credit = credit - ".$_GET["amount"]." where cus_code='".$_GET["cus_code"]."' and Rep='".$_GET["salesrep"]."'";
//          $result=mysql_query($sql, $dbinv);
//          if ($result!=1){ $sql_status=1; }   
    
    

            //==============update CRN Form ============================================
//          if (trim($_GET["txt_frmno"]) != "") {
//              $sql="Update s_crnfrm set Credit_note = '" . trim($_GET["crnno"]) . "' where Refno = '" . trim($_GET["txt_frmno"]) . "'";
//              $result=mysql_query($sql, $dbinv);
//              if ($result!=3){ $sql_status=3; }   
    
    
//              //echo $sql;
//              }
    
    
    $sql="update invpara set CREDITNOTE = CREDITNOTE + 1 ";
    $result = $conn->query($sql);
    
    
    $sql="insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('". trim($_GET["crnno"])."', '".$_SESSION["CURRENT_USER"]."', 'Credit Note', 'Save', '".date("Y-m-d H:i:s")."', '".date("Y-m-d")."')";
    $result = $conn->query($sql);
    
    
    $conn->commit();
    echo "Saved";
    
} catch (Exception $e) {
    $conn->rollBack();
    echo $e;
}

}



 if ($_POST["Command"] == "pass_quot1") {
 

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_POST["custno"];

    $sql = "Select * from s_salma where   REF_NO ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}


?>