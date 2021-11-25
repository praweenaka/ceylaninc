<?php session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Print CRN</title>
<style type="text/css">
<!--
.companyname {
	color: #0000FF;
	font-weight: bold;
	font-size: 24px;
}

.com_address {
	color: #000000;
	font-weight: bold;
	font-size: 18px;
}

.heading {
	color: #000000;
	font-weight: bold;
	font-size: 20px;

}

body {
	color: #000000;
	font-size: 16px;

}
-->

</style>
</head>

<body><center>
<?php 
include_once './connection_sql.php';
		
		$sql_head="select * from invpara";
		$result_head = $conn->query($sql_head); 
        $row_head = $result_head->fetch(); 
	 
		
		echo "<center><span class=\"companyname\">".$row_head["COMPANY"]."</span></center><br>";
		echo "<center><span class=\"com_address\">".$row_head["ADD1"]."</span></center><br>";
	?>
  
<table width="922" height="342" border="0">
 <?php
		 
			
		$sql="SELECT * FROM s_utmas where CANCEL='0' and C_REFNO='".$_GET["txtrefno"]."'"; 
        $result = $conn->query($sql); 
        $row = $result->fetch();  
     		
        
		$sql1="Select * from vendor where CODE='".$row["C_CODE"]."'";
    	$result1 = $conn->query($sql1); 
        $row1 = $result1->fetch(); 
		
		
		
	?>
  
   <tr>
    <th colspan="5" scope="col" class="heading">Utilization Note</th>
  </tr>
   
   
  <tr>
  <td height="74" colspan="5" scope="col">
  <table cellpadding="0" cellspacing="0" border="0"><tr><td>
  <table border="0">
  <tr>
    <td width="150" align="left">Customer Code :- </td>
    <td width="600" align="left"><?php echo $row1["CODE"]; ?></td>
    <td width="170" align="left">No :- </td>
    <td width="266" align="left"><?php echo $row["C_REFNO"]; ?></td>
  </tr>
  <tr>
    <td align="left">Customer Name :- </td>
    <td align="left"><?php echo $row1["NAME"]; ?></td>
    <td align="left">Date :- </td>
    <td align="left"><?php echo $row["C_DATE"]; ?></td>
  </tr>
  <tr>
    <td align="left">Address</td>
    <td align="left"><?php echo $row1["ADD1"]." ".$row1["ADD2"]; ?></td>
    <td align="left">GRN :- </td>
    <td align="left"><?php echo $row["C_CRNNo"]; ?></td>
  </tr>
  <tr>
  </table>
  </td></tr></table>  </td>
  </tr>
  
    <tr>
      <td height="38" colspan="5" scope="col"><table width="200" border="1" cellpadding="0" cellspacing="0">
        <tr>
          <td><strong>Invoice</strong></td>
          <td><strong>Amount</strong></td>
        </tr>
       <?php
	   
	    $sql_data="SELECT * FROM s_ut where C_REFNO='".$_GET["txtrefno"]."'";
    	 foreach ($conn->query($sql_data) as $row_data) {	
			echo "<tr>
          		<td>".$row_data["C_INVNO"]."</td>
          		<td>".$row_data["C_PAYMENT"]."</td>
        	</tr>";
		
		}
		?>
        
      </table></td>
    </tr>
    <tr>
      <td height="38" colspan="5" scope="col">
      <table width="600" border="1" cellpadding="0" cellspacing="0">
        <tr>
          <td><strong>Cheque No</strong></td>
          <td><strong>Cheque Date</strong></td>
          <td><strong>Bank</strong></td>
          <td><strong>Amount</strong></td>
        </tr>
       <?php
	   
	   if ($row["c_chdate"]!="0000-00-00"){
			echo "<tr>
          		<td>".$row["c_chno"]."</td>
          		<td>".$row["c_chdate"]."</td>
				<td>".$row["ch_bank"]."</td>
				<td>".$row["ch_val"]."</td>
        	</tr>";
		}
		
		?>
      </table>          </td>
  </tr>
  
    <tr>
      <td width="261">&nbsp;</td>
      <td width="342" colspan="2">&nbsp;</td>
      <td width="115">&nbsp;</td>
      <td width="182" align="right">&nbsp;</td>
  </tr>
  
  <tr>
    <td>_____________________</td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
    <td>__________________________</td>
  </tr>
  <tr>
    <td>Prepared By</td>
    <td colspan="2">&nbsp;</td>
    <td>&nbsp;</td>
    <td>Authorised By</td>
  </tr>
</table>
</body>
</html>
