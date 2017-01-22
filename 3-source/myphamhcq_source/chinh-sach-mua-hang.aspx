<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="chinh-sach-mua-hang.aspx.cs" Inherits="cau_hoi_thuong_gap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h3>Hỗ trợ khách hàng</h3>
        <ul>
            <li><a href="cau-hoi-thuong-gap.aspx">Câu hỏi thường gặp</a></li>
            <li><a href="chinh-sach-mua-hang.aspx">Chính sách mua hàng - giao hàng</a></li>
            <li><a href="quy-dinh-doi-tra.aspx">Quy định đổi trả</a></li>
            <li><a href="thong-tin-cua-hang.aspx">Thông tin về cửa hàng</a></li>
        </ul>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="id-wrap-main mgb-20 mgt-10">
        <div class="id-product">
            <h3>Chính sách mua hàng - giao hàng</h3>
        </div>
    </div>
    <div class="wrap-cauhoi">
        <asp:ListView ID="lstQuestionAnswer" runat="server"
            DataSourceID="odsQuestionAnswer" EnableModelValidation="True">
            <ItemTemplate>
                <div class="item">
                    <div class="cau-hoi">
                        <p><%# Eval("ProductName") %></p>
                    </div>
                    <div class="cauhoi-content">
                        <%# Eval("Description") %>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsQuestionAnswer" runat="server"
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
                <asp:Parameter DefaultValue="7" Name="CategoryID" Type="String" />
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
</asp:Content>

