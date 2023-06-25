<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BillDetails.aspx.cs" Inherits="MyTransport.BillDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <br />


            <asp:GridView ID="BillDetailsGridView" runat="server" CssClass="table table-striped table-dark"></asp:GridView>
        </div>

    </div>
</asp:Content>
    