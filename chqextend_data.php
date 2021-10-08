<?php

session_start();


require_once ("connection_sql.php");

header('Content-Type: text/xml');

date_default_timezone_set('Asia/Colombo');

if ($_POST["Command"] == "getdt") {
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
$_SESSION["customer"]="";
    $ResponseXML = "";
    $ResponseXML .= "<new>";
    $ResponseXML .= "<sdate><![CDATA[".date("Y-m-d")."]]></sdate>"; 

    $ResponseXML .= "</new>";

    echo $ResponseXML;
}

        
        
if($_POST["Command"]=="save_inv")
{
            
                
       try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->beginTransaction();
        
        $sqlisalma_q = "select * from chkmodify where refno='" . $_POST["invno"] . "'";
        $resultsalma_q = $conn->query($sqlisalma_q);
        if ($rowsalma_q = $resultsalma_q->fetch()) { 
            exit(" No Already Exist !!!"); 
        } 
        
            if ($_SESSION["dev"]==""){
    		   exit("Login Again");
        	}
        	
        	if ((trim($_GET["txtfirstdate"]) == "") and (trim($_GET["txtseconddate"]) == "")) { 
        		
        		$sql="update s_invcheq set che_date='" . $_GET["txtchq_date"] . "', ex_flag='M', ex_date1='" . trim($_GET["txtpredate"]) . "' where cus_code='" . trim($_GET["txtcode"]) . "' and cheque_no='" . trim($_GET["txtch_no"]) . "'";
        		$result = $conn->query($sql);
        	}	
        	
        	if ((trim($_GET["txtfirstdate"]) != "") and (trim($_GET["txtseconddate"]) == "")) { 
        		
        		$sql="update s_invcheq set che_date='" . $_GET["txtchq_date"] . "', ex_flag='M', ex_date2='" . trim($_GET["txtpredate"]) . "' where cus_code='" . trim($_GET["txtcode"]) . "' and cheque_no='" . trim($_GET["txtch_no"]) . "'";
        	$result = $conn->query($sql);
        		
        	}	
        
        	$diff = abs(strtotime($_GET["txtchq_date"]) - strtotime($_GET["txtpredate"]));
        	$exdays = floor($diff / (60*60*24));
        											
        	if (trim(txttype)== "REC") {
        	
        		$sql="UPDATE s_sttr SET st_days=st_days+" . $exdays . ", ap_days=ap_days+" . $exdays . ", st_chdate='" . $_GET["txtchq_date"] . "' where st_chno='" . trim($_GET["txtch_no"]) . "' and cus_code='" . trim($_GET["txtcode"]) . "'";
        		$result = $conn->query($sql);
        		
        
        	}
        
          

        $conn->commit();
            echo "Modified";
        
    } catch (Exception $e) {
        $conn->rollBack();
        echo $e;
    }

}
 
 
 if ($_GET["Command"] == "pass_cus") {
 

    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

    $cuscode = $_GET["custno"];
    $_SESSION["customer"]=$cuscode;

    $sql = "Select * from vendor where   CODE ='" . $cuscode . "'";
    $result = $conn->query($sql);

    if ($rowM = $result->fetch()) {
        $ResponseXML .= "<id><![CDATA[" . json_encode($rowM) .  "]]></id>";
    }

    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}
 
 if ($_GET["Command"]=="modify"){
	header('Content-Type: text/xml'); 
	echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
			
			$ResponseXML = "";
			$ResponseXML .= "<salesdetails>";
		 
				$sql =  "select * from  s_invcheq where  cheque_no='".trim($_GET["txtChequeNo"])."' and cus_code = '".$_GET["cusno"]."' ";
			  $result = $conn->query($sql);

    if ($row = $result->fetch()) {
					$ResponseXML .= "<txtcode><![CDATA[".$row['cus_code']."]]></txtcode>";
					$ResponseXML .= "<txtname><![CDATA[".$row['CUS_NAME']."]]></txtname>";
					$ResponseXML .= "<cheque_no><![CDATA[".$row['cheque_no']."]]></cheque_no>";
					$ResponseXML .= "<txtch_amount><![CDATA[".$row['che_amount']."]]></txtch_amount>";
					$ResponseXML .= "<txtbank><![CDATA[".$row['bank']."]]></txtbank>";
					$ResponseXML .= "<recdate><![CDATA[".$row['Sdate']."]]></recdate>";
					$ResponseXML .= "<che_date><![CDATA[".$row['che_date']."]]></che_date>";
					$ResponseXML .= "<trn_type><![CDATA[".$row['trn_type']."]]></trn_type>";
					
					if (trim($row['ex_flag'])=="N"){
						$ResponseXML .= "<lblmodi><![CDATA[Not Modified]]></lblmodi>";
						$ResponseXML .= "<ex_date1><![CDATA[]]></ex_date1>";
						$ResponseXML .= "<ex_date2><![CDATA[]]></ex_date2>";
					} else {
						$ResponseXML .= "<lblmodi><![CDATA[Modified]]></lblmodi>";
						$ResponseXML .= "<ex_date1><![CDATA[".$row['ex_date1']."]]></ex_date1>";
						$ResponseXML .= "<ex_date2><![CDATA[".$row['ex_date2']."]]></ex_date2>";
					}
					
				}	
					
				
			
		$ResponseXML .= "</salesdetails>";	
		echo $ResponseXML; 
}
?>