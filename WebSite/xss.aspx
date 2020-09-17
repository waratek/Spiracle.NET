<%@ Page Title="XSS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="xss.aspx.cs" Inherits="WebSite.xss" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>Additional XSS cases</h4>
            </div>
            <div class="panel-body">
                <a href="xssContextMatrix">XSS Context Matrix test cases</a><br />
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>Reflected Parameters</h4>
            </div>
            <div class="panel-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Payload</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Literal ID="payloadText" runat="server" />
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
