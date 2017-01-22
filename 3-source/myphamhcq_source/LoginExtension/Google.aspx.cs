using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OpenIdRelyingPartyWebForms;
using DotNetOpenAuth.OpenId.Extensions.SimpleRegistration;
using DotNetOpenAuth.OpenId.RelyingParty;
using DotNetOpenAuth.OpenId.Extensions.ProviderAuthenticationPolicy;

using System.Data;

public partial class LoginExtension_Google : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnLogIn.Identifier = "https://www.google.com/accounts/o8/id";
            btnLogIn.ReturnToUrl = "/LoginExtension/Google.aspx";
            btnLogIn.ImageUrl = "~/assets/images/loading3.gif";
        }

    }


    protected void btnLogIn_LoggedIn(object sender, OpenIdEventArgs e)
    {
        //Luu tru thong tin
        ClaimsResponse profile = e.Response.GetExtension<ClaimsResponse>();
        PolicyResponse papePolicies = e.Response.GetExtension<PolicyResponse>();
        string friendlyLoginName = e.Response.FriendlyIdentifierForDisplay;


        Session["user"] = " Google: " + profile.Email;


        // Save thong tin dang nhap o day
        //Kiem tra xem tai khoan nay da duoc luu vao co so du lieu chua:
               


        Response.Redirect("/LoginExtension/Close.aspx");

    }
}