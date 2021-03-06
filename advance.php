<!-- Main content -->
<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">CREATE ADVANCE PAYMENT</h3>
            <h4 style="float: right;height: 3px;"><b id="time"></b></h4>
        </div>
        <form role="form" class="form-horizontal">
            <div class="box-body">
                <div class="form-group">
                    <a onclick="new_inv();" class="btn btn-default">
                        <span class="fa fa-user-plus"></span> &nbsp; New
                    </a>
                    <a onclick="save_inv();" class="btn btn-success">
                        <span class="fa fa-save"></span> &nbsp; Save
                    </a> 
                    <a onclick="print_inv();" class="btn btn-default ">
                        <span class="fa fa-print"></span> &nbsp; Print
                    </a>
                    <a onclick="cancel_inv();" class="btn btn-danger">
                        <span class="fa fa-trash"></span> &nbsp; Cancel
                    </a>
                    <a onclick="NewWindow('advance_search.php', 'mywin', '800', '700', 'yes', 'center');" class="btn btn-info ">
                        <span class="glyphicon glyphicon-search"></span> &nbsp; FIND
                    </a> 
                    
                </div>

                <input type="hidden" id="uniq" class="form-control">

                <div id="msg_box"  class="span12 text-center"  >  </div>

            </div>

            <div class="form-group">
                <label class="col-sm-1 control-label" for="txt_usernm">RECEIPT NO</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="RECEIPT NO" id="invno" disabled class="form-control">
                </div>

                <label class="col-sm-1 control-label" for="txt_usernm">DEPARTMENT</label>
                <div class="col-sm-2">
              <select name="department" id="department"    class="text_purchase3 col-sm-9 form-control" > 
                <?php
                require_once("./connection_sql.php");

                $sql = "Select * from s_stomas order by code";
                foreach ($conn->query($sql) as $row) {
                    echo "<option value=\"" . $row["CODE"] . "\">" . $row["DESCRIPTION"] . "</option>";
                }
                ?>
            </select>
            </div>
                <div class="col-sm-2"></div>
                <label class="col-sm-1 control-label" for="txt_usernm">DATE</label>
                <div class="col-sm-2">
                    <input type="date" placeholder="DATE" id="sdate" value="<?php echo date('Y-m-d')?>"  class="form-control  ">
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-1 control-label" for="txt_usernm">CUSTOMER CODE</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="CUSTOMER CODE" id="cuscode" disabled   class="form-control">
                </div>
                <label class="col-sm-1 control-label" for="txt_usernm">CUSTOMER NAME</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="NAME" id="cusname" disabled=""  class="form-control">
                </div> 
                <div class="col-sm-1">
                    <a onfocus="this.blur()" onclick="NewWindow('advance_cus_search.php', 'mywin', '800', '700', 'yes', 'center');
                    return false" href="">
                    <input type="button" class="btn btn-danger" value="..." id="searchcust" name="searchcust">
                </a>
            </div>  
         
                
        </div>

        <div class="form-group"> 
          
               
            <label class="col-sm-1 control-label" for="txt_usernm">PAYMENT TYPE</label>
            <div class="col-sm-2">
              <select name="paytype" id="paytype"   onclick="paytypehide();" class="text_purchase3 col-sm-9 form-control" > 
            <option value="CASH">CASH</option>
            <option value="CHEQUE">CHEQUE</option>
        </select> 
        </div>        
           
          
       

</div>



<div class="form-group" id="chpayarea" >
    <label class="col-sm-1 control-label" for="txt_usernm">CHEQUE NO</label>
    <div class="col-sm-2">
        <input type="text" placeholder="CHEQUE NO" id="chkno"   class="form-control">
    </div>
    <label class="col-sm-1 control-label" for="txt_usernm">CHEQUE DATE</label>
    <div class="col-sm-2">
        <input type="text" placeholder="CHEQUE DATE" id="chkdate"   class="form-control dt">
    </div>
    <label class="col-sm-1 control-label" for="txt_usernm">BANK</label>
    <div class="col-sm-2">
        <input type="text" placeholder="BANK" id="bank"   class="form-control">
    </div>
     <label class="col-sm-1 control-label" for="txt_usernm">AMOUNT</label>
    <div class="col-sm-2">
        <input type="text" placeholder="AMOUNT" id="chamount"   class="form-control">
    </div>
    
    
</div> 

<div class="form-group" id="cshpayarea">
    <label class="col-sm-1 control-label" for="txt_usernm">AMOUNT</label>
    <div class="col-sm-2">
        <input type="number" placeholder="AMOUNT" id="caamount"   class="form-control">
    </div>
</div>
<div class="form-group">
    <label class="col-sm-1 control-label" for="txt_usernm">REMARK</label>
    <div class="col-sm-3">
        <input type="text" placeholder="REMARK" id="remark"   class="form-control">
    </div>
</div>
 

</form>
</div>

</section>

<script src="js/advance.js"></script>
<script>new_inv();</script>