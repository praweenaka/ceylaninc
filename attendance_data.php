<?php

session_start();

////////////////////////////////////////////// Database Connector /////////////////////////////////////////////////////////////
require_once ("connection_sql.php");

////////////////////////////////////////////// Write XML ////////////////////////////////////////////////////////////////////
header('Content-Type: text/xml');

date_default_timezone_set('Asia/Colombo');
if ($_POST["Command"] == "getdt") {
 
	$ResponseXML = "";
	$ResponseXML .= "<salesdetails>";
	$ResponseXML .= "<sales_table><![CDATA[<table class=\"table\">
	<tr>
	<th style=\"width: 5px;text-align:center;\" class=\"success\">#</th>
	<th style=\"width: 150px;text-align:center;\" class=\"success\">NAME</th>
	<th style=\"width: 50px;text-align:center;\"  class=\"success\">ATTENDANCE</th>

	</tr>";

	$i = 1;
	$sql = "select * from  employee where cancel = '0'"; 
	$result = $conn->query( $sql);
	 foreach ($conn->query($sql) as $row) { 
        // $sql1 = "Select *  from workers where ";
        // $result1 = $conn->query($sql1);
        // $row1 = $result1->fetch(); 
        
    	$name = "name" .$i;
		$att = "att" . $i; 
		
        $ResponseXML .= "<tr>";
         $ResponseXML .= "<td><input class='input-sm form-control' disabled type='text' id='" . $i . "' value='" . $i . "'></td>";
        $ResponseXML .= "<td><input class='input-sm form-control' disabled type='text' id='" . $name . "' value='" . $row['name'] . "'></td>";
        $ResponseXML .= "<td><input class='input-sm form-control' style=\"text-align:right\" type='number'  id='" . $att . "' value='1'></td>";  
        $ResponseXML .= "</tr>";
        	$i = $i + 1;
    }
	

	$ResponseXML .= "   </table>]]></sales_table>";



	$ResponseXML .= "<itm_count><![CDATA[" . $i . "]]></itm_count>";
    $ResponseXML .= "<dt><![CDATA[" . date('Y-m-d') . "]]></dt>";
	$ResponseXML .= " </salesdetails>";
	echo $ResponseXML;

}


 


if ($_POST["Command"] == "save_item") {

 
		try {
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$conn->beginTransaction();
            
            $sql1 = "select * from attendance where CANCELL='0' and SDATE='" . $_POST['sdate'] . "'"; 
            $result1 = $conn->query($sql1);
            if ($row1 = $result1->fetch()) {
                exit('Result Found');
            }
                
			$i = 1; 
			$count = $_POST['count'];
			while ($_POST["count"] > $i) {	
    			$name = "name" .$i;
    	    	$att = "att" . $i; 
    	    	    
                    
                         $sql2 = "insert into attendance(NAME,HOURS,SDATE) values ('" . $_POST[$name] . "','" . $_POST[$att] . "','" . $_POST['sdate'] . "')"; 
                         $result2 = $conn->query($sql2);
                    
                   
                 
				$i = $i+1;	
    		}
            $ref='ATTENDANCE'.' - '.$_POST['sdate'];
            $sqllog = "insert into entry_log(refno, username, docname, trnType, stime, sdate) values ('". $ref."', '" . $_SESSION["CURRENT_USER"] . "', 'ATTENDANCE', 'UPDATED', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d") . "')";
            $resultlog = $conn->query($sqllog);

			$conn->commit();
			echo "Updated";
		} catch (Exception $e) {
			$conn->rollBack();
			echo $e;
		}
	}

?>
