<%@ Page Title="Spiracle.Net - IDOR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="idor_get_user.aspx.cs" Inherits="WebSite.idor_get_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="container">
            <h1>Session UserID:</h1>
            <pre><asp:Label ID="lblUserIdSession" runat="server" /></pre>
            <h1>Endpoint UserID:</h1>
            <pre><asp:Label ID="lblUserId" runat="server" /></pre>
            <h1>Results:</h1>
            <asp:GridView ID="users" runat="server" CssClass="table table-bordered table-striped">
            </asp:GridView>
        </div>
    </form>
</asp:Content>
