using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class trang_diem_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void lstProductDetail1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        var ProductOptionCategoryID = (item.FindControl("hdnProductOptionCategoryID") as HiddenField).Value;
        var ProductOptionCategoryName = (item.FindControl("hdnProductOptionCategoryName") as HiddenField).Value;
        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = (item.FindControl("hdnProductCode") as HiddenField).Value;
        var ProductLengthID = (item.FindControl("hdnProductLengthID") as HiddenField).Value;
        var ProductLengthName = (item.FindControl("hdnProductLengthName") as HiddenField).Value;
        var Quantity = (item.FindControl("inQuantity") as TextBox).Text;//(item.FindControl("hdnQuantitySale") as HiddenField).Value;
        double Price = Convert.ToDouble((item.FindControl("hdnPrice") as HiddenField).Value);
        double SavePrice = Convert.ToDouble((item.FindControl("hdnSavePrice") as HiddenField).Value);
        string ProductSizeColorID1 = "";
        string QuantityList = "";
        int SizeColorQuantity1 = 0;
        if (cmd == "AddToCart")
        {
            //if (Session["UserName"] != null)
            //{
                var oShoppingCart = new ShoppingCart();
                oShoppingCart.CreateCart(ProductID,
                    ImageName,
                    ProductName,
                    ProductNameEn,
                    ProductCode,
                    "",
                    Price,
                    SavePrice,
                    "",
                    Quantity
                    );
                //Common.ShowAlert(ProductLengthID);
                //ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", "myconfirmPopup('" + "<strong>" + ProductName + " - " + ProductCode + " - " + ProductOptionCategoryName + "</strong><br/> đã được thêm vào giỏ hàng" + "')", true);
                //ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {$('.cart img').trigger('click');});", true);
            //}
            //else
            //{
            //    ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Bạn vui lòng đăng nhập');});", true);
            //}
        }
        else if (cmd == "BookProduct")
        {

            var oShoppingCart = new ShoppingCart();
            oShoppingCart.CreateCart(ProductID,
                ImageName,
                ProductName,
                ProductNameEn,
                ProductCode,
                "",
                Price,
                SavePrice,
                "",
                Quantity
                );

            Response.Redirect("mua-ngay.aspx");

        }
    }
}