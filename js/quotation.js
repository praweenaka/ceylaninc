function GetXmlHttpObject()
{
    var xmlHttp = null;
    try
    {
        // Firefox, Opera 8.0+, Safari
        xmlHttp = new XMLHttpRequest();
    } catch (e)
    {
        // Internet Explorer
        try
        {
            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e)
        {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
    }
    return xmlHttp;
}


function new_inv() {

    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null) {
        alert("Browser does not support HTTP Request");
        return;
    }
      document.getElementById('invno').value="";
       document.getElementById('c_code').value="";
        document.getElementById('c_name').value="";
    document.getElementById('rep').value="01"; 
    document.getElementById('department').value="01";
    document.getElementById('itemCode').value="";
    document.getElementById('itemDesc').value="";
    document.getElementById('qty').value=""; 
     document.getElementById('selling').value="";  
     document.getElementById('txt_remarks').value=""; 
    document.getElementById('subtot').value=""; 
    document.getElementById('total_value').value=""; 
    document.getElementById('msg_box').innerHTML = "";
    document.getElementById('itemdetails').innerHTML = "";
    
     var url = 'quotation_data.php';
    var params = 'Command=' + "getdt";  
    xmlHttp.open("POST", url, true);

    xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlHttp.setRequestHeader("Content-length", params.length);
    xmlHttp.setRequestHeader("Connection", "close");

    xmlHttp.onreadystatechange = assign_dt;
    xmlHttp.send(params);
}


function assign_dt() {
    var XMLAddress1;
    // if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {

        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("id");
        var idno = XMLAddress1[0].childNodes[0].nodeValue;
        if (idno.length === 1) {
            idno = "Q/0000" + idno;
        } else if (idno.length === 2) {
            idno = "Q/000" + idno;
        } else if (idno.length === 3) {
            idno = "Q/00" + idno;
        } else if (idno.length === 4) {
            idno = "Q/0" + idno;
        } else if (idno.length === 5) {
            idno = "Q/" + idno;
        }

        document.getElementById("invno").value = idno;

        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("uniq");
        document.getElementById("uniq").value = XMLAddress1[0].childNodes[0].nodeValue;
        
        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("dt");
        document.getElementById("sdate").value = XMLAddress1[0].childNodes[0].nodeValue;
        
       
    // }
}
 


function custno1(code)
{ 
    //alert(code);
    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null)
    {
        alert("Browser does not support HTTP Request");
        return;
    }
    var url = "quotation_data.php";
    url = url + "?Command=" + "custno1";
    url = url + "&custno=" + code;

    xmlHttp.onreadystatechange = passcusresult_quot1;
    xmlHttp.open("GET", url, true);
    xmlHttp.send(null);

}


function passcusresult_quot1()
{
    var XMLAddress1;

    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete")
    {

        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("id");
        var obj = JSON.parse(XMLAddress1[0].childNodes[0].nodeValue);
   
        opener.document.getElementById('itemCode').value = obj.STK_NO;   
        opener.document.getElementById('itemDesc').value = obj.DESCRIPT; 
        opener.document.getElementById('selling').value = obj.SELLING; 
          opener.document.getElementById('qty').focus(); 


        self.close();
    }

}

function custno(code)
{ 
    //alert(code);
    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null)
    {
        alert("Browser does not support HTTP Request");
        return;
    }
    var url = "quotation_data.php";
    url = url + "?Command=" + "pass_rec";
    url = url + "&custno=" + code;

    xmlHttp.onreadystatechange = pass_rec;
    xmlHttp.open("GET", url, true);
    xmlHttp.send(null);

}


function pass_rec()
{
    var XMLAddress1;

    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete")
    {

        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("id");
        var obj = JSON.parse(XMLAddress1[0].childNodes[0].nodeValue);
   
        opener.document.getElementById('invno').value = obj.REFNO;   
        opener.document.getElementById('sdate').value = obj.SDATE; 
        opener.document.getElementById('c_code').value = obj.CUSCODE; 
        opener.document.getElementById('c_name').value = obj.CUSNAME;  
        opener.document.getElementById('department').value = obj.DEPARTMENT; 
        opener.document.getElementById('rep').value = obj.SALEX; 
        opener.document.getElementById('txt_remarks').value = obj.REMARK; 
        opener.document.getElementById('total_value').value = obj.TOTAMOUNT;  
        
         if (obj.CANCELL != "0") {
            window.opener.document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>CANCELED</span></div>";
        }else{
            window.opener.document.getElementById('msg_box').innerHTML = "";
        }

        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("sales_table");
        opener.document.getElementById('itemdetails').innerHTML = XMLAddress1[0].childNodes[0].nodeValue;
        self.close();
    }

}

function custno2(code)
{
    //alert(code);
    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null)
    {
        alert("Browser does not support HTTP Request");
        return;
    }
    var url = 'quotation_data.php';
    var params = 'Command=' + 'pass_quot2';
    params = params + '&custno=' + code;
    

    xmlHttp.open("POST", url, true);
    xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlHttp.setRequestHeader("Content-length", params.length);
    xmlHttp.setRequestHeader("Connection", "close");

    xmlHttp.onreadystatechange = passcusresult_quot2;

    xmlHttp.send(params);

}


function passcusresult_quot2()
{
    var XMLAddress1;

    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete")
    {

        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("id");
        var obj = JSON.parse(XMLAddress1[0].childNodes[0].nodeValue);
        
        opener.document.getElementById('c_code').value = obj.CODE;   
        opener.document.getElementById('c_name').value = obj.NAME;  
           
        self.close();
    }

}

function print_inv(cdata) {

    var url = "quotation_print.php";
    url = url + "?invno=" + document.getElementById('invno').value;
    url = url + "&action=" + cdata;

    window.open(url, '_blank');


}

function add_tmp() {


    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null) {
        alert("Browser does not support HTTP Request");
        return;
    }
 


    document.getElementById('msg_box').innerHTML = "";

    if (document.getElementById('invno').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>New Not Selected</span></div>";
        return false;
    }

    if (document.getElementById('itemCode').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Item Not Selected</span></div>";
        return false;
    }
    if (document.getElementById('c_code').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Customer Not Selected</span></div>";
        return false;
    }
    if (document.getElementById('rep').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Sales Ex Not Selected</span></div>";
        return false;
    }
    if (document.getElementById('department').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Department Not Selected</span></div>";
        return false;
    }
    
     if (document.getElementById('selling').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Rate Not Entered</span></div>";
        return false;
    }

        var url = 'quotation_data.php';
        var params = 'Command=' + 'setitem';
       params = params + "&Command1=add_tmp";  
       params = params + '&invno=' + document.getElementById('invno').value;
       params = params + '&uniq=' + document.getElementById('uniq').value;
       params = params + '&sdate=' + document.getElementById('sdate').value;
       params = params + '&c_code=' + document.getElementById('c_code').value;
       params = params + '&c_name=' + document.getElementById('c_name').value;
       
       params = params + '&rep=' + document.getElementById('rep').value;
       params = params + '&department=' + document.getElementById('department').value;
       params = params + '&itemCode=' + document.getElementById('itemCode').value; 
       params = params + '&itemDesc=' + document.getElementById('itemDesc').value;
       params = params + '&selling=' + document.getElementById('selling').value;
       params = params + '&qty=' + document.getElementById('qty').value; 
        // loc ="add";
    xmlHttp.open("POST", url, true);
    xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlHttp.setRequestHeader("Content-length", params.length);
    xmlHttp.setRequestHeader("Connection", "close");

    xmlHttp.onreadystatechange = re_add;

    xmlHttp.send(params);
     
 
    document.getElementById('itemCode').value = "";
    document.getElementById('itemDesc').value = "";
    document.getElementById('selling').value = "";
    document.getElementById('subtot').value = "";
    document.getElementById('qty').value = ""; 

    
}


function re_add() {
    var XMLAddress1;

    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {

        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("sales_table");
        document.getElementById('itemdetails').innerHTML = XMLAddress1[0].childNodes[0].nodeValue;

    
        XMLAddress1 = xmlHttp.responseXML.getElementsByTagName("subtot");
        
        document.getElementById('total_value').value = XMLAddress1[0].childNodes[0].nodeValue;
  
    }
}


function del_item(cdate) {

    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null) {
        alert("Browser does not support HTTP Request");
        return;
    }
 
  var url = 'quotation_data.php';
        var params = 'Command=' + 'setitem';
       params = params + "&Command1=del_item";  
       params = params + '&invno=' + document.getElementById('invno').value;
       params = params + '&uniq=' + document.getElementById('uniq').value; 
       params = params + '&itemCode=' + cdate;
        
    xmlHttp.open("POST", url, true);
    xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlHttp.setRequestHeader("Content-length", params.length);
    xmlHttp.setRequestHeader("Connection", "close");

    xmlHttp.onreadystatechange = re_add;

    xmlHttp.send(params);

}


function save_inv() {
    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null) {
        alert("Browser does not support HTTP Request");
        return;
    }
    document.getElementById('msg_box').innerHTML = "";

    if (document.getElementById('invno').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>New Not Selected</span></div>";
        return false;
    }
     if (document.getElementById('c_code').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Customer Not Selected</span></div>";
        return false;
    }
    if (document.getElementById('department').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Department Not Selected</span></div>";
        return false;
    }
    
    if (document.getElementById('rep').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Sales Ex Not Selected</span></div>";
        return false;
    }
    
    if (document.getElementById('total_value').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Item  Not Entered</span></div>";
        return false;
    }
    var url = "quotation_data.php";
    var params = "Command=" + "save_item";
    params = params + "&invno=" + document.getElementById('invno').value;
    params = params + "&uniq=" + document.getElementById('uniq').value;
    params = params + "&sdate=" + document.getElementById('sdate').value;
    params = params + '&c_code=' + document.getElementById('c_code').value;
    params = params + '&c_name=' + document.getElementById('c_name').value; 
    params = params + "&rep=" +  document.getElementById('rep').value;
    params = params + "&remark=" + document.getElementById('txt_remarks').value;  
    params = params + "&department=" +  document.getElementById('department').value ;  
     params = params + "&total_value=" +  document.getElementById('total_value').value ;  


    xmlHttp.open("POST", url, true);

    xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlHttp.setRequestHeader("Content-length", params.length);
    xmlHttp.setRequestHeader("Connection", "close");

    xmlHttp.onreadystatechange = salessaveresult;

    xmlHttp.send(params);

}





function salessaveresult() {
    var XMLAddress1;

    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {

        if (xmlHttp.responseText == "Saved") {
            document.getElementById('msg_box').innerHTML = "<div class='alert alert-success' role='alert'><span class='center-block'>Saved</span></div>"; 
            setTimeout("location.reload(true);", 500); 
        } else {
            document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>" + xmlHttp.responseText + "</span></div>";
        }
    }
}

 
 
function cancel_inv() {
    $('#myModal_c').modal('hide');

    xmlHttp = GetXmlHttpObject();
    if (xmlHttp == null) {
        alert("Browser does not support HTTP Request");
        return;
    }

    document.getElementById('msg_box').innerHTML = "";
    if (document.getElementById('invno').value == "") {
        document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>Select Entry</span></div>";
        return false;
    }
    

    var url = "quotation_data.php";
    url = url + "?Command=" + "del_inv";
    url = url + "&invno=" + document.getElementById('invno').value; 
    xmlHttp.onreadystatechange = cancel_result;
    xmlHttp.open("GET", url, true);
    xmlHttp.send(null);
}

function cancel_result() {
    var XMLAddress1;
    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
        if (xmlHttp.responseText == "Cancelled") {
            document.getElementById('msg_box').innerHTML = "<div class='alert alert-success' role='alert'><span class='center-block'>Cancelled</span></div>";
            setTimeout("location.reload(true);", 500); 
        } else {
            document.getElementById('msg_box').innerHTML = "<div class='alert alert-warning' role='alert'><span class='center-block'>" + xmlHttp.responseText + "</span></div>";
        }
    }
}


function subtotup() {

  qty=  document.getElementById('qty').value; 
  rate=  document.getElementById('selling').value;
  document.getElementById('subtot').value = qty*rate; 
}


 