<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="trang-diem-chi-tiet.aspx.cs" Inherits="trang_diem_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        function checkQuantitySize() {
            //alert($("[id$='ddlQuantity']").val());
            if ($("[id$='inQuantity']").val() == "0" || $("[id$='inQuantity']").val() == "") {
                alert("Bạn chưa chọn Số Lượng");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstProductCategory" runat="server"
        DataSourceID="odsProductCategory" EnableModelValidation="True">
        <ItemTemplate>
            <section>
                <h3><%# string.IsNullOrEmpty(Eval("ProductCategoryName").ToString()) ? "" : Eval("ProductCategoryName").ToString().Remove(0, Convert.ToInt32(Eval("Level"))) %></h3>
                <asp:HiddenField ID="hdnParentIDSub" runat="server" Value='<%# Eval("ProductCategoryID")%>' />
                <asp:ListView ID="lstProductCategorySub" runat="server"
                    DataSourceID="odsProductCategorySub" EnableModelValidation="True">
                    <ItemTemplate>
                        <li>
                            <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'><%# string.IsNullOrEmpty(Eval("ProductCategoryName").ToString()) ? "" : Eval("ProductCategoryName").ToString().Remove(0, Convert.ToInt32(Eval("Level"))) %></a>
                            <asp:HiddenField ID="hdnParentIDSub2" runat="server" Value='<%# Eval("ProductCategoryID")%>' />
                            <asp:ListView ID="lstProductCategorySub2" runat="server"
                                DataSourceID="odsProductCategorySub2" EnableModelValidation="True">
                                <ItemTemplate>
                                    <li>
                                        <a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'><%# string.IsNullOrEmpty(Eval("ProductCategoryName").ToString()) ? "" : Eval("ProductCategoryName").ToString().Remove(0, Convert.ToInt32(Eval("Level"))) %></a>
                                    </li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul>
                                        <li runat="server" id="itemPlaceholder"></li>
                                    </ul>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProductCategorySub2" runat="server"
                                SelectMethod="ProductCategorySelectAll"
                                TypeName="TLLib.ProductCategory">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnParentIDSub2" Name="parentID" PropertyName="Value" Type="Int32" />
                                    <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul>
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductCategorySub" runat="server"
                    SelectMethod="ProductCategorySelectAll"
                    TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hdnParentIDSub" Name="parentID" PropertyName="Value" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </section>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProductCategory" runat="server"
        SelectMethod="ProductCategorySelectAll"
        TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
            <asp:Parameter Name="IsShowOnMenu" Type="String" />
            <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <section>
        <h3>Thương hiệu</h3>
        <asp:ListView ID="lstManufacturer" runat="server"
            DataSourceID="odsManufacturer" EnableModelValidation="True">
            <ItemTemplate>
                <li><a href='<%# progressTitle(Eval("ManufacturerName")) + "-th-" + Eval("ManufacturerID") + ".aspx" %>'><%# Eval("ManufacturerName") %></a></li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul>
                    <li runat="server" id="itemPlaceholder"></li>
                </ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsManufacturer" runat="server" SelectMethod="ManufacturerSelectAll" TypeName="TLLib.Manufacturer1">
            <SelectParameters>
                <asp:Parameter Name="ManufacturerName" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                <asp:Parameter Name="ProductID" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="detail-sp">
        <asp:ListView ID="lstProductDetail1" runat="server" OnItemCommand="lstProductDetail1_ItemCommand"
            DataSourceID="odsProductDetail" EnableModelValidation="True">
            <ItemTemplate>
                <div class="top-sp">
                    <div class="dt-left">
                        <asp:ListView ID="lstProductImage" runat="server"
                            DataSourceID="odsProductImage" EnableModelValidation="True">
                            <ItemTemplate>
                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProductImage" runat="server" SelectMethod="ProductImageSelectAll"
                            TypeName="TLLib.ProductImage">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="pi" Name="ProductID" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="dt-right">
                        <p class="from"><%# Eval("ManufacturerName") %></span></p>
                        <h3><%# Eval("ProductName") %></h3>
                        <p><%# Eval("Description") %></p>
                        <p class="price"><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " đ") : "0"%> <span><%# !string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? (string.Format("{0:##,###.##}", Eval("SavePrice")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " đ") : "0"%></span></p>
                        <div class="number">
                            Số lượng:
                    <div class="sp-quantity">
                        <div class="sp-btn" id="sp-minus" data-id="sp-minus">-</div>
                        <div class="sp-input">
                            <%--<input type="text" class="quntity-input" value="0" disabled="disabled" />--%>
                            <asp:TextBox ID="inQuantity" CssClass="quntity-input" runat="server" Text="0"></asp:TextBox>
                            <asp:HiddenField ID="hdnIsQuantity" runat="server" />
                        </div>
                        <div class="sp-btn" id="sp-plus" data-id="sp-plus">+</div>
                    </div>
                        </div>
                        <asp:HiddenField ID="hdnProductOptionCategoryID" runat="server" />
                        <asp:HiddenField ID="hdnProductOptionCategoryName" runat="server" />
                        <asp:HiddenField ID="hdnProductLengthID" runat="server" />
                        <asp:HiddenField ID="hdnProductLengthName" runat="server" />
                        <asp:HiddenField ID="hdnQuantitySale" runat="server" />
                        <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                        <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                        <asp:HiddenField ID="hdnProductCode" Value='<%# Eval("Tag") %>' runat="server" />
                        <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                        <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>'
                            runat="server" />
                        <asp:HiddenField ID="hdnSavePrice" Value='<%# string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? "0" : Eval("SavePrice") %>'
                            runat="server" />
                        <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                        <div class="btn-in-cart">
                            <asp:LinkButton ID="lkbAddToCart" runat="server" OnClientClick="return checkQuantitySize()"
                                CommandName="AddToCart">Thêm vào giỏ</asp:LinkButton>
                            <asp:LinkButton ID="lnkBook" runat="server" OnClientClick="return checkQuantitySize()"
                                CommandName="BookProduct">Mua ngay</asp:LinkButton>
                        </div>
                        <%--<img src="assets/images/like-fb.png" alt="" class="like-fb" />--%>
                        <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                        <%--<div class="fb-like" data-href='<%# "http://www.fruityflowers.net/san-pham.aspx#" + Eval("ProductID") %>'
                                data-send="false" data-layout="button_count" data-width="50" data-show-faces="true">
                            </div>--%>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsProductDetail" runat="server"
            SelectMethod="ProductSelectOne"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="clr"></div>
        <div class="bot-sp">
            <div class="id-wrap-main mgb-20">
                <div class="id-product">
                    <h4>Thông tin sản phẩm</h4>
                </div>
            </div>
            <asp:ListView ID="lstProductDetail2" runat="server"
                DataSourceID="odsProductDetail" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="wrap-content-sp">
                        <%# Eval("Content") %>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <div class="clr"></div>
            <div class="id-wrap-main mgb-20 mgt-20">
                <div class="id-product">
                    <h4>Gợi ý dành riêng cho bạn</h4>
                </div>
            </div>
            <div class="wrap-content-sp">
                <div class="pro-cate trangdiem-cate">
                    <asp:ListView ID="lstProductSame" runat="server"
                        DataSourceID="odsProductSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="item">
                                <div class="wrap-item">
                                    <div class="it-img">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                        </a>
                                    </div>
                                    <div class="it-content">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a>
                                        <span><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " đ") : "0"%></span> <i><%# !string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? (string.Format("{0:##,###.##}", Eval("SavePrice")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " đ") : "0"%></i>
                                    </div>
                                    <%# Eval("IsNew").ToString() == "True" ? "<div class='new'>new</div>" : "" %>
                                    <div class="insert-cart">
                                        <img src="assets/images/in-cart.png" alt="" />
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

