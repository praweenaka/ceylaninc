<!-- Main content -->
<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">VENDOR MASTER</h3>
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
                    <a onclick="cancel_inv();" class="btn btn-danger">
                        <span class="fa fa-trash"></span> &nbsp; Cancel
                    </a>
                    <a onclick="NewWindow('vendor_search.php', 'mywin', '800', '700', 'yes', 'center');" class="btn btn-info ">
                        <span class="glyphicon glyphicon-search"></span> &nbsp; FIND
                    </a>
                </div>

                <input type="hidden" id="uniq" class="form-control">

                <div id="msg_box"  class="span12 text-center"  >  </div>

            </div>

            
            

            <div class="form-group">
                <label class="col-sm-1 control-label" for="cus_address">Code</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="Code" id="code" disabled="" class="form-control input-sm">
                </div>

            </div>
            <div class="form-group">
               

                <label class="col-sm-1 control-label" for="txt_remarks">Name</label>
                <div class="col-sm-3">
                    <input type="text" placeholder="Name" id="name" class="form-control input-sm">
                </div>
                    <label class="col-sm-1 control-label" for="cus_address">TYPE</label>
                <div class="col-sm-3">
                     <select name="cus_type" id="cus_type"    class="text_purchase3 col-sm-9 form-control" > 
                        <option value="CUSTOMER">CUSTOMER</option> 
                        <option value="SUPPLIER">SUPPLIER</option>
                        <option value="BOTH">BOTH</option>
                    </select>
                </div>
            </div>
            <div class="form-group hidden">
                <label class="col-sm-1 control-label" for="cus_address">Shop Name</label>
                <div class="col-sm-3">
                    <input type="text" placeholder="Shop Name" id="shopname" class="form-control input-sm">
                </div> 
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label" for="cus_address">NIC</label>
                <div class="col-sm-3">
                    <input type="text" placeholder="NIC" id="nic" class="form-control input-sm">
                </div>

            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label" for="cus_address">Land</label>
                <div class="col-sm-3">
                    <input type="text" placeholder="Land" id="land" class="form-control input-sm">
                </div>

                <label class="col-sm-1 control-label" for="txt_remarks">Mobile</label>
                <div class="col-sm-3">
                    <input type="text" placeholder="Mobile" id="mobile" class="form-control input-sm">
                </div>

                <div class="col-sm-1">
                    &nbsp;
                </div> 
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label" for="cus_address">Address</label>
                <div class="col-sm-3">
                     <textarea name="address" id="address"  rows="2" class="form-control"></textarea>  
                </div> 
            </div>


        </div>

    </form>
</div>

</section>

<script src="js/vendor.js"></script>
<script>new_inv();</script>