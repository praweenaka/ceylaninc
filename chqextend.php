<!-- Main content -->
<style type="text/css">
 
.style1 {
	font-size: 36px;
	color: #FF0000;
	font-weight: bold;
}
 
</style>
<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">CHEQUE EXTEND</h3>
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
                    <a onclick="NewWindow('chqmodify_search.php', 'mywin', '800', '700', 'yes', 'center');" class="btn btn-info ">
                        <span class="glyphicon glyphicon-search"></span> &nbsp; FIND
                    </a> 
                    
                </div>

                <input type="hidden" id="uniq" class="form-control">

                <div id="msg_box"  class="span12 text-center"  >  </div>

            </div>
            
             <div class="form-group">
                <label class="col-sm-1 control-label" for="txt_usernm">REF NO</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="REF NO" id="txtrefno" disabled   class="form-control">
                </div>
                <div class="col-sm-2"></div>
                <label class="col-sm-1 control-label" for="txt_usernm">DATE</label>
                <div class="col-sm-2">
                    <input type="date" placeholder="DATE" id="txtsdate"   value="<?php echo date('Y-m-d');?>"  class="form-control">
                </div>  
           </div>  
           <div class="form-group">
            <label class="col-sm-1 control-label" for="txt_usernm">CHEQUE NO</label>
            <div class="col-sm-3">
                <input type="text" placeholder="CHEQUE NO" id="txtch_no" disabled  class="form-control">
            </div> 
            <div class="col-sm-1">
                    <a onfocus="this.blur()" onclick="NewWindow('chqmodify_chk_search.php', 'mywin', '800', '700', 'yes', 'center');
                    return false" href="">
                    <input type="button" class="btn btn-primary" value="..." id="searchcust" name="searchcust">
                </a>
            </div>  
        </div> 
        
        
            <div class="form-group">
                <label class="col-sm-1 control-label" for="txt_usernm">CUSTOMER CODE</label>
                <div class="col-sm-1">
                    <input type="text" placeholder="CODE" id="txtcode" disabled   class="form-control">
                </div>
                
                <div class="col-sm-3">
                    <input type="text" placeholder="CUSTOMER NAME" id="txtname" disabled=""  class="form-control">
                </div> 
                 
        </div>
        
        <div class="form-group"> 
            <label class="col-sm-1 control-label" for="txt_usernm">SALES EX</label>
            <div class="col-sm-3">
                <input type="text" placeholder="SALES EX" id="txtsal_ex" disabled   class="form-control">
            </div>
           
        </div>
        
 
       
        <div class="form-group">
            <label class="col-sm-1 control-label" for="txt_usernm">CHEQUE AMOUNT</label>
            <div class="col-sm-3">
                <input type="text" placeholder="CHEQUE AMOUNT" id="txtch_amount" disabled  class="form-control">
            </div>
        </div>
         <div class="form-group">
            <label class="col-sm-1 control-label" for="txt_usernm">RECEIPT DATE</label>
            <div class="col-sm-3">
                <input type="date" placeholder="RECEIPT DATE" id="redate" disabled  class="form-control">
            </div>
            <label class="col-sm-1 control-label" for="txt_usernm">CHEQUE DATE</label>
            <div class="col-sm-3">
                <input type="date" placeholder="DATE" id="date1" disabled  class="form-control">
            </div>
        </div>
         <div class="form-group">
            <label class="col-sm-1 control-label" for="txt_usernm">NEW CHEQUE DATE</label>
            <div class="col-sm-3">
                <input type="date" placeholder="CHEQUE DATE" id="chkdate"   class="form-control">
            </div>
            <label class="col-sm-1 control-label" for="txt_usernm">1ST DATE</label>
            <div class="col-sm-3">
                <input type="date" placeholder="1ST DATE" id="1date" disabled  class="form-control">
            </div>
        </div>
         <div class="form-group">
            <label class="col-sm-1 control-label" for="txt_usernm">RECEIPT TYPE</label>
            <div class="col-sm-3">
                <input type="text" placeholder="RECEIPT TYPE" id="retype" disabled  class="form-control">
            </div>
            <label class="col-sm-1 control-label" for="txt_usernm">2ND DATE</label>
            <div class="col-sm-3">
                <input type="date" placeholder="2ND DATE" id="2date" disabled  class="form-control">
            </div>
        </div>
         
         <div class="form-group">  </div>
    </div>

</form>
</div>

</section>

<script src="js/chqmodify.js"></script>
<script>new_inv();</script>