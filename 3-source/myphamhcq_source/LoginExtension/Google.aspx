<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Google.aspx.cs" Inherits="LoginExtension_Google" %>
<%@ Register Assembly="DotNetOpenAuth" Namespace="DotNetOpenAuth.OpenId.RelyingParty"
    TagPrefix="rp" %>
<%@ Register Assembly="DotNetOpenAuth" Namespace="DotNetOpenAuth.OpenId.Extensions.SimpleRegistration"
    TagPrefix="sreg" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
</head>
<body onload="if(window.location.href.indexOf('cancel')>0) window.close(); else  javascript:__doPostBack('<%=btnLogIn.ClientID %>', '');">
    <form id="form1" runat="server">
    <div>
         <rp:OpenIdButton runat="server" ID="btnLogIn" OnLoggedIn="btnLogIn_LoggedIn" >
            <Extensions>
                <sreg:ClaimsRequest Email="Require" BirthDate="Require" Country="Require" 
                    FullName="Require" Gender="Require" Language="Require" Nickname="Require" 
                    PostalCode="Require" TimeZone="Require" />
            </Extensions>
        </rp:OpenIdButton>         
       
    </div>
    </form>    
</body>
</html>
