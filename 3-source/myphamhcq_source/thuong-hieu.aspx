<%@ Page Title="" Language="C#" MasterPageFile="~/site-main.master" AutoEventWireup="true" CodeFile="thuong-hieu.aspx.cs" Inherits="thuong_hieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .shape {
            background: none;
        }
        .shape .shape-content .item{
            border: 1px solid #b7b7b7;
            border-radius: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrap-show container">
        <div class="shape">
            <%--<div class="top"></div>--%>
            <div class="shape-content container pdt-30">
                <asp:ListView ID="lstManufacturer" runat="server"
                    DataSourceID="odsManufacturer" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <a href='<%# progressTitle(Eval("ManufacturerName")) + "-th-" + Eval("ManufacturerID") + ".aspx" %>'>
                                <img alt='<%# Eval("ManufacturerImage") %>' src='<%# "~/res/manufacturer/" + Eval("ManufacturerImage") %>'
                                    visible='<%# string.IsNullOrEmpty(Eval("ManufacturerImage").ToString()) ? false : true %>'
                                    runat="server" />
                            </a>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
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
            </div>
        </div>
        <div class="clr"></div>
    </div>
</asp:Content>

