<?php

session_start();
include_once("connectioni.php");
////////////////////////////////////////////// Database Connector /////////////////////////////////////////////////////////////
include_once ("connection_sql.php");

////////////////////////////////////////////// Write XML ////////////////////////////////////////////////////////////////////
header('Content-Type: text/xml');

date_default_timezone_set('Asia/Colombo');

if ($_GET["Command"] == "calcu") {
 header('Content-Type: text/xml');
 


 $ResponseXML = "";
 $ResponseXML .= "<salesdetails>";
 $total = 0;
 if ($_GET["dis1"] != '') {
    
    if ($_GET["dis2"] != '') {
//            var tot = document.getElementById('tot').value;
        $x = ($_GET["sal"] - ($_GET["sal"] * $_GET["dis1"]) / 100);
        $total = ($x - ($x * $_GET["dis2"]) / 100);
    } else {

        $total = ($_GET["sal"] - ($_GET["sal"] * $_GET["dis1"]) / 100);
    }
}


$tot = number_format($total);

$ResponseXML .= "<toot><![CDATA[$tot]]></toot>";
$ResponseXML .= "</salesdetails>";
echo $ResponseXML;
}


if ($_GET["Command"] == "pass_itno") {
    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";


    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";



    $sql = "Select * from s_mas where stk_no='" . $_GET['itno'] . "'";

       $result = $conn->query($sql);
    if ($row = $result->fetch()) {


        $ResponseXML .= "<str_code><![CDATA[" . $row['STK_NO'] . "]]></str_code>";
        $ResponseXML .= "<str_description><![CDATA[" . $row['DESCRIPT'] . "]]></str_description>";
        $ResponseXML .= "<actual_selling><![CDATA[" . $row['SELLING'] . "]]></actual_selling>";
    }


    $tb = "";
    $tb .= "<table class='table'>";
    $tb .= "<tr><th>Date</th><th>Reference No</th><th>In</th><th>Out</th><th>Balance</th></tr>";
 $mbal = 0; 
    $sql = "select * from s_trn_defective where stk_no = '" . $_GET['itno'] . "' order by sdate,id";
    foreach ($conn->query($sql) as $row) {
   

        $tb .= "<tr>";
        $tb .= "<td>" . $row['SDATE'] . "</td>";
        $tb .= "<td>" . $row['REFNO'] . "</a></td>";

        if ($row['QTY'] > 0) {
            $tb .= "<td>" . number_format($row['QTY'], 0, "", "") . "</td>";
            $tb .= "<td></td>";
        } else {
            $tb .= "<td></td>";
            $tb .= "<td>" . $row['QTY'] . "</td>";
        }
        $mbal = $mbal + $row['QTY'];
        $tb .= "<td>" . $mbal . "</td>";

        $tb .= "</tr>";
    }

    $tb .= "</table>";
    $ResponseXML .= "<stname><![CDATA[" . $_GET['stname'] . "]]></stname>";
    $ResponseXML .= "<tb><![CDATA[" . $tb . "]]></tb>";


    $ResponseXML .= "</salesdetails>";
    echo $ResponseXML;
}


if ($_GET["Command"] == "search_itm") {


    $ResponseXML = "";
    $ResponseXML .= "<table  class=\"table table-striped table-bordered\"><tr>
    <th style=\"width: 20%;height:0px;\"></th>
    <th style=\"width: 45%;></th>
    <th style=\"width: 15%;height:0px;\"></th>
    <th style=\"width: 10%;height:0px;\"></th>
    <th style=\"width: 10%;height:0px;\"></th>
    </tr>";



    $sql = "Select * from s_mas where stk_no <> ''";
    if ($_GET['stk_no'] != "") {
        $sql .= " and stk_no like '" . $_GET['stk_no'] . "%'";
    }
    if ($_GET['descript'] != "") {
        $sql .= " and DESCRIPT like '" . $_GET['descript'] . "%'";
    }
    if ($_GET['brand'] != "") {
        $sql .= " and brand_name like '" . $_GET['brand'] . "%'";
    }
    if ($_GET['chk_stock'] == "1") {
        $sql .= " and qtyinhand >0";
    }
    
    if ($_GET['cmbbrand'] != "All") {
        $sql .= " and brand_name ='" . $_GET['cmbbrand'] . "'";
    }
    $sql .= " order by stk_no ";
foreach ($conn->query($sql) as $row) {

        $ResponseXML .= "<tr>";
        $ResponseXML .= "<td><a href=\"#\" onclick=\"get_itm('" . $row['STK_NO'] . "');\">" . $row['STK_NO'] . "</a></td>";
        $ResponseXML .= "<td><a href=\"#\" onclick=\"get_itm('" . $row['STK_NO'] . "');\">" . $row['DESCRIPT'] . "</a></td>";
        $ResponseXML .= "<td><a href=\"#\" onclick=\"get_itm('" . $row['STK_NO'] . "');\">" . $row['BRAND_NAME'] . "</a></td>";
        $ResponseXML .= "<td style=\"text-align:right;\"><a href=\"#\" onclick=\"get_itm('" . $row['STK_NO'] . "');\">" . number_format($row['QTYINHAND'], 0, ".", ",") . "</a></td>";
        $ResponseXML .= "<td style=\"text-align:right;\"><a href=\"#\" onclick=\"get_itm('" . $row['STK_NO'] . "');\">" . number_format($row['SELLING'], 2, ".", ",") . "</a></td>";
        $ResponseXML .= "</tr>";
    }

    $ResponseXML .= "</table>";


    echo $ResponseXML;
}


if ($_GET["Command"] == "get_itm111") {


    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

        
        $sql = "Select * from s_mas where STK_NO='" . $_GET['stk_no'] . "'";
        $result = $conn->query($sql);
        if ($row = $result->fetch()) { 
 
            $ResponseXML .= "<stat><![CDATA[1]]></stat>";
            $ResponseXML .= "<STK_NO><![CDATA[" . $row['STK_NO'] . "]]></STK_NO>";
            $ResponseXML .= "<DESCRIPT><![CDATA[" . $row['DESCRIPT'] . "]]></DESCRIPT>";
            $ResponseXML .= "<SELLING><![CDATA[" . $row['SELLING'] . "]]></SELLING>";
            $ResponseXML .= "<PART_NO><![CDATA[" . $row['PART_NO'] . "]]></PART_NO>";
            $ResponseXML .= "<qtyinhand><![CDATA[" . number_format($row['QTYINHAND'], 0, "", "") . "]]></qtyinhand>";
            $dt = date('Y-m-d', strtotime(date('Y-m-d') . ' - 75 days'));
    
            $sql1 = "Select sum(REC_QTY) as stk from s_purtrn where STK_NO='" . $row['STK_NO'] . "' and CANCEL='0' and SDATE>'" . $dt . "' " ; 
             $result1 = $conn->query($sql1); 
            $row1 = $result1->fetch();
    
            $mnewstk = 0;
            $unsold = 0;
            if (is_null($row1["stk"]) == false) {
                $mnewstk = $row1["stk"];
            }
    
            if ($row["QTYINHAND"] > $row1["stk"]) {
                $unsold = $row["QTYINHAND"] - $mnewstk;
            }
    
            // if ($row['active_t'] == "1") {
            //     $ResponseXML .= "<active_t><![CDATA[" . $row['active_t'] . "]]></active_t>";
            // } else {
            //     $ResponseXML .= "<active_t><![CDATA[0]]></active_t>";
            // }
    
 
            $ResponseXML .= "<unsold><![CDATA[" . $unsold . "]]></unsold>";
    
    
            $pending = 0;
    
            $sql1 = "Select sum(qty) as stk from s_trn where STK_NO='" . $row['STK_NO'] . "' and seri_no='1'";
               $result1 = $conn->query($sql1); 
            $row1 = $result1->fetch();
    
            if (is_null($row1["stk"]) == false) {
                $pending = $row1["stk"];
            }
    
            $ResponseXML .= "<pending><![CDATA[" . number_format($pending, 0, ".", ",") . "]]></pending>";
    
 
            $ResponseXML .= "<SALE01><![CDATA[" . number_format($row['SALE01'], 0, ".", ",") . "]]></SALE01>";
            $ResponseXML .= "<SALE02><![CDATA[" . number_format($row['SALE02'], 0, ".", ",") . "]]></SALE02>";
            $ResponseXML .= "<SALE03><![CDATA[" . number_format($row['SALE03'], 0, ".", ",") . "]]></SALE03>";
            $ResponseXML .= "<SALE04><![CDATA[" . number_format($row['SALE04'], 0, ".", ",") . "]]></SALE04>";
            $ResponseXML .= "<SALE05><![CDATA[" . number_format($row['SALE05'], 0, ".", ",") . "]]></SALE05>";
            $ResponseXML .= "<SALE06><![CDATA[" . number_format($row['SALE06'], 0, ".", ",") . "]]></SALE06>";
            $ResponseXML .= "<SALE07><![CDATA[" . number_format($row['SALE07'], 0, ".", ",") . "]]></SALE07>";
            $ResponseXML .= "<SALE08><![CDATA[" . number_format($row['SALE08'], 0, ".", ",") . "]]></SALE08>";
            $ResponseXML .= "<SALE09><![CDATA[" . number_format($row['SALE09'], 0, ".", ",") . "]]></SALE09>";
            $ResponseXML .= "<SALE10><![CDATA[" . number_format($row['SALE10'], 0, ".", ",") . "]]></SALE10>";
            $ResponseXML .= "<SALE11><![CDATA[" . number_format($row['SALE11'], 0, ".", ",") . "]]></SALE11>";
            $ResponseXML .= "<SALE12><![CDATA[" . number_format($row['SALE12'], 0, ".", ",") . "]]></SALE12>";
    
            $avg = ($row['SALE01'] + $row['SALE02'] + $row['SALE03'] + $row['SALE04'] + $row['SALE05'] + $row['SALE06'] + $row['SALE07'] + $row['SALE08'] + $row['SALE09'] + $row['SALE10'] + $row['SALE11'] + $row['SALE12']) / 12;
            $avg = number_format($avg, 0, "", ",");
    
            $ResponseXML .= "<avg><![CDATA[" . $avg . "]]></avg>";
    
            $ResponseXML .= " <sales_table><![CDATA[ <table  class=\"table table-striped\">
            <tr>
            <th class='info' colspan='3'>Stock In Hand</th>
            </tr>
            <tr>
            <th>Department</th>
            <th>Stock</th>
            <th>Pending Orders</th>
            </tr>";
    
            $sql2 =   "Select * from s_stomas" ;
           foreach ($conn->query($sql2) as $row2) {
    
                $sql3 =  "Select QTYINHAND from s_submas where STO_CODE='" . $row2["CODE"] . "' and STK_NO='" . $row["STK_NO"] . "'";
               $result3 = $conn->query($sql3);
            if ($row3 = $result3->fetch()) {
 
                    $mord = 0;
                    $sql4 =  "Select sum(qty) as qty from view_cusordmas_trn where department='" . $row2["CODE"] . "' and STK_NO='" . $row["STK_NO"] . "' and cancell='0' and invno ='0'";
                    $result4 = $conn->query($sql4);
            if ($row4 = $result4->fetch()) {
                        $mord = $row4['qty'];
                    }
       
    
                    if (($row3["QTYINHAND"] + $mord) != 0) {
                        $ResponseXML .= "  <tr>
                        <td>" . $row2["DESCRIPTION"] . "</td>
                        <td>" . number_format($row3["QTYINHAND"], 0, ".", ",") . "</td>
                        <td>" . $mord . "</td>";
                        $tot = $tot + $row3["QTYINHAND"];
    
                        $ResponseXML .= "</tr>";
                    }
                }
            }
            /* $ResponseXML .=  "<tr>
              <th>Total</th>
              <th>$tot</th>
              <th></th>
              </tr>";
             */   
             
              $ResponseXML .= "   </table>]]></sales_table>";
      } else {
        $ResponseXML .= "<stat><![CDATA[0]]></stat>";
    }    
    $GLOBALS[$display_val] = "";
    $mval = "<bin_table><![CDATA[";

  
    if ($_GET['chk_trns'] == "1") {
        display();   
    } 
    $mval .= $GLOBALS[$display_val] . "]]></bin_table>";

    $ResponseXML .= $mval;

 
    $sdate = date('Y-m-d');
    $sdate = date('Y', strtotime(date('Y-m-d') . ' - 365 days'));
    $sdate = date('Y-m', strtotime($sdate));
    $sdate = $_GET['yer'] . "-01-01";




    $sql = "update s_trn  set tru_qty = qty  where  ledindi ='INV'   and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' ";
    $res = $conn->query($sql);   

    $sql = "update s_trn  set tru_qty = qty*-1  where ledindi ='GRN' and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' ";
    $res = $conn->query($sql);   
    $qty = 0;

    $i = 1;
    $tb1 = "";
    $tb2 = "";
    $tb = "<table class=\"table table-striped\" ><tr class='info'>";

    $sql = "select stk_no , jan,feb , mar , apr, may, jun, jul,aug,sep,oct,nov,decs from (select stk_no ,  SUM(CASE WHEN month(sdate) = '1' THEN qty END) AS jan, 
    SUM(CASE WHEN month(sdate) = '2' THEN qty END) AS feb,  SUM(CASE WHEN month(sdate) = '3' THEN qty END) AS mar ,
    SUM(CASE WHEN month(sdate) = '4' THEN qty END) AS apr ,
    SUM(CASE WHEN month(sdate) = '5' THEN qty END) AS may ,
    SUM(CASE WHEN month(sdate) = '6' THEN qty END) AS jun ,
    SUM(CASE WHEN month(sdate) = '7' THEN qty END) AS jul ,
    SUM(CASE WHEN month(sdate) = '8' THEN qty END) AS aug ,
    SUM(CASE WHEN month(sdate) = '9' THEN qty END) AS sep ,
    SUM(CASE WHEN month(sdate) = '10' THEN qty END) AS oct ,
    SUM(CASE WHEN month(sdate) = '11' THEN qty END) AS nov ,
    SUM(CASE WHEN month(sdate) = '12' THEN qty END) AS decs 
    
    
    from s_trn where year(sdate) ='" . $_GET['yer'] . "' and (ledindi ='INV'  or ledindi ='GRN')  and stk_no = '" . $_GET["stk_no"] . "';  
) as ca ";
    //  echo $sql;


$sql = "select stk_no , jan,feb , mar , apr, may,jun,jul,aug,sep,oct,nov,decm
from (select stk_no ,  SUM(CASE WHEN month(sdate) = '1' THEN tru_qty END) AS jan, 
SUM(CASE WHEN month(sdate) = '2' THEN tru_qty END) AS feb, 
SUM(CASE WHEN month(sdate) = '3' THEN tru_qty END) AS mar ,
SUM(CASE WHEN month(sdate) = '4' THEN tru_qty END) AS apr ,
SUM(CASE WHEN month(sdate) = '5' THEN tru_qty END) AS may ,
SUM(CASE WHEN month(sdate) = '6' THEN tru_qty END) AS jun ,
SUM(CASE WHEN month(sdate) = '7' THEN tru_qty END) AS jul ,
SUM(CASE WHEN month(sdate) = '8' THEN tru_qty END) AS aug ,
SUM(CASE WHEN month(sdate) = '9' THEN tru_qty END) AS sep,
SUM(CASE WHEN month(sdate) = '10' THEN tru_qty END) AS oct,
SUM(CASE WHEN month(sdate) = '11' THEN tru_qty END) AS nov,
SUM(CASE WHEN month(sdate) = '12' THEN tru_qty END) AS decm

from s_trn where year(sdate) ='" . $_GET['yer'] . "'   and (ledindi = 'INV'    or LEDINDI ='GRN' ) and stk_no  ='" . $_GET["stk_no"] . "'
) as ca";



    //  $sql = "select DATE_FORMAT(sdate, '%Y-%m') as sdate , sum(tru_qty) as qty from s_trn where (ledindi='INV'   or ledindi ='GRN') and year(sdate) = '" . $_GET['yer']  . "' and stk_no = '" . $_GET["stk_no"] . "' group by DATE_FORMAT(sdate, '%Y-%m') order by sdate";     
foreach ($conn->query($sql) as $row) {

        //echo date('j',strtotime($mon));

    while ($i < 13) {

        $mon = $_GET['yer'] . "-" . $i . "-1";

        $sdatem = date('F', strtotime($mon));
        $tb1 .= "<th>" . $sdatem . "</th>";

        $tb2 .= "<td>" . number_format($row2[$i], 0, ".", ",") . "</td>";
        $qty = $qty + $row2[$i];

        $i = $i + 1;
    }
}

$tb .= $tb1;
$tb .= "<th>Avg. for 12 Months</th></tr><tr>" . $tb2 . "<td>" . number_format(($qty / 12), 0, ".", ",") . "</td></tr>";
$tb .= "</tr></table>";


$ResponseXML .= "<consum><![CDATA[" . $tb . "]]></consum>";


//''=============================ORd=============

$ResponseXML .= "<ord_table><![CDATA[ <table   class=\"table table-striped\">
<tr>
<th class='info' colspan='6'>Pending Purchase Orders</th>
</tr>
<tr>
<th>Ref No</th>
<th>Ord Date</th>
<th>Schedule Date</th>
<th>Qty</th>
<th>LC No</th>
<th>Supplier</th>
</tr>";


if ($_GET["department"] == "All") {

    $sql =   "select * from vieword where  ( SDATE >=  '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "' and cancel=0 order by refno" ;
} else {

    $sql =   "select * from vieword where  ( SDATE >=  '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "' and DEP_CODE='" . $_GET["department"] . "' AND cancel=0 order by refno" ;
}
foreach ($conn->query($sql) as $row) {
    $ResponseXML .= "<tr >
    <td>" . $row["REFNO"] . "</td>
    <td>" . $row["SDATE"] . "</td>
    <td>" . $row["S_date"] . "</td>
    <td>" . number_format($row["ORD_QTY"], 0, ".", ",") . "</td>
    <td>" . $row["LC_No"] . "</td>
    <td>" . $row["SUP_NAME"] . "</td>
    </tr>   ";
}


$ResponseXML .= "</table>]]></ord_table>";

$ResponseXML .= "</salesdetails>";
echo $ResponseXML;
}

function display11() {
 

require_once ("connection_sql.php");
    $sql ="Select QTYINHAND from s_mas where STK_NO = '" . $_GET["stk_no"] . "'"; 
    $result = $conn->query($sql);
    $row = $result->fetch();
    // $resultmas = $conn->query($sqlrsmas); 
    // $rowsmas = $resultmas->fetch(); 
echo $row['QTYINHAND'].'/';

 

    $sqltrn =  "select sum(qty) as qty from s_trn where sdate >= '" . $_GET["dte_from"] . "' and stk_no = '" . $_GET["stk_no"] . "' and ledindi <> 'INV' and   ledindi <> 'GINI' and ledindi <> 'GINR' and ledindi <> 'IOU' and ledindi <> 'ARR' ";
    $resulttrn = $conn->query($sqltrn); 
    $rowstrn = $resulttrn->fetch(); 
    if (!Is_Null($rowstrn['qty'])) {
        $BAL = $rowstrn['qty'];
    }
 
    $sqltrn =   "select sum(qty) as qty from s_trn where sdate >= '" . $_GET["dte_from"] . "' and stk_no = '" . $_GET["stk_no"] . "' and ledindi <> 'TRN' and ledindi <> 'GINI' and ledindi <> 'GINR' and ledindi <> 'IIN' and ledindi <> 'ARN' and ledindi <> 'GRN' ";
    $resulttrn = $conn->query($sqltrn); 
    $rowstrn = $resulttrn->fetch(); 
    if (!Is_Null($rowstrn['qty'])) {
        $BAL = $BAL - $rowstrn['qty'];
    }

 
    if ($BAL != $rowsmas['QTYINHAND']) {
        $BAL = $BAL - $rowsmas['QTYINHAND'];
    } else {
        $BAL = 0;
    }



    $M_BAL = 0;
    $sqltrn = "select * from s_trn where sdate <= '" . $_GET["dte_from"] . "' and stk_no = '" . $_GET["stk_no"] . "' and ledindi ='TRN' order by sdate desc,id desc" ;
    //echo "select * from s_trn where sdate <= '" .$_GET["dte_from"]. "' and stk_no = '" .$_GET["stk_no"]. "' and ledindi ='TRN' order by sdate desc,id desc"; 
    $result_trn = $conn->query($sqltrn); 
    $rowstrn = $result_trn->fetch(); 
    $sdate = $rowstrn['SDATE'];
    if ($_GET["department"] == "All") {
        //$M_BAL = $rowstrn['QTY']; 
    }
 


    $sql_query = "select sum(qty) as qty from s_trn where sdate < '" . $_GET["dte_from"] . "' and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' and (ledindi = 'ARN' or ledindi ='GRN' or ledindi = 'GINR' or ledindi ='IIN' or ledindi ='TRN')";

    if ($_GET["department"] != "All") {
        $sql_query .= " and DEPARTMENT ='" . $_GET["department"] . "'";
    }

   $result_query = $conn->query($sql_query); 
    $rowstrn = $result_query->fetch(); 
    if (!Is_Null($rowstrn['qty'])) {
        $M_BAL = $M_BAL + $rowstrn['qty'];
    }
 

    $sql_query = "select sum(qty) as qty from s_trn where sdate < '" . $_GET["dte_from"] . "' and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' and ((ledindi = 'ISO' or ledindi = 'ARR' or ledindi ='INV'   or ledindi = 'GINI' or ledindi ='IOU'))";
    if ($_GET["department"] != "All") {
        $sql_query .= " and DEPARTMENT ='" . $_GET["department"] . "'";
    }
    $result_query = $conn->query($sql_query); 
    $rowstrn = $result_query->fetch(); 
    
   
    if (!Is_Null($rowstrn['qty'])) {
        $M_BAL = $M_BAL - $rowstrn['qty'];
    }
 

  $return_val = "<table class=\"table table-striped table-bordered\">
  
  <tr>
  <th class='info' colspan='6'>Transcation List</th>
  </tr>
  <tr>
  <th>Ref No</th>
  <th>Date</th>
  <th>Document Type</th>
  <th>Stk In</th>
  <th>Stk Out</th>
  <th>Stk Bal</th>
  </tr>";
  $return_val .= "<tr  bgcolor=\"#ffffff\">
  <td><font color=\"" . $fcolor . "\">OP Bal</font></td>
  <td><font color=\"" . $fcolor . "\">" . $_GET["dte_from"] . "</font></td>
  <td><font color=\"" . $fcolor . "\"></font></td>
  <td><font color=\"" . $fcolor . "\"></font></td>
  <td><font color=\"" . $fcolor . "\"></font></td>
  <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
  </tr>";



  if ($_GET["department"] == "All") {

    $sql = "select * from s_trn where  (SDATE >=  '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "'and LEDINDI!='GINR' and LEDINDI!='GINI' and LEDINDI!='VGI' and LEDINDI!='VGR' ORDER BY sdate,id";
} else {

    $sql =  "select * from s_trn where (SDATE >= '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "' and (DEPARTMENT = '" . $_GET["department"] . "' or (department='01' and ledindi='TRN')) ORDER BY SDATE,id";
}






$i = 0;
foreach ($conn->query($sql) as $row) {


    $refno = $row["REFNO"];
    $sdate = $row["SDATE"];
    $doc_type = "";
    $fcolor = "";


    if ($row["LEDINDI"] == "INV") {
        $doc_type = "Sales Invoice";
        $fcolor = "#330066";
    }
     

    if ($row["LEDINDI"] == "ARN") {

        $sql1 =  "select lcno from s_purmas where refno='" . $row["REFNO"] . "'";

       $result1 = $conn->query($sql1);
        if ($row1 = $result1->fetch()) {
            $doc_type = "LC No:" . $row1["lcno"];
        } else {
            $doc_type = "LC No:";
        }

        $fcolor = "#ff0000";
    }

    if (($row["LEDINDI"] == "GINI") or ( $row["LEDINDI"] == "GINR")) {
        $doc_type = "Internal Stock Transfers";
        $fcolor = "#003399";
    }

    if ($row["LEDINDI"] == "DGRN") {
        $doc_type = "Defective Return";
        $fcolor = "#66FF00";
    }

    if ($row["LEDINDI"] == "ARR") {
        $doc_type = "Purchase Return";
        $fcolor = "#CC3300";
    }

    if ($row["LEDINDI"] == "GRN") {
        $doc_type = "Sales Return";
        $fcolor = "#9900FF";
    }

    if ($row["LEDINDI"] == "IIN") {
        $doc_type = "Stock Adjestment IN";
        $fcolor = "#669966";
    }

    if ($row["LEDINDI"] == "IOU") {
        $doc_type = "Stock Adjestment OUT";
        $fcolor = "#CC6666";
    }

    if ($row["LEDINDI"] == "ORC") {
        $doc_type = "Order Confirmation";
        $fcolor = "#0099FF";
    }

    if ($row["LEDINDI"] == "TRN") {
        $doc_type = "Inventory";
        $fcolor = "#996600";
        $M_BAL = $row["QTY"];

        if ($_GET["department"] != "All" and $_GET["department"] != "1") {
            $M_BAL = 0;
        }
    }



        //==stock out
    $qty4 = "";
    if (($row["LEDINDI"] == "INV") or   ( $row["LEDINDI"] == "ORC") or ( $row["LEDINDI"] == "GINI") or ( $row["LEDINDI"] == "ARR") or ( $row["LEDINDI"] == "IOU")) {
        $qty4 = $row["QTY"];
        $M_BAL = $M_BAL - $row["QTY"];
        ;
    }

        //===stock in
    $qty3 = "";
    if (($row["LEDINDI"] == "ARN") or ( $row["LEDINDI"] == "GINR") or ( $row["LEDINDI"] == "CRN") or ( $row["LEDINDI"] == "GRN") or ( $row["LEDINDI"] == "IIN")) {
        $qty3 = $row["QTY"];
        $M_BAL = $M_BAL + $row["QTY"];
    }
    $qty5 = $M_BAL;


// <a href=\"settlement_history.php?refno=" . $row['REF_NO']. "&trn_type=INV\"  onclick=\"window.open(this.href,'mywin',`width=900,height=700`); return false;\"><font color=\"" . $fcolor . "\">" . $refno . "</font></a> 
            
    if ($row["LEDINDI"] == "INV") {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><a href=\"\" onClick=\"NewWindow('invoice_view.php?refno=" . $refno . "&trn_type=" . $row["LEDINDI"] . "','mywin','900','700','yes','center');return false\" onFocus=\"this.blur()\"><font color=\"" . $fcolor . "\">" . $refno . "</font></a></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
    } else if (($row["LEDINDI"] == "DGRN") or ( $row["LEDINDI"] == "GRN")) {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><a href=\"\" onClick=\"NewWindow('../grn_display.php?grn=" . $refno . "&trn_type=" . $row["LEDINDI"] . "','mywin','900','700','yes','center');return false\" onFocus=\"this.blur()\"><font color=\"" . $fcolor . "\">" . $refno . "</font></a></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
    } else if (($row["LEDINDI"] == "GINR") or ( $row["LEDINDI"] == "GINI")) {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><font color=\"" . $fcolor . "\"><a href=\"\" onClick=\"NewWindow('../gin_display.php?refno=" . $refno . "&trn_type=" . $row["LEDINDI"] . "','mywin','900','700','yes','center');return false\" onFocus=\"this.blur()\">" . $refno . "</a></font></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
    } else {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><font color=\"" . $fcolor . "\">" . $refno . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
    }
    $i = $i + 1;
}




$GLOBALS[$display_val] = $return_val;
}
 
 
 
//  ===================================================================================



if ($_GET["Command"] == "get_itm") {


    header('Content-Type: text/xml');
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";

    $ResponseXML = "";
    $ResponseXML .= "<salesdetails>";

 
    $sql =  "Select * from s_mas where STK_NO='" . $_GET['stk_no'] . "'";
    $result = $conn->query($sql);
    if ($row = $result->fetch()) { 

        $ResponseXML .= "<stat><![CDATA[1]]></stat>";
        $ResponseXML .= "<STK_NO><![CDATA[" . $row['STK_NO'] . "]]></STK_NO>";
        $ResponseXML .= "<DESCRIPT><![CDATA[" . $row['DESCRIPT'] . "]]></DESCRIPT>";
        $ResponseXML .= "<SELLING><![CDATA[" . $row['SELLING'] . "]]></SELLING>";
        $ResponseXML .= "<PART_NO><![CDATA[" . $row['PART_NO'] . "]]></PART_NO>";
        $ResponseXML .= "<qtyinhand><![CDATA[" . number_format($row['QTYINHAND'], 0, "", "") . "]]></qtyinhand>";
        $dt = date('Y-m-d', strtotime(date('Y-m-d') . ' - 75 days'));

        $sql1 = "Select sum(REC_QTY) as stk from s_purtrn where STK_NO='" . $row['STK_NO'] . "' and CANCEL='0' and SDATE>'" . $dt . "' " ;
        $result1 = $conn->query($sql1); 
        $row1 = $result1->fetch();

        $mnewstk = 0;
        $unsold = 0;
        if (is_null($row1["stk"]) == false) {
            $mnewstk = $row1["stk"];
        }

        if ($row["QTYINHAND"] > $row1["stk"]) {
            $unsold = $row["QTYINHAND"] - $mnewstk;
        }

        if ($row['active_t'] == "1") {
            $ResponseXML .= "<active_t><![CDATA[" . $row['active_t'] . "]]></active_t>";
        } else {
            $ResponseXML .= "<active_t><![CDATA[0]]></active_t>";
        }

 
        $ResponseXML .= "<unsold><![CDATA[" . $unsold . "]]></unsold>";


        $pending = 0;

        $sql1 = "Select sum(qty) as stk from s_trn where STK_NO='" . $row['STK_NO'] . "' and seri_no='1'" ;
        $result1 = $conn->query($sql1); 
        $row1 = $result1->fetch();
        if (is_null($row1["stk"]) == false) {
            $pending = $row1["stk"];
        }

        $ResponseXML .= "<pending><![CDATA[" . number_format($pending, 0, ".", ",") . "]]></pending>";


        $ResponseXML .= "<SALE01><![CDATA[" . number_format($row['SALE01'], 0, ".", ",") . "]]></SALE01>";
        $ResponseXML .= "<SALE02><![CDATA[" . number_format($row['SALE02'], 0, ".", ",") . "]]></SALE02>";
        $ResponseXML .= "<SALE03><![CDATA[" . number_format($row['SALE03'], 0, ".", ",") . "]]></SALE03>";
        $ResponseXML .= "<SALE04><![CDATA[" . number_format($row['SALE04'], 0, ".", ",") . "]]></SALE04>";
        $ResponseXML .= "<SALE05><![CDATA[" . number_format($row['SALE05'], 0, ".", ",") . "]]></SALE05>";
        $ResponseXML .= "<SALE06><![CDATA[" . number_format($row['SALE06'], 0, ".", ",") . "]]></SALE06>";
        $ResponseXML .= "<SALE07><![CDATA[" . number_format($row['SALE07'], 0, ".", ",") . "]]></SALE07>";
        $ResponseXML .= "<SALE08><![CDATA[" . number_format($row['SALE08'], 0, ".", ",") . "]]></SALE08>";
        $ResponseXML .= "<SALE09><![CDATA[" . number_format($row['SALE09'], 0, ".", ",") . "]]></SALE09>";
        $ResponseXML .= "<SALE10><![CDATA[" . number_format($row['SALE10'], 0, ".", ",") . "]]></SALE10>";
        $ResponseXML .= "<SALE11><![CDATA[" . number_format($row['SALE11'], 0, ".", ",") . "]]></SALE11>";
        $ResponseXML .= "<SALE12><![CDATA[" . number_format($row['SALE12'], 0, ".", ",") . "]]></SALE12>";

        $avg = ($row['SALE01'] + $row['SALE02'] + $row['SALE03'] + $row['SALE04'] + $row['SALE05'] + $row['SALE06'] + $row['SALE07'] + $row['SALE08'] + $row['SALE09'] + $row['SALE10'] + $row['SALE11'] + $row['SALE12']) / 12;
        $avg = number_format($avg, 0, "", ",");

        $ResponseXML .= "<avg><![CDATA[" . $avg . "]]></avg>";

        $ResponseXML .= " <sales_table><![CDATA[ <table  class=\"table table-striped\">
        <tr>
        <th class='info' colspan='3'>Stock In Hand</th>
        </tr>
        <tr>
        <th>Department</th>
        <th>Stock</th>
        <th>Pending Orders</th>
        </tr>";

        $sql2 =  "Select * from s_stomas" ;
        foreach ($conn->query($sql2) as $row2) {

            $sql3 =  "Select QTYINHAND from s_submas where STO_CODE='" . $row2["CODE"] . "' and STK_NO='" . $row["STK_NO"] . "'" ;
            $result3 = $conn->query($sql3);
            if ($row3 = $result3->fetch()) {

                $mord = 0;
                $sql4 =   "Select sum(qty) as qty from view_cusordmas_trn where DEPARTMENT='" . $row2["CODE"] . "' and STK_NO='" . $row["STK_NO"] . "' and CANCELL='0' and INVNO ='0'" ;
                $result4 = $conn->query($sql4);
                if ($row4 = $result4->fetch()) {
                    $mord = $row4['QTY'];
                }


                if (($row3["QTYINHAND"] + $mord) != 0) {
                    $ResponseXML .= "  <tr>
                    <td>" . $row2["DESCRIPTION"] . "</td>
                    <td>" . number_format($row3["QTYINHAND"], 0, ".", ",") . "</td>
                    <td>" . $mord . "</td>";
                    $tot = $tot + $row3["QTYINHAND"];

                    $ResponseXML .= "</tr>";
                }
            }
        }
        /* $ResponseXML .=  "<tr>
          <th>Total</th>
          <th>$tot</th>
          <th></th>
          </tr>";
         */
          $ResponseXML .= "   </table>]]></sales_table>";
      } else {
        $ResponseXML .= "<stat><![CDATA[0]]></stat>";
    } 
    $GLOBALS[$display_val] = "";
    $mval = "<bin_table><![CDATA[";


    if ($_GET['chk_trns'] == "1") {
        display();
    }
    $mval .= $GLOBALS[$display_val] . "]]></bin_table>";

    $ResponseXML .= $mval;


    $sdate = date('Y-m-d');
    $sdate = date('Y', strtotime(date('Y-m-d') . ' - 365 days'));
    $sdate = date('Y-m', strtotime($sdate));
    $sdate = $_GET['yer'] . "-01-01";




    $sql = "update s_trn  set tru_qty = qty  where ledindi ='INV' and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' "; 
    $res = $conn->query($sql);   

    $sql = "update s_trn  set tru_qty = qty*-1  where ledindi ='GRN' and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' ";
    $res = $conn->query($sql);   
    $qty = 0;
 
    $i = 1;
    $tb1 = "";
    $tb2 = "";
    $tb = "<table class=\"table table-striped\" ><tr class='info'>";

    $sql = "select stk_no , jan,feb , mar , apr, may, jun, jul,aug,sep,oct,nov,decs from (select stk_no ,  SUM(CASE WHEN month(sdate) = '1' THEN qty END) AS jan, 
    SUM(CASE WHEN month(sdate) = '2' THEN qty END) AS feb,  SUM(CASE WHEN month(sdate) = '3' THEN qty END) AS mar ,
    SUM(CASE WHEN month(sdate) = '4' THEN qty END) AS apr ,
    SUM(CASE WHEN month(sdate) = '5' THEN qty END) AS may ,
    SUM(CASE WHEN month(sdate) = '6' THEN qty END) AS jun ,
    SUM(CASE WHEN month(sdate) = '7' THEN qty END) AS jul ,
    SUM(CASE WHEN month(sdate) = '8' THEN qty END) AS aug ,
    SUM(CASE WHEN month(sdate) = '9' THEN qty END) AS sep ,
    SUM(CASE WHEN month(sdate) = '10' THEN qty END) AS oct ,
    SUM(CASE WHEN month(sdate) = '11' THEN qty END) AS nov ,
    SUM(CASE WHEN month(sdate) = '12' THEN qty END) AS decs 
    
    
    from s_trn where year(sdate) ='" . $_GET['yer'] . "' and (ledindi='INV'  or ledindi ='GRN')  and stk_no = '" . $_GET["stk_no"] . "';  
) as ca ";
    //	echo $sql;


$sql = "select stk_no , jan,feb , mar , apr, may,jun,jul,aug,sep,oct,nov,decm
from (select stk_no ,  SUM(CASE WHEN month(sdate) = '1' THEN tru_qty END) AS jan, 
SUM(CASE WHEN month(sdate) = '2' THEN tru_qty END) AS feb, 
SUM(CASE WHEN month(sdate) = '3' THEN tru_qty END) AS mar ,
SUM(CASE WHEN month(sdate) = '4' THEN tru_qty END) AS apr ,
SUM(CASE WHEN month(sdate) = '5' THEN tru_qty END) AS may ,
SUM(CASE WHEN month(sdate) = '6' THEN tru_qty END) AS jun ,
SUM(CASE WHEN month(sdate) = '7' THEN tru_qty END) AS jul ,
SUM(CASE WHEN month(sdate) = '8' THEN tru_qty END) AS aug ,
SUM(CASE WHEN month(sdate) = '9' THEN tru_qty END) AS sep,
SUM(CASE WHEN month(sdate) = '10' THEN tru_qty END) AS oct,
SUM(CASE WHEN month(sdate) = '11' THEN tru_qty END) AS nov,
SUM(CASE WHEN month(sdate) = '12' THEN tru_qty END) AS decm

from s_trn where year(sdate) ='" . $_GET['yer'] . "'   and (ledindi = 'INV'    or LEDINDI ='GRN' ) and stk_no  ='" . $_GET["stk_no"] . "'
) as ca";



    //	$sql = "select DATE_FORMAT(sdate, '%Y-%m') as sdate , sum(tru_qty) as qty from s_trn where (ledindi='INV'     or ledindi ='GRN') and year(sdate) = '" . $_GET['yer']  . "' and stk_no = '" . $_GET["stk_no"] . "' group by DATE_FORMAT(sdate, '%Y-%m') order by sdate";		
foreach ($conn->query($sql) as $row2) {

        //echo date('j',strtotime($mon));

    while ($i < 13) {

        $mon = $_GET['yer'] . "-" . $i . "-1";

        $sdatem = date('F', strtotime($mon));
        $tb1 .= "<th>" . $sdatem . "</th>";

        $tb2 .= "<td>" . number_format($row2[$i], 0, ".", ",") . "</td>";
        $qty = $qty + $row2[$i];

        $i = $i + 1;
    }
}

$tb .= $tb1;
$tb .= "<th>Avg. for 12 Months</th></tr><tr>" . $tb2 . "<td>" . number_format(($qty / 12), 0, ".", ",") . "</td></tr>";
$tb .= "</tr></table>";


$ResponseXML .= "<consum><![CDATA[" . $tb . "]]></consum>";


//''=============================ORd=============

$ResponseXML .= "<ord_table><![CDATA[ <table   class=\"table table-striped\">
<tr>
<th class='info' colspan='6'>Pending Purchase Orders</th>
</tr>
<tr>
<th>Ref No</th>
<th>Ord Date</th> 
<th>Qty</th>
<th>Quo No</th>
<th>Supplier</th>
</tr>";


if ($_GET["department"] == "All") {

    $sql =  "select * from vieword where  ( SDATE >=  '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "' and CANCELL=0 order by REFNO" ;
} else {

    $sql =   "select * from vieword where  ( SDATE >=  '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "' and DEPARTMENT='" . $_GET["department"] . "' AND CANCELL=0 order by REFNO" ;
} 
foreach ($conn->query($sql) as $row) {
    $ResponseXML .= "<tr >
    <td>" . $row["REFNO"] . "</td>
    <td>" . $row["SDATE"] . "</td> 
    <td>" . number_format($row["QTY"], 0, ".", ",") . "</td>
    <td>" . $row["QUONO"] . "</td>
    <td>" . $row["CUSNAME"] . "</td>
    </tr>	";
}
 

$ResponseXML .= "</table>]]></ord_table>";

$ResponseXML .= "</salesdetails>";
echo $ResponseXML;
}

function display() {

  include 'connection_sql.php'; 



    $sqlrsmas ="Select QTYINHAND from s_mas where STK_NO = '" . $_GET["stk_no"] . "'"; 
    $resultsmas = $conn->query($sqlrsmas);
    $rowsmas = $resultsmas->fetch();


   $sqltrn =  "select sum(qty) as qty from s_trn where sdate >= '" . $_GET["dte_from"] . "' and stk_no = '" . $_GET["stk_no"] . "' and ledindi <> 'INV' and   ledindi <> 'GINI' and ledindi <> 'GINR' and ledindi <> 'IOU' and ledindi <> 'ARR' ";
    $resulttrn = $conn->query($sqltrn); 
    $rowstrn = $resulttrn->fetch(); 
    if (!Is_Null($rowstrn['qty'])) {
        $BAL = $rowstrn['qty'];
    }
 
    $sqltrn =   "select sum(qty) as qty from s_trn where sdate >= '" . $_GET["dte_from"] . "' and stk_no = '" . $_GET["stk_no"] . "' and ledindi <> 'TRN' and ledindi <> 'GINI' and ledindi <> 'GINR' and ledindi <> 'IIN' and ledindi <> 'ARN' and ledindi <> 'GRN' ";
    $resulttrn = $conn->query($sqltrn); 
    $rowstrn = $resulttrn->fetch(); 
    if (!Is_Null($rowstrn['qty'])) {
        $BAL = $BAL - $rowstrn['qty'];
    }

 
    if ($BAL != $rowsmas['QTYINHAND']) {
        $BAL = $BAL - $rowsmas['QTYINHAND'];
    } else {
        $BAL = 0;
    }



    $M_BAL = 0;
    $sqltrn = "select * from s_trn where sdate <= '" . $_GET["dte_from"] . "' and stk_no = '" . $_GET["stk_no"] . "' and ledindi ='TRN' order by sdate desc,id desc" ;
    //echo "select * from s_trn where sdate <= '" .$_GET["dte_from"]. "' and stk_no = '" .$_GET["stk_no"]. "' and ledindi ='TRN' order by sdate desc,id desc"; 
    $result_trn = $conn->query($sqltrn); 
    $rowstrn = $result_trn->fetch(); 
    $sdate = $rowstrn['SDATE'];
    if ($_GET["department"] == "All") {
        //$M_BAL = $rowstrn['QTY']; 
    }
 


    $sql_query = "select sum(qty) as qty from s_trn where sdate < '" . $_GET["dte_from"] . "' and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' and (ledindi = 'ARN' or ledindi ='GRN' or ledindi = 'GINR' or ledindi ='IIN' or ledindi ='TRN')";

    if ($_GET["department"] != "All") {
        $sql_query .= " and DEPARTMENT ='" . $_GET["department"] . "'";
    }

   $result_query = $conn->query($sql_query); 
    $rowstrn = $result_query->fetch(); 
    if (!Is_Null($rowstrn['qty'])) {
        $M_BAL = $M_BAL + $rowstrn['qty'];
    }
 

    $sql_query = "select sum(qty) as qty from s_trn where sdate < '" . $_GET["dte_from"] . "' and sdate >= '" . $sdate . "' and stk_no = '" . $_GET["stk_no"] . "' and ((ledindi = 'ISO' or ledindi = 'ARR' or ledindi ='INV' or ledindi = 'GINI' or ledindi ='IOU'))";
    if ($_GET["department"] != "All") {
        $sql_query .= " and DEPARTMENT ='" . $_GET["department"] . "'";
    }
    $result_query = $conn->query($sql_query); 
    $rowstrn = $result_query->fetch(); 
    
   
    if (!Is_Null($rowstrn['qty'])) {
        $M_BAL = $M_BAL - $rowstrn['qty'];
    }
 
   
  $return_val = "<table class=\"table table-striped table-bordered\">
  
  <tr>
  <th class='info' colspan='6'>Transcation List</th>
  </tr>
  <tr>
  <th>Ref No</th>
  <th>Date</th>
  <th>Document Type</th>
  <th>Stk In</th>
  <th>Stk Out</th>
  <th>Stk Bal</th>
  </tr>";
  $return_val .= "<tr  bgcolor=\"#ffffff\">
  <td><font color=\"" . $fcolor . "\">OP Bal</font></td>
  <td><font color=\"" . $fcolor . "\">" . $_GET["dte_from"] . "</font></td>
  <td><font color=\"" . $fcolor . "\"></font></td>
  <td><font color=\"" . $fcolor . "\"></font></td>
  <td><font color=\"" . $fcolor . "\"></font></td>
  <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
  </tr>";

 

  if ($_GET["department"] == "All") {

    $sql = "select * from s_trn where  (SDATE >=  '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "'and LEDINDI!='GINR' and LEDINDI!='GINI' and LEDINDI!='VGI' and LEDINDI!='VGR' ORDER BY sdate,id";
} else {

    $sql =  "select * from s_trn where (SDATE >= '" . $_GET["dte_from"] . "') and STK_NO='" . $_GET["stk_no"] . "' and (DEPARTMENT = '" . $_GET["department"] . "' or (department='01' and ledindi='TRN')) ORDER BY SDATE,id";
}



 


$i = 0;
foreach ($conn->query($sql) as $row) {


    $refno = $row["REFNO"];
    $sdate = $row["SDATE"];
    $doc_type = "";
    $fcolor = "";


    if ($row["LEDINDI"] == "INV") {
        $doc_type = "Sales Invoice";
        $fcolor = "#330066";
    }
   

    if ($row["LEDINDI"] == "ARN") {

        $sql1 =  "select lcno from s_purmas where refno='" . $row["REFNO"] . "'";

       $result1 = $conn->query($sql1);
        if ($row1 = $result1->fetch()) {
            $doc_type = "LC No:" . $row1["lcno"];
        } else {
            $doc_type = "LC No:";
        }

        $fcolor = "#ff0000";
    }

    if (($row["LEDINDI"] == "GINI") or ( $row["LEDINDI"] == "GINR")) {
        $doc_type = "Internal Stock Transfers";
        $fcolor = "#003399";
    }

    if ($row["LEDINDI"] == "DGRN") {
        $doc_type = "Defective Return";
        $fcolor = "#66FF00";
    }

    if ($row["LEDINDI"] == "ARR") {
        $doc_type = "Purchase Return";
        $fcolor = "#CC3300";
    }

    if ($row["LEDINDI"] == "GRN") {
        $doc_type = "Sales Return";
        $fcolor = "#9900FF";
    }

    if ($row["LEDINDI"] == "IIN") {
        $doc_type = "Stock Adjestment IN";
        $fcolor = "#669966";
    }

    if ($row["LEDINDI"] == "IOU") {
        $doc_type = "Stock Adjestment OUT";
        $fcolor = "#CC6666";
    }

    if ($row["LEDINDI"] == "ORC") {
        $doc_type = "Order Confirmation";
        $fcolor = "#0099FF";
    }

    if ($row["LEDINDI"] == "TRN") {
        $doc_type = "Inventory";
        $fcolor = "#996600";
        $M_BAL = $row["QTY"];

        if ($_GET["department"] != "All" and $_GET["department"] != "1") {
            $M_BAL = 0;
        }
    }



        //==stock out
    $qty4 = "";
    if (($row["LEDINDI"] == "INV")   or ( $row["LEDINDI"] == "ORC") or ( $row["LEDINDI"] == "GINI") or ( $row["LEDINDI"] == "ARR") or ( $row["LEDINDI"] == "IOU")) {
        $qty4 = $row["QTY"];
        $M_BAL = $M_BAL - $row["QTY"];
        ;
    }

        //===stock in
    $qty3 = "";
    if (($row["LEDINDI"] == "ARN") or ( $row["LEDINDI"] == "GINR") or ( $row["LEDINDI"] == "CRN") or ( $row["LEDINDI"] == "GRN") or ( $row["LEDINDI"] == "IIN")) {
        $qty3 = $row["QTY"];
        $M_BAL = $M_BAL + $row["QTY"];
    }
    $qty5 = $M_BAL;



    if ($row["LEDINDI"] == "INV") {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><a href=\"\" onClick=\"NewWindow('invoice_view.php?refno=" . $refno . "&trn_type=" . $row["LEDINDI"] . "','mywin','900','700','yes','center');return false\" onFocus=\"this.blur()\"><font color=\"" . $fcolor . "\">" . $refno . "</font></a></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
     } else if (($row["LEDINDI"] == "DGRN") or ( $row["LEDINDI"] == "GRN")) {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><a href=\"\" onClick=\"NewWindow('../grn_display.php?grn=" . $refno . "&trn_type=" . $row["LEDINDI"] . "','mywin','900','700','yes','center');return false\" onFocus=\"this.blur()\"><font color=\"" . $fcolor . "\">" . $refno . "</font></a></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
    } else if (($row["LEDINDI"] == "GINR") or ( $row["LEDINDI"] == "GINI")) {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><font color=\"" . $fcolor . "\"><a href=\"\" onClick=\"NewWindow('../gin_display.php?refno=" . $refno . "&trn_type=" . $row["LEDINDI"] . "','mywin','900','700','yes','center');return false\" onFocus=\"this.blur()\">" . $refno . "</a></font></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
    } else {
        $return_val .= "<tr  bgcolor=\"#ffffff\" >
        <td><font color=\"" . $fcolor . "\">" . $refno . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $sdate . "</font></td>
        <td><font color=\"" . $fcolor . "\">" . $doc_type . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty3, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($qty4, 0, ".", ",") . "</font></td>
        <td><font color=\"" . $fcolor . "\" align=right>" . number_format($M_BAL, 0, ".", ",") . "</font></td>
        </tr>   ";
    }
    $i = $i + 1;
}




$GLOBALS[$display_val] = $return_val;
}
 
 
 
?>
