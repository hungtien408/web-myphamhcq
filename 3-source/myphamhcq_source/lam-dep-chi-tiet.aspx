<%@ Page Title="" Language="C#" MasterPageFile="~/site-lamdep.master" AutoEventWireup="true" CodeFile="lam-dep-chi-tiet.aspx.cs" Inherits="lam_dep_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="id-wrap-main">
        <div class="id-product">
            <h3>
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
        </div>
    </div>
    <asp:ListView ID="lstMakeBeautyDetail" runat="server"
        DataSourceID="odsMakeBeautyDetail" EnableModelValidation="True">
        <ItemTemplate>
            <div class="lamdep-cate">
                <div class="detail-sp">
                    <div class="bot-sp">
                        <div class="wrap-content-sp">
                            <%# Eval("Content") %>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsMakeBeautyDetail" runat="server"
        SelectMethod="ProductSelectOne" TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="tt" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

