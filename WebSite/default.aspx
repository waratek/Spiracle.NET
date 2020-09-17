<%@ Page Title="Index" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebSite._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">    
    <div class="container">
        <h1>Overview</h1>
        <p class="lead">Spiracle.Net is an insecure web application used to test system security controls.</p>
        <p>It can be used to read/write arbitrary files and open network connections.</p>
        The application is also vulnerable to numerous other vulnerabilities such as:
        <ul>
            <li>SQL Injection (CWE-89)</li>
            <li>XSS (CWE-79)</li>
            <li>CSRF (CWE-352)</li>
            <li>Path Traversal (CWE-22)</li>
            <li>Deserialization (CWE-502)</li>
            <li>and many more...</li>
        </ul>
        <p>Due to its insecure design, this application should NOT be deployed on an unsecured network or system.</p>
        <h3>Headers</h3>
        <pre><asp:Label ID="Headers" runat="server" /></pre>
        <h3>Cookies</h3>
        <pre><asp:Label ID="Cookies" runat="server" /></pre>
    </div>
</asp:Content>
