<?php
include './CheckCookie.php';
$cookie_name = "user";
if (isset($_COOKIE[$cookie_name])) {

    $mo = chk_cookie($_COOKIE[$cookie_name]);

    if ($mo == "ok") {
        header('Location: ' . "home.php");
        exit();
    }
}
?> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login Page</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="css/ionicons/css/ionicons.min.css">
        <script src="js/user.js"></script>
        <link rel="icon" type="image/png" sizes="16x16" href="images/icon.png">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <style>
            
            body{
                background-color: #ded5d5;
            }
            #login-form{
                background-color: #211818;
                border: 0px;
              /*  height: 400px;*/
            }
            #topic{
                color: white;
            }
            #lab{
                color: white;
            }
            #txterror{
                color: white;
            }
            .button {
              background-color: #4CAF50; /* Green */
              border: none;
              color: white;
              padding: 7px 16px;
              text-align: center;
              text-decoration: none;
              display: inline-block;
              font-size: 14px;
              margin: 4px 2px;
              cursor: pointer;
              border-radius: 4px;
            }

            
            .button3 {background-color: #f44336;} /* Red */ 

            .letter-red{
                color: red;
            }
        </style>

    </head>
    <body>
    <div class="container" >
            <br><br>
            
            <div id="login-form" class="row" style="padding: 0px;">
                <!-- <br><br><br><br><br> -->
                <div style="background-color: #0087ff;width: 100%;"></div>
                
             

                <div class="col-md-4" style="padding: 20px;">
                    <br><br>
                    <div>
                        <!--<img style="align-content: center" class="img-responsive" src="img/Mas_Holdings_Logo.png">-->
                        <div class="form-group" >
                            <img src="images/logo.jpg"   class="img-fluid" style="width:100%; ">
                            <?php 
                include './connection_sql.php';
                $sql = "SELECT COMPANY FROM invpara";
                $result = $conn->query($sql);
                $row = $result->fetch();
                ?>
                <div class="form-group" >
                    <h1 id="topic"><center><?php echo $row['COMPANY']?></center></h1>
                </div>
                            <!-- </span><span style="color: red;">-->
                            <!-- </span></center></h1>-->
                        </div>
                    </div>
                    <!--<h3><center>MAS HOLDINGS</center></h3>-->
                    <div class="form-group"></div>

                    <strong id="lab">User Name:</strong>
                    <input class="form-control"  name="UserName" type="text" id="txtUserName" onkeypress="keyset('txtPassword', event)"  />
                       
                    <strong id="lab">Password:</strong>
                    <input class="form-control" name="Password" type="password" id="txtPassword" onkeypress="keyset('lbtn', event)"/>
                    <div id="txterror" class="login_error">
                    </div>
                    <br>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;
                    <button class="button button3" style="background-color: #f44336;" id="lbtn"  name="lbtn" onclick="IsValiedData();"><b>&nbsp;&nbsp;&nbsp;&nbsp;LOGIN &nbsp;&nbsp; &nbsp;&nbsp;</b></button>

                </div>
                   <div class="col-md-8" style="text-align: center;color: white;font-family: Helvetica, Geneva, sans-serif;font-size: 13px;letter-spacing: 0.4px;word-spacing: 6px;color: white;text-decoration: none;font-style: normal;font-variant: normal;text-transform: none;">
                    <div style="margin-top: 60px;">
                       <img src="images/background.jpg"   class="img-fluid" style="width:100%;height:450px;" >
                   </div>
                    <div style="margin-top: 60px;margin:  20px;" >
                   <p><b>Capital Web Solution<span class="letter-red"> - </span>077-9515540</b></p>
                   </div>
                </div>
               
            </div>
        </div>
    </body>    
</html>     


<script>
    var elem = document.getElementById("txtPassword");
    elem.onkeyup = function (e) {
        if (e.keyCode == 13) {
            IsValiedData();
        }
    }


</script>


<script src="js/jquery-2.1.0.js"></script>
<script src="js/bootstrap.min.js"></script>