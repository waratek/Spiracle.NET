<%@ Page Title="Spiracle.Net - IDOR" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="idor.aspx.cs" Inherits="WebSite.idor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h1>IDOR</h1>

        <div class="panel panel-default">
            <div class="panel-heading">Endpoints</div>
            <div class="panel-body">

            <asp:Label ID="lblWelcome" runat="server" />

                <h3>Endpoints with Broken Access Control</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Request</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="idor_get_user?id=1">idor_get_user?id=1</a></td>
                        </tr>
                        <tr>
                            <td><a href="idor_get_user?id=2">idor_get_user?id=2</a></td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</asp:Content>
