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

public partial class LoginExtension_Yahoo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnLogIn.Identifier = "https://me.yahoo.com";
            btnLogIn.ReturnToUrl = "/LoginExtension/Yahoo.aspx";
            btnLogIn.ImageUrl = "~/img/loading.gif";
        }

    }


    protected void btnLogIn_LoggedIn(object sender, OpenIdEventArgs e)
    {
        //Luu tru thong tin
        ClaimsResponse profile = e.Response.GetExtension<ClaimsResponse>();
        PolicyResponse papePolicies = e.Response.GetExtension<PolicyResponse>();
        string friendlyLoginName = e.Response.FriendlyIdentifierForDisplay;

        Session["user"] = " Yahoo: " + profile.Email;

        // Save thong tin dang nhap o day

        Response.Redirect("/LoginExtension/Close.aspx");

    }
}