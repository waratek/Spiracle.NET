<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MsSqlDatabaseQuery.aspx.cs" Inherits="WebSite.MsSqlDatabaseQuery" validateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form action="/MsSqlDatabaseQuery" method="get">
    Query: <input type="text" name="query"><br>
    <input type="submit" value="Submit">
</form>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="output" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
