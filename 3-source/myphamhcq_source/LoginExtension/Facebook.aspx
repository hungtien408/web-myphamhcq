﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Facebook.aspx.cs" Inherits="LoginExtension_Facebook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

   

</head>
<body>
 <img src="/Img/loading.gif" />
   <script language="javascript" type="text/javascript">
       checkURL();
       function checkURL() {
           var url = window.location.href;
           if (url.indexOf("#access_token") > 0)
               window.location = url.replace("#access_token", "?access_token");
       }
    </script>


</body>
</html>