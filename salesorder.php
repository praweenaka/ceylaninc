<?php
include './connection_sql.php';
?>

<!-- Main content -->
<section class="content">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">SALES ORDER</h3>
              <h4 style="float: right;height: 3px;"><b id="time"></b></h4>
        </div>
        <form name= "form1" role="form" class="form-horizontal">
            <div class="box-body">
                <input type="hidden" id="uniq" class="form-control">
                 <input type="hidden" id="mcount" class="form-control">
                <input type="hidden" id="item_count" class="form-control">

                <div class="form-group">
                     <a onclick="new_inv();" class="btn btn-default ">
                        <span class="fa fa-user-plus"></span> &nbsp; New
                    </a>
                    <a onclick="save_inv();" class="btn btn-success">
                        <span class="fa fa-save"></span> &nbsp; Save
                    </a>

                    <a onclick="print_inv();" class="btn btn-default ">
                        <span class="fa fa-print"></span> &nbsp; Print
                    </a> 

                    <a onclick="cancel_inv();" class="btn btn-danger ">
                        <span class="fa fa-trash-o"></span> &nbsp; Cancel
                    </a>

                </div>
                <div id="msg_box"  class="span12 text-center"  ></div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="invno">Sales  No</label>
                    <div class="col-sm-2">
                        <input type="text" placeholder="SALES ORDER NO" disabled id="invno" class="form-control  input-sm">
                    </div>
                    <div class="col-sm-1">
                        <a onfocus="this.blur()" onclick="NewWindow('salesorder_search.php', 'mywin', '800', '700', 'yes', 'center');
                        return false" href="">
                        <input type="button" class="btn btn-primary" value="..." id="searchcust" name="searchcust">
                    </a>
                </div>
                <div class="col-sm-2">

                </div>

                <label class="col-sm-2 control-label" for="invdate">Date</label>
                <div class="col-sm-2">
                    <input type="date" placeholder="Date" id="sdate" value="<?php echo date('Y-m-d'); ?>" class="form-control   input-sm">
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-1 control-label" for="c_code">Customer</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="Code" disabled="" name="c_code" id="c_code" class="form-control  input-sm">
                </div>
                <div class="col-sm-3">
                    <input type="text" placeholder="Name" disabled="" name = "c_name" id="c_name" class="form-control input-sm">
                </div>
                <div class="col-sm-1"> 
                    <a onfocus="this.blur()" onclick="NewWindow('salesorder_cus_search.php', 'mywin', '800', '700', 'yes', 'center');
                    return false" href="">
                    <input type="button" class="btn btn-primary" value="..." id="searchcust" name="searchcust">
                     </a> 
                  </div>
                  
                   <label class="col-sm-1 control-label" for="c_code">Quotation No</label>
                <div class="col-sm-2">
                    <input type="text" placeholder="Quotation No" disabled="" name="quotation" id="quotation" class="form-control  input-sm">
                </div>
   <div class="col-sm-1"> 
                    <a onfocus="this.blur()" onclick="NewWindow('salesorder_quo_search.php', 'mywin', '800', '700', 'yes', 'center');
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
                    $sql = "select * from s_stomas order by CODE";
                    foreach ($conn->query($sql) as $row) {
                        echo "<option value='" . $row["CODE"] . "'>" . $row["DESCRIPTION"] . "</option>";
                    }
                    ?>
                </select>
            </div> 
             <label class="col-sm-1 control-label" for="cus_address">Sales Ex. </label>
                <div class="col-sm-2">
                    <select id="rep" class="form-control input-sm" >

                        <?php
                        $sql = "select * from s_salrep WHERE cancel='0' order by REPCODE "; 
                    foreach ($conn->query($sql) as $row) {
                     echo "<option value='" . $row["REPCODE"] . "'>" . $row["REPCODE"] . " " . $row["Name"] . "</option>";
                    }
                        ?>
                    </select>
                </div> 
        </div>

        

        <div class="form-group">
            <label class="col-sm-1 control-label" for="txt_remarks"> Remark</label>
            <div class="col-sm-5">
                <textarea name="txt_remarks" id="txt_remarks" cols="60" rows="3" class="form-control"></textarea>
            </div>
        </div>
    </div>

    <table class="table table-bordered">
        <tr class='info'>
            <th style="width: 120px;">Item Code</th>
            <th style="width: 340px;">Description</th>
            <!--<th style="width: 10px;"></th> -->
            <th style="width: 120px;">Rate</th>
            <th style="width: 120px;">Qty</th>
            <th style="width: 120px;">Sub Total</th>

            <!--<th style="width: 100px;">Add/Remove</th>-->
        </tr>

    <!--    <tr>-->
    <!--        <td>-->
    <!--            <input type="text" placeholder="Item" disabled id="itemCode" class="form-control input-sm">-->
    <!--        </td>-->
    <!--        <td>-->
    <!--            <input type="text" placeholder="Description" disabled id="itemDesc" class="form-control input-sm">-->
    <!--        </td>-->
    <!--        <td>-->
    <!--            <a href="" onclick="NewWindow('salesorder_itemsearch.php', 'mywin', '800', '700', 'yes', 'center');-->
    <!--            return false" onfocus="this.blur()">-->
    <!--            <input type="button" name="searchcusti" id="searchcusti" value="..." class="btn btn-primary ">-->
    <!--        </a>-->
    <!--    </td>-->
        
    <!--    <td>-->
    <!--        <input type="number" placeholder="Rate" id="selling" onblur="subtotup();" class="form-control input-sm">-->
    <!--    </td>-->
    <!--     <td>-->
    <!--        <input type="number" placeholder="Qty" id="qty" onblur="subtotup();" class="form-control input-sm">-->
    <!--    </td>-->
    <!--    <td>-->
    <!--        <input type="number" placeholder="Sub Total" disabled="" id="subtot" class="form-control input-sm">-->
    <!--    </td>-->

    <!--    <td><a onclick="add_tmp();" class="btn btn-danger " style="visibility:hidden"> ADD </a></td>-->
    <!--</tr>-->

</table>



<div id="itemdetails" >

</div>

<div class="form-group"></div>
<div class="form-group">
    <div class="col-sm-9"></div>
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
<script src="js/salesorder.js"></script>
<script>
    new_inv();
</script>
<?php
include 'login.php';
include './cancell.php';
?>
