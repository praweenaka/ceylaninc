<?php
include './connection_sql.php';
?>

<!-- Main content -->
<section class="content">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Purchase Order</h3>
              <h4 style="float: right;height: 3px;"><b id="time"></b></h4>
        </div>
        <form name= "form1" role="form" class="form-horizontal">
            <div class="box-body">
                <input type="hidden" id="tmpno" class="form-control">
                <input type="hidden" id="item_count" class="form-control">

                <div class="form-group">
                    <a onclick="sess_chk('new', 'crn');" class="btn btn-default ">
                        <span class="fa fa-user-plus"></span> &nbsp; New
                    </a>
                    <a onclick="sess_chk('save', 'crn');" class="btn btn-success ">
                        <span class="fa fa-save"></span> &nbsp; Save
                    </a>

                     <a onclick="print_inv();" class="btn btn-default ">
                        <span class="fa fa-print"></span> &nbsp; Print
                    </a> 

                    <a onclick="cancel_inv();" class="btn btn-danger ">
                        <span class="fa fa-trash-o"></span> &nbsp; Cancel
                    </a>

                </div>
                <input type="hidden"   name="mcount" id="mcount"  >
                <div id="msg_box"  class="span12 text-center"  ></div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="invno">Po No</label>
                    <div class="col-sm-2">
                        <input type="text" placeholder="PO No" disabled id="txt_entno" class="form-control  input-sm">
                    </div>
                    <div class="col-sm-1">
                        <a onfocus="this.blur()" onclick="NewWindow('po_search.php', 'mywin', '800', '700', 'yes', 'center');
                        return false" href="">
                        <input type="button" class="btn btn-primary" value="..." id="searchcust" name="searchcust">
                    </a>
                </div>
                <div class="col-sm-2">

                </div>

                <label class="col-sm-2 control-label" for="invdate">Date</label>
                <div class="col-sm-2">
                    <input type="date" placeholder="Date" id="invdate" value="<?php echo date('Y-m-d'); ?>" class="form-control   input-sm">
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-1 control-label" for="c_code">Supplier</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="Code" disabled="" name="c_code" id="c_code" class="form-control  input-sm">
                </div>
                <div class="col-sm-3">
                    <input type="text" placeholder="Name" disabled="" name = "c_name" id="c_name" class="form-control input-sm">
                </div>
                <div class="col-sm-1">


                    <a onfocus="this.blur()" onclick="NewWindow('po_cus_search.php', 'mywin', '800', '700', 'yes', 'center');
                    return false" href="">
                    <input type="button" class="btn btn-primary" value="..." id="searchcust" name="searchcust">
                </a> 
            </div>



            <label class="col-sm-1 control-label" for="c_code">Sales No</label>
            <div class="col-sm-2">
                <input type="text" placeholder="Sales Order No" disabled  name="lc_no" id="lc_no" class="form-control  input-sm">
            </div>  
            <div class="col-sm-1">


                    <a onfocus="this.blur()" onclick="NewWindow('po_so_search.php', 'mywin', '800', '700', 'yes', 'center');
                    return false" href="">
                    <input type="button" class="btn btn-primary" value="..." id="searchcust" name="searchcust">
                </a> 
            </div>


        </div>

        <div class="form-group">
            <label class="col-sm-1 control-label" for="cus_address">Department</label>
            <div class="col-sm-2">
                <select id="department" class="form-control input-sm" >

                    <?php
                    $sql = "select * from s_stomas WHERE cancel='0' and act='1' order by CODE";
                    foreach ($conn->query($sql) as $row) {
                        echo "<option value='" . $row["CODE"] . "'>" . $row["DESCRIPTION"] . "</option>";
                    }
                    ?>
                </select>
            </div>
            <label class="col-sm-1 control-label" for="cus_address">Sales Ex. </label>
                <div class="col-sm-2">
                    <select id="rep" class="form-control input-sm" disabled >

                        <?php
                        $sql = "select * from s_salrep WHERE cancel='0' and act='1' order by REPCODE "; 
                    foreach ($conn->query($sql) as $row) {
                     echo "<option value='" . $row["REPCODE"] . "'>" . $row["REPCODE"] . " " . $row["Name"] . "</option>";
                    }
                        ?>
                    </select>
                </div> 
                 <label class="col-sm-2 control-label" for="cus_address">Purchase Type </label>
                <div class="col-sm-2">
                    <select id="ptype" class="form-control input-sm" >
                        <option value="SALES ORDER">SALES ORDER</option> 
                        <option value="MACHINERY">MACHINERY</option> 
                    </select>
                </div> 
        </div>

        

        <div class="form-group">
            <label class="col-sm-1 control-label" for="txt_remarks"> Remark</label>
            <div class="col-sm-5">
                <input type="text" placeholder="Remarks" id="txt_remarks" class="form-control input-sm">
            </div>
        </div>
    </div>

    <table class="table table-bordered">
        <tr class='info'>
            <th style="width: 120px;">Item</th>
            <th style="width: 340px;">Description</th>
            <th style="width: 10px;"></th>
            <th style="width: 120px;">Cost</th>
            <th style="width: 120px;" class="hidden">Selling</th>
            <th style="width: 120px;">Qty</th>
            <th style="width: 120px;">Sub Total</th>

            <th style="width: 100px;">Add/Remove</th>
        </tr>

        <tr>
            <td>
                <input type="text" placeholder="Item" disabled id="itemCode" class="form-control input-sm">
            </td>
            <td>
                <input type="text" placeholder="Description" disabled id="itemDesc" class="form-control input-sm">
            </td>
            <td>
                <a href="" onclick="NewWindow('po_item_search.php', 'mywin', '800', '700', 'yes', 'center');
                return false" onfocus="this.blur()">
                <input type="button" name="searchcusti" id="searchcusti" value="..." class="btn btn-primary ">
            </a>
        </td>
       
        <td>
            <input type="number" placeholder="Cost" id="itemPrice" onblur="subtotup();" class="form-control input-sm">
        </td>
        <td  class="hidden">
            <input type="number" placeholder="Selling" id="selling" onblur="subtotup();" class="form-control input-sm">
        </td>
         <td>
            <input type="number" placeholder="Qty" id="qty" onblur="subtotup();" class="form-control input-sm">
        </td>
        <td>
            <input type="number" placeholder="Sub Total" disabled="" id="subtot" class="form-control input-sm">
        </td>

        <td><a onclick="add_tmp();" class="btn btn-danger "> ADD </a></td>
    </tr>

</table>



<div id="itemdetails" >

</div>

<div class="form-group"></div>
<div class="form-group">
    <div class="col-sm-8"></div>
    <label class="col-sm-1 control-label" for="txt_remarks">Total</label>
    <div class="col-sm-2">
        <input type="text" placeholder="Total" disabled id="total_value" class="form-control input-sm">
    </div>
</div>
<div class="form-group"></div>
</div>
</form>
</div>

</section>
<script src="js/po.js"></script>
<script>
    new_inv();
</script>
<?php
include 'login.php';
include './cancell.php';
?>
