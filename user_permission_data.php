<?php

session_start();

////////////////////////////////////////////// Database Connector /////////////////////////////////////////////////////////////
require_once ("connection_sql.php");



////////////////////////////////////////////// Write XML ////////////////////////////////////////////////////////////////////
header('Content-Type: text/xml');



/////////////////////////////////////// GetValue //////////////////////////////////////////////////////////////////////////
///////////////////////////////////// Registration /////////////////////////////////////////////////////////////////////////
if (isset($_POST["Command"])) {
    if ($_POST["Command"] == "select_permission") {
        header('Content-Type: text/xml');
        echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";



        $ResponseXML = "";


        $ResponseXML .= " <salesdetails>";

        	$ResponseXML .= "<balance_table><![CDATA[<table class=\"table table-bordered\" >";
        

        $i = 1;
        $ResponseXML .= " <tr>
        <th style=\"width: 100px;text-align:center;\"  class=\"success\" value=\"Form Name\">NAME</th>
    	<th style=\"width: 100px;text-align:center;\"  class=\"success\" value=\"Category\">DETAILS</th>
    	<th style=\"width: 100px;text-align:center;\"  class=\"success\" value=\"View\">VIEW</th>
    	<th style=\"width: 100px;text-align:center;\"  class=\"success\" value=\"Feed\">SAVE</th>
    	<th style=\"width: 100px;text-align:center;\"  class=\"success\" value=\"Delete\">CANCEL</th>
    	<th style=\"width: 100px;text-align:center;\"  class=\"success\" value=\"SP Permission\" >SP PERMISSTION</th>
    	
       

        </tr>";

        $sql1 = "Select * from doc order by docid";
        foreach ($conn->query($sql1) as $row1) {
            $chkview = "chkview" . $i;
            $chkfeed = "chkfeed" . $i;
            $chkmod = "chkmod" . $i;
            $chkprice = "chkprice" . $i;

            if ($_POST["sam_user"] == "olduser") {
                $sql = "Select * from userpermission   where username='" . trim($_POST["user_name"]) . "' and docid=" . $row1["docid"] . "";
            } else {
                $sql = "Select * from userpermission   where username='" . trim($_POST["sam_user"]) . "' and docid=" . $row1["docid"] . "";
            }
             
            $result = $conn->query($sql);
            if ($row = $result->fetch()) {
                $ResponseXML .= "	<tr>
                <td>" . $row1["docid"] . ". " . $row1["docname"] . "</td>
                <td>" . $row1["grp"] . "</td>";
                if ($row["doc_view"] == 1) {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\"  name=\"" . $chkview . "\" id=\"" . $chkview . "\" checked=\"checked\" /></td>";
                } else {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\"  name=\"" . $chkview . "\" id=\"" . $chkview . "\" /></td>";
                }

                if ($row["doc_feed"] == 1) {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkfeed . "\" id=\"" . $chkfeed . "\" checked=\"checked\"/></td>";
                } else {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkfeed . "\" id=\"" . $chkfeed . "\" /></td>";
                }

                if ($row["doc_mod"] == 1) {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkmod . "\" id=\"" . $chkmod . "\"checked=\"checked\" /></td>";
                } else {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkmod . "\" id=\"" . $chkmod . "\" /></td>";
                }
                if ($row["doc_sp"] == 1) {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkprice . "\" id=\"" . $chkprice . "\" checked=\"checked\"/></td>";
                } else {
                    $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkprice . "\" id=\"" . $chkprice . "\" /></td>";
                }



                $ResponseXML .= "</tr>";
            } else {
                $ResponseXML .= "	<tr>
                <td>" . $row1["docid"] . ". " . $row1["docname"] . "</td>
                <td>" . $row1["grp"] . "</td>";

                $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" name=\"" . $chkview . "\" id=\"" . $chkview . "\" /></td>";
                $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkfeed . "\" id=\"" . $chkfeed . "\" /></td>";
                $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkmod . "\" id=\"" . $chkmod . "\" /></td>";
                $ResponseXML .= "<td align=\"center\"><input type=\"checkbox\" class=\"\" name=\"" . $chkprice . "\" id=\"" . $chkprice . "\" /></td>";

                $ResponseXML .= "</tr>";
            }
            $i = $i + 1;
        }

        $ResponseXML .= "   </table>]]></balance_table>";
        $ResponseXML .= "<mcount><![CDATA[" . $i . "]]></mcount>";

        $ResponseXML .= " </salesdetails>";
        echo $ResponseXML;
    }
}

if (isset($_POST["Command"])) {
    if ($_POST["Command"] == "save_inv") {
        $pass = "";

        $sql1 = "select * from user_mast where user_name='" . $_POST["user_name"] . "'";
        $result1 = $conn->query($sql1);
        if ($row1 = $result1->fetch()) {
            $pass = $row1["user_pass"];
            $admin = $row1["user_level"];
            $dev = $row1["dev"];
        }

        $sql1 = "delete from userpermission where username='" . $_POST["user_name"] . "'";
        $result1 = $conn->query($sql1); 


        $i = 1;
        $sql1 = "Select * from doc order by docid";
        foreach ($conn->query($sql1) as $row1) {

            $chkview = "chkview" . $i;
            $chkfeed = "chkfeed" . $i;
            $chkmod = "chkmod" . $i;
            $chkprice = "chkprice" . $i;


            if ($_POST[$chkview] == "true") {
                $view = 1;
            } else {
                $view = 0;
            }

            if ($_POST[$chkfeed] == "true") {
                $feed = 1;
            } else {
                $feed = 0;
            }

            if ($_POST[$chkmod] == "true") {
                $mod = 1;
            } else {
                $mod = 0;
            }

            if ($_POST[$chkprice] == "true") {
                $price = 1;
            } else {
                $price = 0;
            }

            

            $sql = "insert into userpermission(username, userpass, grp, docid, doc_view, doc_feed, doc_mod, doc_sp, admin, dev) values  ('" . $_POST["user_name"] . "', '" . $pass . "', '" . $row1["grp"] . "', " . $row1["docid"] . ", " . $view . ", " . $feed . ", " . $mod . ", " . $price . ", " . $admin . ", " . $dev . ")";

            $result = $conn->query($sql); 


            $i = $i + 1;
        }
        echo "Saved";
    }
}
?>