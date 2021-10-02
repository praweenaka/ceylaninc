<?php
include './connection_sql.php';
session_start();
?>

<!-- Main content -->

<section class="content">



    <div class="box box-primary">

        <div class="box-header with-border">

            <h3 class="box-title">Change Password</h3>
            <h4 style="float: right;height: 3px;"><b id="time"></b></h4>
        </div>

        <form  name= "form1"  role="form" class="form-horizontal">

            <div class="box-body">



                <div class="form-group">
                    <a onclick="location.reload();" class="btn btn-default">
                        <span class="fa fa-user-plus"></span> &nbsp; New
                    </a>
                    <a onclick="save();" class="btn btn-success  ">
                        <span class="fa fa-save"></span> &nbsp; Save
                    </a>

                </div>

                <div id="msg_box"  class="span12 text-center"  >
                </div>
                <input type="hidden"  id="tmpno" >

                <div class="form-group">
                    <label class="col-sm-2 control-label">UserName</label>
                    <div class="col-sm-2">
                        <select id="usn"  class="form-control input-sm" >
                        
                        <?php
                            if($_SESSION['CURRENT_USER']=="admin"){
                                 $sql="select * from user_mast  ";
                            }else{
                                 $sql="select * from user_mast where user_name='".$_SESSION['CURRENT_USER']."'  ";
                            }
                        
                           
                            foreach ($conn->query($sql) as $row) {
                                echo "<option value='".$row["user_name"]."'>".$row["user_name"]."  </option>";
                            }
                        
                        
                        ?>
                    </select>
                       

                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">Password</label>

                    <div class="col-sm-2">

                        <input type="text" placeholder="Password" id="psw" value="" class="form-control input-sm">

                    </div>

                </div>

            </div>

            <div id="itemdetails"></div>
</div>
        </form>

    </div>

</section>

<script src="js/change_pass.js">

</script>





