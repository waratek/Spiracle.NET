<%@ Page Title="Path Traversal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="path_traversal.aspx.cs" Inherits="WebSite.path_traversal" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Path Traversal</h1>

        <div class="panel panel-default">
            <div class="panel-heading">
                File.Exists
            </div>
            <div class="panel-body">
                <form method="post" action="path_traversal">
                    <div>
                        <label>Operation01:</label>
                        <input type="text" id="File01" name="File01" value="FileName" />
                        <input type="submit" name="File01Button" value="Submit">
                        ("..\..\..\Web.Config")
                    </div>
                
                    <div>
                        <label>Operation02:</label>
                        <input type="text" id="File02" name="File02" value="FileName" />
                        <input type="submit" name="File02Button" value="Submit">
                    </div>
                    <div>
                        <label>Operation03:</label>
                        <input type="text" id="File03" name="File03" value="FileName" />
                        <input type="submit" name="File03Button" value="Submit">
                    </div>
                </form>
            </div>
            <div class="panel-footer">
                <asp:Literal ID="outputTxt" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
