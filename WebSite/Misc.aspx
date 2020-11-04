<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Misc.aspx.cs" Inherits="WebSite.Misc" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Misc</h1>
        <div class="panel panel-default">

            <div class="panel-heading">
                Redirection
            </div>


            <div class="panel-body">
                <a href="Redirect.aspx?redirectType=ResponseRedirect&value=default.aspx">Redirect to default.aspx with Response redirect</a> <br/>
                <a href="Redirect.aspx?redirectType=HeaderRedirect&value=default.aspx">Redirect to default.aspx with header and return code</a> <br/>
                <a href="Redirect.aspx?redirectType=ResponseRedirectLocation&value=default.aspx">Redirect to default.aspx with response redirect location</a>
            </div>
        </div>

    </div>
</asp:Content>
