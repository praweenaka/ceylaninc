<?php session_start();

////////////////////////////////////////////// Database Connector /////////////////////////////////////////////////////////////
// require_once("config.inc.php");
// require_once("DBConnector.php");
// $db = new DBConnector();
include_once './connection_sql.php';

date_default_timezone_set('Asia/Colombo'); 
    ////////////////////////////////////////////// Write XML ////////////////////////////////////////////////////////////////////
header('Content-Type: text/xml'); 

// $Gridinv = array(array());
// $gridchk = array(array());



if ($_POST["Command"] == "pass_quot") {
    $_SESSION["uti_cus_code"] = $_POST['custno'];

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




 




if ($_GET["Command"]=="ret_chq_settle"){
    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
    
    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";
    
    $ResponseXML .= "<uti_table><![CDATA[<table class=\"table table-bordered \">
    <tr class=\"info\"><td >Return Chq.No</font></td>
    <td >Return Date</font></td>
    <td >Cheque Amount</font></td>
    <td >Paid</font></td>
    <td >Balance</font></td>
    <td >Settle Amount</font></td>
    <td >Remain</font></td>
    
    </tr>";
    
    
    
    
    $sql1="delete from tmputi_chqdet where c_code='".$_GET["Txtcusco"]."'";
    $result1 = $conn->query($sql1);
    
    $sql="select * from s_cheq where CR_C_CODE='".$_GET["Txtcusco"]." 'and PAID<CR_CHEVAL and CR_FLAG='0' ORDER BY CR_DATE";
    
    $i=1;
    foreach ($conn->query($sql) as $row) { 
       
        
        $retinvno="retinvno".$i;
        $retinvdate="retinvdate".$i;
        $retsettle="retsettle".$i;
        
        $j=$i+1;
        $retsettle_next="retsettle".$j;
        
        $retremain="retremain".$i;
        $retbal="retbal".$i;
        
        $sql1="insert into tmputi_chqdet (ret_chq_no, ret_date, chq_amt, paid, balance) values ('".$row["CR_REFNO"]."', '".$row["CR_DATE"]."', ".$row["CR_CHEVAL"].", ".$row["PAID"].", ".($row["CR_CHEVAL"]-$row["PAID"]).")";
        $result1 = $conn->query($sql1);
        /*$GLOBALS[$Gridinv[$r][1]]=$row["REF_NO"];
        $GLOBALS[$Gridinv[$r][2]]=$row["SDATE"];
        $GLOBALS[$Gridinv[$r][3]]=$row["GRAND_TOT"];
        $GLOBALS[$Gridinv[$r][4]]=$row["TOTPAY"];
        $GLOBALS[$Gridinv[$r][5]]=$row["GRAND_TOT"]-$row["TOTPAY"];*/
        
        //$r=$r+1;
        
        $ResponseXML .= "<tr><td><div id=\"".$retinvno."\">".$row["CR_REFNO"]."</div></td>
        <td><div id=\"".$retinvdate."\">".$row["CR_DATE"]."</div></td>
        <td>".$row["CR_CHEVAL"]."</td>
        <td>".$row["PAID"]."</td>
        <td><input type=\"text\"  class=\"txtbox\" name=".$retbal." id=".$retbal." value=".($row["CR_CHEVAL"]-$row["PAID"])." size=\"10\" disabled=\"disabled\"/></td>
        <td><input type=\"text\"  class=\"txtbox\" name=".$retsettle." id=".$retsettle."  onblur=\"keysetvalue_blur_ret('$retsettle','$retremain', '$retsettle_next', '$retbal');\" size=\"10\" /></td>
        <td><input type=\"text\"  class=\"txtbox\" name=".$retremain." id=".$retremain." size=\"10\" class=\"form-control input-sm\" disabled=\"disabled\"/></td>
        </tr>"; 
        
        $i=$i+1;                        
        
    }   
    
    
    
    
    
    $ResponseXML .= "   </table>]]></uti_table>";
    $ResponseXML .= "<mcount_chq><![CDATA[".$i."]]></mcount_chq>";
    $ResponseXML .= " </salesdetails>";
    echo $ResponseXML;                              
}


if ($_GET["Command"]=="settle_inv"){ 
  header('Content-Type: text/xml');
  echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
  
  $ResponseXML = "";
  $ResponseXML .= "<salesdetails>";
  
  $ResponseXML .= "<sales_table><![CDATA[<table class=\"table table-bordered \">
  <tr class=\"info\"><td >Invoice No</font></td>
  <td >Invoice Date</font></td>
  <td >Invoice Amount</font></td>
  <td >Paid</font></td>
  <td >Balance</font></td>
  <td >Settle Amount</font></td>
  <td >Remain</font></td>
  
  </tr>";
  
  
  
  $sql1="delete from tmputi_invdet where c_code='".$_GET["Txtcusco"]."'";
  $result1 = $conn->query($sql1);
  
  $sqel="select * from s_salma where C_CODE='".$_GET["Txtcusco"]."' and TOTPAY<GRAND_TOT and (GRAND_TOT-TOTPAY)>0 and CANCELL=0  ORDER BY SDATE";
  
  $i=1;
  foreach ($conn->query($sqel) as $row) { 
   
    $invno="invno".$i;
    $invdate="invdate".$i;
    $settle="settle".$i;
    
    $j=$i+1;
    $settle_next="settle".$j;
    
    $remain="remain".$i;
    $bal="bal".$i;
    
    $sql1="insert into tmputi_invdet (inv_no, inv_date, inv_amt, paid, balance) values ('".$row["REF_NO"]."', '".$row["SDATE"]."', ".$row["GRAND_TOT"].", ".$row["TOTPAY"].", ".($row["GRAND_TOT"]-$row["TOTPAY"]).")";
    $result1 = $conn->query($sql1);
    
    $ResponseXML .= "<tr> 
    <td><div id=\"".$invno."\">".$row["REF_NO"]."</div>
    <td><div id=\"".$invdate."\">".$row["SDATE"]."</div></td>
    <td align=right>".number_format($row["GRAND_TOT"], 2, ".", ",")."</td>
    <td align=right>".number_format($row["TOTPAY"], 2, ".", ",")."</td>
    <td><input type=\"text\" style=\"text-align:right\"  class=\"form-control input-sm\"  name=".$bal." disabled id=".$bal." value=".number_format(($row["GRAND_TOT"]-$row["TOTPAY"]), 2, ".", "")."  /></td>
    <td><input type=\"number\" class=\"form-control input-sm\"  name=".$settle." id=".$settle."  onblur=\"keysetvalue_blur('$settle','$remain', '$settle_next', '$bal');\" onkeypress=\"keyset('$settle_next', event);\"   s /></td>
    <td><input type=\"text\" disabled  name=".$remain." id=".$remain." class=\"form-control input-sm\" /></td>
    </tr>";
    
    
    
    $i=$i+1;                        
    
}   

$invno="invno".$i;
$invdate="invdate".$i;
$settle="settle".$i;

$j=$i+1;
$settle_next="settle".$j;

$remain="remain".$i;
$bal="bal".$i;

$ResponseXML .= "<tr class='hidden'><td><div id=\"".$invno."\"></div></td>
<td><div id=\"".$invdate."\"></div></td>
<td></td>
<td></td>
<td><input type=\"text\" style=\"text-align:right\"  class=\"form-control input-sm\" disabled class=\"txtbox\" name=".$bal." id=".$bal." value=\"\" size=\"10\"/></td>
<td><input type=\"number\" class=\"form-control input-sm\" disabled class=\"txtbox\" name=".$settle." id=".$settle."  onblur=\"keysetvalue_blur('$settle','$remain', '$settle_next', '$bal');\" size=\"10\"/></td>
<td><input type=\"text\" disabled class=\"txtbox\" name=".$remain." id=".$remain." size=\"10\"/></td>
</tr>"; 


$ResponseXML .= "</table>]]></sales_table>";   
$ResponseXML .= "<mcount><![CDATA[".$i."]]></mcount>";
$ResponseXML .= "<cdata><![CDATA[".$_GET["cdata"]."]]></cdata>";
$ResponseXML .= " </salesdetails>";
echo $ResponseXML;                              
}






if($_GET["Command"]=="new_rec")
{
    
    
    $sql="Select UTILIZE from invpara";
     $result = $conn->query($sql); 
    $row = $result->fetch();  
    
    
    $tmprecno="000000".$row["UTILIZE"];
    $lenth=strlen($tmprecno);
    $recno=trim("CUTI/ ").substr($tmprecno, $lenth-7);
    $_SESSION["recno"]=$recno;
    
    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";
    $ResponseXML .= "<recno><![CDATA[".$recno."]]></recno>";
    $ResponseXML .= "<mdate><![CDATA[".date("Y-m-d")."]]></mdate>";
    $ResponseXML .= "</salesdetails>";
    
    echo $ResponseXML;  
    
}

if ($_GET["Command"]=="pass_allno"){
 

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_POST["custno"];

    $sql = "select REFNO , BALANCE  from c_bal where REFNO='".$_GET["grnno"]."'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}


if($_POST["Command"]=="save_crec")
{

      try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();
    
    
     
    
    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";
     
    
    $sql="Select UTILIZE from invpara";
     $result = $conn->query($sql); 
    $row = $result->fetch(); 
     
    $tmprecno="000000".$row["UTILIZE"];
    $lenth=strlen($tmprecno);
    $recno=trim("CUTI/ ").substr($tmprecno, $lenth-7);
    $_SESSION["recno"]=$recno;
 
    $sql_utmas="SELECT * FROM s_utmas WHERE C_REFNO ='".trim($_POST["txtrefno"])."'";
    $result_utmas = $conn->query($sql_utmas);
        if ($row_utmas = $result_utmas->fetch()) {
              
        exit("Ref. No Already Exists");
    }
    
    
    $sql="insert into s_utmas(C_REFNO, C_DATE, C_CODE, C_CRNNo, C_Amount, C_cash, c_chno, c_chdate, ch_val, ch_bank, CANCEL) values ('".trim($recno)."', '".$_POST["dtdate"]."', '".$_POST["Txtcusco"]."', '".$_POST["txtcrnno"]."', '".$_POST["lblPaid"]."', '".$_POST["txtcash"]."', '".$_POST["txtchno"]."', '".$_POST["DTPicker1"]."', '".$_POST["txtamount"]."', '".$_POST["txtchbank"]."', '0')";
    $result = $conn->query($sql);
 
    
    $r=1;
    while ($_POST["mcount"]>$r){
        $invno="invno".$r;
        $invdate="invdate".$r;
        $settle="settle".$r;
        $remain="remain".$r;
        $bal="bal".$r;
        
        if (($_POST[$settle]>0) and ($_POST[$invno]!="") and ($_POST[$invdate]!="") and ($_POST[$bal]>0)){
            $sql_cruti="insert into s_ut(C_REFNO, C_DATE, C_CODE, C_INVNO, C_PAYMENT, CRE_NO_NO, TYPE) values ('".trim($recno)."', '".$_POST["dtdate"]."', '".$_POST["Txtcusco"]."', '".$_POST[$invno]."', '".$_POST[$settle]."', '".trim($_POST["txtcrnno"])."', 'INV' )";
            $result_cruti = $conn->query($sql_cruti);
            
            $sql_cruti="UPDATE s_salma SET TOTPAY = TOTPAY + ".$_POST[$settle]." WHERE ((REF_NO='".trim($_POST[$invno])."'))";
            $result_cruti = $conn->query($sql_cruti);
            
            $diff = abs(strtotime($_POST["dtdate"]) - strtotime($_POST[$invdate]));
            $days = floor($diff / (60*60*24));
            
            $sql_cruti="insert into s_sttr(ST_REFNO, ST_DATE, ST_INVONO, ST_PAID, ST_FLAG, ST_CHNO, st_days, ap_days, DEV, department) values ('".trim($recno)."', '".$_POST["dtdate"]."', '".$_POST[$invno]."', '".$_POST[$settle]."', 'UT', '".trim($_POST["txtcrnno"])."', '".$days."', '".$days."', '".$_SESSION['dev']."', 'O')";
            $result_cruti = $conn->query($sql_cruti);
            
            $sql_cruti="insert into s_sttr_all(ST_REFNO, ST_DATE, ST_INVONO, ST_PAID, netamount, ST_CHNO, ST_FLAG, st_days, ap_days, cus_code, cusname, DEV, del_days, deliin_days, deliin_amo, deliin_lock, department, form_type, trn_type) values
            ('".trim($recno)."', '".$_POST["dtdate"]."', '".$_POST[$invno]."', ".$_POST[$settle].", ".(-1*$_POST[$settle]).", '".trim($_POST["txtcrnno"])."', '".$ST_flag."', '".$days."', '".$days."', '".$_POST["Txtcusco"]."', '".$_POST["txt_cusname"]."', '".$_SESSION['dev']."', 0, 0, 0, '0', 'O', 'UT', 'SET')";
             $result_cruti = $conn->query($sql_cruti);
             
             
             
        }
        
        $r=$r+1;
    }
     
    $sql_inv="UPDATE c_bal SET BALANCE = BALANCE - ".$_POST["lblPaid"]." WHERE ((REFNO='".trim($_POST["txtcrnno"])."'))";
    $result_inv = $conn->query($sql_inv);
    
    $sql1="insert into s_sttr_all(ST_REFNO, ST_DATE, ST_INVONO, ST_PAID, balance, netamount, cus_code, cusname, DEV, del_days, deliin_days, deliin_amo, deliin_lock, department, form_type, trn_type) values
    ('".trim($_POST["txtcrnno"])."', '".$_POST["dtdate"]."', '".trim($_POST["txtcrnno"])."', ".$_POST["lblPaid"].", ".(-1*$_POST["lblPaid"]).", ".$_POST["lblPaid"].", '".$_POST["Txtcusco"]."', '".$_POST["txt_cusname"]."',  '".$_SESSION['dev']."', 0, 0, 0, '0', 'O', 'UT', 'SETOVER')";
    $result_inv = $conn->query($sql1);
    
    $sql_inv="UPDATE invpara SET UTILIZE=UTILIZE+1";
    $result_inv = $conn->query($sql_inv);
    
    $sql2="insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('".trim($recno)."', '".$_SESSION["CURRENT_USER"]."', 'Utilization', 'Save', '".date("Y-m-d H:i:s")."', '".date("Y-m-d")."')";
    $result_inv = $conn->query($sql2);
    
     $conn->commit();
            echo "Saved";
        
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }

    
    
    
}



if ($_GET["Command"]=="pass_recno"){
   header('Content-Type: text/xml'); 
   echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"; 

   $ResponseXML = "";
   $ResponseXML .= "<salesdetails>";
   $sql="select * from s_utmas where C_REFNO='".$_GET["recno"]."'";
   $result = $conn->query($sql);
   if ($row = $result->fetch()) {
    $ResponseXML .= "<C_REFNO><![CDATA[".$row["C_REFNO"]."]]></C_REFNO>";
    $ResponseXML .= "<C_DATE><![CDATA[".$row["C_DATE"]."]]></C_DATE>";
    $ResponseXML .= "<C_CODE><![CDATA[".$row["C_CODE"]."]]></C_CODE>";
    $ResponseXML .= "<ch_bank><![CDATA[".$row["ch_bank"]."]]></ch_bank>";
    $ResponseXML .= "<c_chno><![CDATA[".$row["c_chno"]."]]></c_chno>";
    $ResponseXML .= "<c_chdate><![CDATA[".$row["c_chdate"]."]]></c_chdate>";
    $ResponseXML .= "<ch_val><![CDATA[".$row["ch_val"]."]]></ch_val>";
    $ResponseXML .= "<cancel><![CDATA[".$row["CANCEL"]."]]></cancel>";
    
    $sql1="select * from vendor where CODE='".$row["C_CODE"]."'";
    $result1 = $conn->query($sql1);
    if ($row1 = $result1->fetch()) {
        $ResponseXML .= "<cusname><![CDATA[".$row1["NAME"]."]]></cusname>";
        
    }
    
    
    $ResponseXML .= "<C_CRNNo><![CDATA[".$row["C_CRNNo"]."]]></C_CRNNo>"; 
    
    
    $sql_bal="select REFNO , BALANCE  from c_bal where REFNO='".$row["C_CRNNo"]."'";
    $result_bal = $conn->query($sql_bal);
    if ($row_bal = $result_bal->fetch()) {
       
        
        $ResponseXML .= "<BALANCE><![CDATA[".$row_bal['BALANCE']."]]></BALANCE>";
        
    } else {
        $ResponseXML .= "<BALANCE><![CDATA[]]></BALANCE>";
    }
    
    $sql1="select * from s_ut where C_REFNO='".$_GET["recno"]."'";
    $result1 = $conn->query($sql1);
    if ($row1 = $result1->fetch()) { 
        $type=$row1["TYPE"];
        if ($row1["TYPE"]=="CAS"){
            $cash=$row1["C_PAYMENT"];
        } else {
            $cash=0;
        }   
    }
    
     $ResponseXML .= "<ctype><![CDATA[".$type."]]></ctype>";
    $ResponseXML .= "<cash><![CDATA[".$cash."]]></cash>";
    
    $ResponseXML .= "<uti_table_chq><![CDATA[<table class=\"table table-bordered \"><tr class=\"info\">
     
    
    </tr>";
    
    
    $sql1="select * from s_ut where C_REFNO='".$_GET["recno"]."' and TYPE='CHQ'";
    foreach ($conn->query($sql1) as $row1) {
        $sql_inv="select * from s_salma where REF_NO='".$row1["C_INVNO"]."'";
        $result_inv = $conn->query($sql_inv); 
        $row_inv = $result_inv->fetch();
        
        $ResponseXML .= "<tr>
        <td>".$row1["C_INVNO"]."</td>
        <td>".$row_inv["SDATE"]."</td>
        <td>".$row_inv["GRAND_TOT"]."</td>
        <td>".($row_inv["TOTPAY"]-$row1["C_PAYMENT"])."</td>
        <td>".($row_inv["GRAND_TOT"]-($row_inv["TOTPAY"]-$row1["C_PAYMENT"]))."</td>
        <td>".$row1["C_PAYMENT"]."</td>
        <td>".(($row_inv["GRAND_TOT"]-($row_inv["TOTPAY"]-$row1["C_PAYMENT"]))-$row1["C_PAYMENT"])."</td>
        </tr>";
        
        
        
    }
    
    $ResponseXML .= "   </table>]]></uti_table_chq>";
    
    
    $ResponseXML .= "<uti_table_inv><![CDATA[<table class=\"table table-bordered \"> <tr class=\"info\">
    <td>Invoice No</td>
    <td>Invoice Date</td>
    <td>Invoice Amount</td>
    <td>Paid</td>
    <td>Balance</td>
    <td>Settled Amount</td>
    <td>Remain</td>
    
    </tr>";
    
    $C_PAYMENT=0;
    $sql1="select * from s_ut where C_REFNO='".$_GET["recno"]."' and TYPE='INV'";
    foreach ($conn->query($sql1) as $row1) {
        $sql_inv="select * from s_salma where REF_NO='".$row1["C_INVNO"]."'";
        $result_inv = $conn->query($sql_inv); 
        $row_inv = $result_inv->fetch();
        
        
        
        $ResponseXML .= "<tr>
        <td>".$row1["C_INVNO"]."</td>
        <td>".$row_inv["SDATE"]."</td>
        <td>".$row_inv["GRAND_TOT"]."</td>
        <td>".($row_inv["TOTPAY"]-$row1["C_PAYMENT"])."</td>
        <td>".($row_inv["GRAND_TOT"]-($row_inv["TOTPAY"]-$row1["C_PAYMENT"]))."</td>
        <td>".$row1["C_PAYMENT"]."</td>
        <td>".(($row_inv["GRAND_TOT"]-($row_inv["TOTPAY"]-$row1["C_PAYMENT"]))-$row1["C_PAYMENT"])."</td>
        </tr>";
        
        $C_PAYMENT = $C_PAYMENT + $row1["C_PAYMENT"];
        
    }
    
    $ResponseXML .= "   </table>]]></uti_table_inv>";
    
    $ResponseXML .= "<total><![CDATA[".$C_PAYMENT."]]></total>";
    
    
}
$ResponseXML .= "</salesdetails>";
echo $ResponseXML;
}


if ($_GET["Command"]=="delete_rec"){
    
    try {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->beginTransaction();
        
        $sqln = "SELECT * FROM s_ut where C_REFNO='".$_GET["txtrefno"]."'"; 
        $resultn = $conn->query($sqln);
        if ($rown = $resultn->fetch()) {
            if ($rown['CANCEL'] != "0") { 
                exit("Already Cancelled");
            }
        }else{
             exit("Result Not Found...!!");
        }
        $sql1="select * from s_ut where C_REFNO='".$_GET["txtrefno"]."' and TYPE='INV'";
        foreach ($conn->query($sql1) as $row1) {
            
            $sql="UPDATE s_salma SET TOTPAY=TOTPAY-" . $row1["C_PAYMENT"] . "  WHERE REF_NO='" . trim($row1["C_INVNO"]) . "'";
            $result = $conn->query($sql);  
            
            $sql="UPDATE c_bal SET BALANCE=BALANCE+" . $row1["C_PAYMENT"] . "  WHERE REFNO='" . trim($_GET["txtcrnno"]) . "'";
            $result = $conn->query($sql);  
            
        }   
        
        
        
        if ($_GET["txtcash"]!=""){
            $sql="UPDATE c_bal SET BALANCE=BALANCE+" . $_GET["txtcash"] . "  WHERE REFNO='" .trim($_GET["txtcrnno"]) . "'";
            $result = $conn->query($sql);  
             
        }   
        
        $sql="UPDATE s_utmas SET CANCEL=1 WHERE C_REFNO='" . trim($_GET["txtrefno"]) . "'";
        $result = $conn->query($sql);  
        
        $sql="DELETE from s_ut WHERE C_REFNO='" . trim($_GET["txtrefno"]) . "'";
        $result = $conn->query($sql);  
        
        $sql="DELETE from s_sttr WHERE ST_REFNO='" . trim($_GET["txtrefno"]) . "'";
        $result = $conn->query($sql);  
        
        $sql="DELETE from ch_sttr WHERE ST_REFNO='" . trim($_GET["txtrefno"]) . "'";
        $result = $conn->query($sql);  
        
        
        $sql="insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('".trim($_GET["txtrefno"])."', '".$_SESSION["CURRENT_USER"]."', 'Utilization', 'Cancel', '".date("Y-m-d H:i:s")."', '".date("Y-m-d")."')";
        $result = $conn->query($sql);  
        
        $conn->commit();
        echo "Canceled";
    
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }

}

?>