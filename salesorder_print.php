
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>


    <title>Sales Order Print</title>

    <style>
        .center {
            text-align: center;
        }

        .right {
            text-align: right;
        }

        .tb  {
           width: 750px;
           border: 1px solid black;


           border-collapse: collapse;
       }
       .tb td  {

           border-top: 1px solid black;
           border-left: 1px solid black;


           border-collapse: collapse;
       }
       .tb th  {

           border-top: 1px solid black;
           border-left: 1px solid black;


           border-collapse: collapse;
       }

       .tb1 {

           border: 1px solid #000000;
       }

   </style>

</head>
<?php
require_once ("connection_sql.php");

$sql = "Select * from s_ordmas where REFNO='" . $_GET["invno"] . "'";  
$result = $conn->query($sql);
$row = $result->fetch();

$sql1 = "Select * from vendor where CODE='" . $row["C_CODE"] . "'";
$result1 = $conn->query($sql1);
$row1 = $result1->fetch();


$sql_invpara = "SELECT * from invpara";
$result_invpara = $conn->query($sql_invpara);
$row_invpara = $result_invpara->fetch(); 

$sql2 = "SELECT * FROM s_salrep where REPCODE = '" . $row["SALEX"] . "'";
$result2= $conn->query($sql2); 
$row2 = $result2->fetch();
 
                    
$sql3 = "SELECT * FROM s_stomas where CODE = '" . $row["DEPARTMENT"] . "'";
$result3= $conn->query($sql3); 
$row3 = $result3->fetch();

 

?><body id="imgdiv" style="background-color: #ffffff;">
    <center>
  <form class="form" style="max-width: none; ">  
    <table width="750px;" cellspacing="0" border="0">
         <tr>
            <td  style="width: 100px"> 
                 <img style="margin-left: left; height:100px;" src="images/logo.jpg"/>
            </td>
             <td  style="width: 600px">
                <p class="center"  style="margin: 0px;color: #83c12f;font-size: 25px" ><i><b><?php echo $row_invpara["COMPANY"]; ?></b></i></p>
                <p class="center"  style="margin: 0px;" ><i><b><?php echo $row_invpara["ADD1"].", ".$row_invpara["ADD2"].", "   ?></b></i></p> 
                <p class="center"  style="margin: 0px;" ><i><b>TEL : <?php echo  $row_invpara['TELE'] ; ?> </b></i></p> 
            </td>  
        </tr>
        
     </table>
   <table width="750px;" cellspacing="0" border="0">    
         
       <tr> 
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr> 
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr> 
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr> 
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr> 
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>

            <td>CUSTOMER :<?php echo $row['CUSNAME'] ?></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="right">DATE: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?php echo $row['SDATE'] ?></td>
        </tr>
        <tr>

            <td>DEPARTMENT :<?php echo $row3['DESCRIPTION'] ?></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="right">SALES ORDER NO: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><a id="pdfid" onclick="createPDF();"> <?php echo $row['REFNO']; ?></a></u></td>  
        </tr>
        <tr>

            <td class="left" >SALES EX: &nbsp;&nbsp; <?php echo $row2['Name']; ?></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="right"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
     
      <tr> <?php  
            if($row['CANCELL']=="1"){
                echo "<th class='center' style='color:red;' colspan='5'> <u><a id='imgid' onclick='createJPG();'>CANCELED SALES ORDER </a></u></th>"; 
            }else{
                echo "<th class='center' colspan='5'><u><a id='imgid' onclick='createJPG();'> SALES ORDER </a></u></th>"; 
            }
            ?>
            
        </tr>
        
    </table>

    <table class="tb center" width="750px;" >
        <tr >

            <th width="30px;">No</th> 
            <th width="120px;">Description</th>
            <th width="50px;">Rate</th>
            <th width="50px;">Qty</th>
            <th width="50px;">Sub Total</th> 
        </tr>
        <?php
        $i=1;   
        $qty=0;
        $sql1 = "Select * from s_ordmas_item where REFNO='" . $row['REFNO'] . "'   ";  
        foreach ($conn->query($sql1) as $row1) {
           
            ?>
            <tr style="font-size:16px;">
 

                <td class="center"><?php echo $i ?></td>
                
                
                 
                 <td class="left" ><?php echo $row1['DESCRIPT']; ?> </td>
                 <td class="left" ><?php echo $row1['RATE']; ?> </td>
                <td class="center" ><?php echo number_format($row1['QTY'], 0, ".", ","); ?></td> 
                <td class="right"  ><?php echo number_format($row1['SUBTOT'], 3, ".", ","); ?></td>   
            </tr>
            <?php
            $i=$i+1; 
             $qty=$qty+$row1['QTY'];
        }
        ?>
 
     <tr>
 
            <td colspan="4" class="right" ><b>TOTAL AMOUNT</b></td>
            <td class="right" style="font-size:18px;"><b><?php 
        echo number_format($row['TOTAMOUNT'], 2, ".", ",");

        ?></b></td>
        </tr>
        <tr> 
        <td class="right" colspan="4"><b>TOTAL QTY</b></td>
        <td class="right"><b><?php echo $qty   ;?></b> </td>
    </tr>
     
</table>


</table> 

 
 
<table width="750px;">
    <tr>
        <td> <b><u>Checked By</u></b></td>  
    </tr>
</table>
<div style='height:25px;'></div>
<table width="750px;">
    <tr>
        <td> </td>
        <td>Name:  .......................................     </td>
        <td></td> 
        <td class="center">Signature: .......................................</td>
        <td>&nbsp;&nbsp;&nbsp;</td>
        <td  class="right">&nbsp;&nbsp;&nbsp;&nbsp;Date:.......................................</td>
    </tr>
</table>
<table width="900px;">
    <tr id="ignorePDF"> 
        <td class='center'> ****** THANK YOU COME AGAIN ******</td> 
    </tr>
</table>
 
</form>
<center>
    </body>
</html>

<!--===========pdf download================-->

    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>  
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>  
   
   <!--//  ===================  PDF download=======================-->
   <script>  
   
    (function () {  
        var  
         form = $('.form'),  
         cache_width = form.width(),  
         a4 = [795.28, 841.89]; // for a4 size paper width and height  
  
        $('#pdfid').on('click', function () {  
            $('body').scrollTop(0);  
            createPDF();  
        });  
        // createPDF();  
        //create pdf  
        function createPDF() {  
            getCanvas().then(function (canvas) {  
                var  
                 img = canvas.toDataURL("image/png"),  
                 doc = new jsPDF({  
                     unit: 'px',  
                     format: 'a3'  
                 });  
                doc.addImage(img, 'JPEG', 20, 20);  
                doc.save('SALESORDER.pdf');  
                form.width(cache_width);  
            });  
        }  
  
        // create canvas object  
        function getCanvas() {  
            form.width((a4[0] * 1.33333) - 80).css('max-width', 'none');  
            return html2canvas(form, {  
                imageTimeout: 2000,  
                removeContainer: true  
            });  
        }  
  
    }());  
</script>  
<script>  
//  =================== jpg download================
      createJPG();
   function createJPG() {  
        $(document).ready(function () {
            var element = $("#imgdiv"); // global variable
            var getCanvas; //global variable
            html2canvas(element, {
                onrendered: function (canvas) {
                    getCanvas = canvas;
                }
            });
 
            $("#imgid").on('click', function () {
                var imgageData = getCanvas.toDataURL("image/png");
                //Now browser starts downloading it instead of just showing it
                var newData = imgageData.replace(/^data:image\/png/, "data:application/octet-stream");
                $("#imgid").attr("download", "SALESORDER.png").attr("href", newData);
            });
        });
        
    }

    
  
</script>  




 
