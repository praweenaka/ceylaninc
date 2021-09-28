<?php
session_start();
?> 
 
<section class="content">
	<div class="box box-primary">
		<div class="box-header with-border">
			<h3 class="box-title"><b>Bank Master</b></h3>
			<h4 style="float: right;height: 3px;"><b id="time"></b></h4>

		</div>
		<form name= "form1" role="form" class="form-horizontal">
			<div class="box-body">
				<input type="hidden" id="uniq" class="form-control">
				<input type="hidden" id="item_count" class="form-control">
				<div class="form-group">
					<div class="col-sm-9">
							<a onclick="new_inv();" class="btn btn-default  ">
							<span class="fa fa-user-plus"></span> &nbsp; New
						</a>
						<a onclick="save_inv();" class="btn btn-success  ">
							<span class="fa fa-save"></span> &nbsp; Save
						</a> 
						<a onclick="cancel_inv();" class="btn btn-danger  ">
							<span class="fa fa-trash"></span> &nbsp; Cancel
						</a>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label class="col-md-5" for="txt_usernm">DATE</label>
							<div class="col-md-6">
								<input type="date"   value="<?php echo date('Y-m-d'); ?>"  disabled  id="sdate" class="form-control   input-sm  ">
							</div>
						</div>
					</div>

				</div>
				<div class="form-group"></div>
				<div class="form-group"></div>
				<div id="msg_box"  class="span12 text-center"  ></div>
				
				<table class="table  " style="width:80%">
                  <thead>
                    <tr>
                      <th >Bank Code</th>
                      <th >Branch Code</th>
                      <th >Bank Name</th>  
                      <th >Short Name</th>
                      <th >Active</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th class="col-sm-2"><input type="text" placeholder="Bank Code" id="code" name="code" class="form-control  input-sm " ></th>
                      <th class="col-sm-2"><input type="text" placeholder="Branch Code" id="code1" name="code1" class="form-control  input-sm " ></th>
                      <td class="col-sm-5"><input type="text" placeholder="Bank Name" id="name" name="name" class="form-control  input-sm" ></td>
                      <td class="col-sm-2"><input type="text" placeholder="Short Name" id="name1" name="name1" class="form-control  input-sm" ></td>
                      <td class="col-sm-1"><input type="checkbox" placeholder="Activate" id="act" name="act" class=" input-sm" ></td> 
                    </tr>
                    
                  </tbody>
                </table>
                <table class="table  " style="width:70%">
			  <div id="itemdetails" >
                
                </div>

</table>


		</div>
	</form>
</div>
</section>
<script src="js/bank.js" type="text/javascript"></script>
 
 <script>
     new_inv();
 </script>



