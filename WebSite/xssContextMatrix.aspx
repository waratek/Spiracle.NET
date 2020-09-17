<%@ Page Title="XSS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="xssContextMatrix.aspx.cs" Inherits="WebSite.xssContextMatrix" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        >
        table {
            border-collapse: collapse;
            border-spacing: 20px;
        }

        table, td, th {
            width: 1000px;
            border: 1px solid #ccc;
            padding: 5px;
        }

            th:empty {
                border: 0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <div class="panel panel-default" id="outputPanel" runat="server">
            <div class="panel-heading">
                <h4>Test Case #<asp:Label ID="lblTestCase" runat="server" Text="" /></h4>
            </div>
            <div class="panel-body">
                <asp:Literal ID="output" runat="server" />
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>XSS Context Matrix</h4>
            </div>
            <div class="panel-body">
                <form method="get" action="xssContextMatrix.aspx">
                    <h3>Select test case:</h3>
                    <table>
                        <tr>
                            <th>Context</th>
                            <th>Content&nbsp;</th>
                            <th>Double-quoted Attr&nbsp;</th>
                            <th>Single-quoted Attr&nbsp;</th>
                            <th>Unquoted Attr&nbsp;</th>
                            <th>Attribute Name&nbsp;</th>
                        </tr>
                        <tr>
                            <td>No concatenation</td>
                            <td>
                                <input type="radio" name="testcase" value="1"></td>
                            <td>
                                <input type="radio" name="testcase" value="2"></td>
                            <td>
                                <input type="radio" name="testcase" value="3"></td>
                            <td>
                                <input type="radio" name="testcase" value="4"></td>
                            <td>
                                <input type="radio" name="testcase" value="5"></td>
                        </tr>
                        <tr>
                            <td>Payload as Prefix</td>
                            <td>
                                <input type="radio" name="testcase" value="6"></td>
                            <td>
                                <input type="radio" name="testcase" value="7"></td>
                            <td>
                                <input type="radio" name="testcase" value="8"></td>
                            <td>
                                <input type="radio" name="testcase" value="9"></td>
                            <td>
                                <input type="radio" name="testcase" value="10"></td>
                        </tr>
                        <tr>
                            <td>Payload as Suffix</td>
                            <td>
                                <input type="radio" name="testcase" value="11"></td>
                            <td>
                                <input type="radio" name="testcase" value="12"></td>
                            <td>
                                <input type="radio" name="testcase" value="13"></td>
                            <td>
                                <input type="radio" name="testcase" value="14"></td>
                            <td>
                                <input type="radio" name="testcase" value="15"></td>
                        </tr>
                    </table>
                    Payload:
                    <input type="text" name="payload" style="width: 400px"><br />
                    Single print statement:
                    <input type="checkbox" name="singlePrint" /><br />
                    <input type="submit" value="Submit">
                    <br />
                </form>
            </div>
        </div>
    </div>
</asp:Content>
