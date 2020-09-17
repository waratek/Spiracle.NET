<%@ Page Title="File" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="file.aspx.cs" Inherits="WebSite.file" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Process forking</h4>
                </div>
                <div class="panel-body">
                    <asp:TextBox ID="processInput" runat="server" placeholder="Command ..."></asp:TextBox>
                    <asp:Button ID="btnProcessExecute" runat="server" Text="Execute" OnClick="btnProcessExecute_Click" />
                </div>

                <div class="panel-heading"><h4>File</h4></div>
                <div class="panel-body">
                    Path:
                    <asp:TextBox ID="filePath" runat="server"></asp:TextBox>
                    <br>
                    Read
                
                    <asp:RadioButton ID="fileRead" Checked="true" GroupName="fileAction" runat="server" />
                    <br>
                    Write
                    <asp:RadioButton ID="fileWrite" GroupName="fileAction" runat="server" />
                    <br>
                    Delete
                    <asp:RadioButton ID="fileDelete" GroupName="fileAction" runat="server" />
                    <br>
                    <asp:Button ID="btnFileSubmit" runat="server" Text="Submit" OnClick="btnFileSubmit_Click" />
                </div>
                <div class="panel-footer">Text Data</div>
                <div class="panel-body">
                    <pre>
                    <asp:TextBox ID="output" runat="server" TextMode="MultiLine" Width="100%" Height="20em"/>
				</pre>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
