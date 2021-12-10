<!-- Main content -->
<section class="content">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Setting</h3>
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
                 
                  <div id="itemdetails" class="col-md-10"></div>
            </div>

          </div>
        </form>
    </div>

</section>

<script src="js/setting.js"></script>
<script>newent();</script>