<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="san-pham-hot.aspx.cs" Inherits="my_pham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="id-wrap-main mgb-20">
                <div class="id-product">
                    <h3>
                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="pull-right">
                    <span>Hiển thị</span>
                    <asp:DropDownList ID="dropHienThi1" runat="server" CssClass="hienthi" AutoPostBack="true" OnSelectedIndexChanged="dropHienThi1_SelectedIndexChanged">
                        <asp:ListItem Value="9">9</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="pull-right">
                    <span>Sắp xếp theo</span>
                    <asp:DropDownList ID="dropSapXep" runat="server" CssClass="sapxep" AutoPostBack="true" OnSelectedIndexChanged="dropSapXep_SelectedIndexChanged">
                        <asp:ListItem>--Sắp xếp--</asp:ListItem>
                        <asp:ListItem Value="1">Giá (Thấp > Cao)</asp:ListItem>
                        <asp:ListItem Value="2">Giá (Cao > Thấp)</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="pro-cate trangdiem-cate">
                <asp:ListView ID="lstProduct" runat="server"
                    DataSourceID="odsProduct" EnableModelValidation="True">
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
                                <%# Eval("IsHot").ToString() == "True" ? "<div class='hot'>hot</div>" : "" %>
                                <%# !string.IsNullOrEmpty(Eval("Discount").ToString()) ? "<div class='sale'>-" + Eval("Discount") + "%</div>" : "" %>
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
                <asp:ObjectDataSource ID="odsProduct" runat="server"
                    SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:QueryStringParameter QueryStringField="pci" DefaultValue="3" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <div class="clr"></div>
                <asp:Panel ID="Panel1" runat="server">
                    <div class="id-wrap-main">
                        <div class="pager">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="18" PagedControlID="lstProduct">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                        ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                                        FirstPageText="" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                                        ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                                        PreviousPageText="" />
                                    <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                                        ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                        NextPageText="" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-forward"
                                        ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                                        LastPageText="" />
                                </Fields>
                            </asp:DataPager>
                        </div>

                        <div class="pull-right">
                            <span>Hiển thị</span>
                            <asp:DropDownList ID="dropHienThi2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropHienThi2_SelectedIndexChanged">
                                <asp:ListItem Value="12">12</asp:ListItem>
                                <asp:ListItem Value="9">9</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
