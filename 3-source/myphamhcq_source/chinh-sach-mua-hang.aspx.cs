﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class cau_hoi_thuong_gap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Chính Sách Mua Hàng";
            var meta = new HtmlMeta() { Name = "description", Content = "Chính Sách Mua Hàng" };
            Header.Controls.Add(meta);
        }
    }
}