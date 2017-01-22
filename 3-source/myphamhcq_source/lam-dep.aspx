<%@ Page Title="" Language="C#" MasterPageFile="~/site-lamdep.master" AutoEventWireup="true" CodeFile="lam-dep.aspx.cs" Inherits="Lam_dep" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="id-wrap-main">
        <div class="id-product">
            <h3>
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
        </div>
    </div>
    <div class="lamdep-cate">
        <asp:ListView ID="lstMakeBeauty" runat="server"
            DataSourceID="odsMakeBeauty" EnableModelValidation="True">
            <ItemTemplate>
                <div class="item">
                    <div class="it-img">
                        <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" /></a>
                    </div>
                    <div class="it-content">
                        <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a>
                        <p><%# Eval("Description") %></p>
                        <div class="read-more"><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>Xem chi tiết</a></div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsMakeBeauty" runat="server"
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
                <asp:QueryStringParameter QueryStringField="ld" DefaultValue="4" Name="CategoryID" Type="String" />
                <asp:Parameter Name="ManufacturerID" Type="String" />
                <asp:Parameter Name="OriginID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter Name="InStock" Type="String" />
                <asp:Parameter Name="IsHot" Type="String" />
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
    </div>
    <div class="clr"></div>
    <div class="pager">
        <asp:DataPager ID="DataPager1" runat="server" PageSize="8" PagedControlID="lstMakeBeauty">
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
</asp:Content>

