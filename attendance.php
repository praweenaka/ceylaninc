<!-- Main content -->
<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">ATTENDANCE</h3>
             <h4 style="float: right;height: 3px;"><b id="time"></b></h4>
        </div>
        <form role="form" class="form-horizontal">
            <div class="box-body">
                <div class="form-group">
                    <a onclick="newent();" class="btn btn-default">
                        <span class="fa fa-user-plus"></span> &nbsp; New
                    </a>
                    <a onclick="save_inv();" class="btn btn-success">
                        <span class="fa fa-save"></span> &nbsp; Save
                    </a> 
                    
                </div>
                <div id="msg_box"  class="span12 text-center"  >

                </div>
                <input type="hidden" id="item_count" class="form-control">
                 <div class="form-group">
                     <label class="col-sm-2 control-label" for="invdate">Date</label>
                    <div class="col-sm-2">
                        <input type="date" placeholder="Date" id="sdate" value="<?php echo date('Y-m-d'); ?>" class="form-control   input-sm">
                    </div>
                 </div>


           
                  <div id="itemdetails" class="col-md-6"></div>
            </div>

          
        </form>
    </div>

</section>

<script src="js/attendance.js"></script>
<script>newent();</script>