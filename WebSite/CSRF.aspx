<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CSRF.aspx.cs" Inherits="WebSite.CSRF" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>CSRF</h1>

        <asp:Label ID="MyLabelForText" runat="server" />
        <div class="panel panel-default">
            <div class="panel-heading">
                Form tags for method attribute: post
            </div>


            <div class="panel-body">
                <p>
                    <br>
                    <i>method attribute is: method="post"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="post">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method="POST"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="POST">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method="Post"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="Post">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method="pOSt"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="pOSt">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method='post'</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="post">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method=post</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="post">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method &nbsp;&nbsp; ="post"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="post">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method = "post"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="post">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: METHOD="post"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="post">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                Form tags for method attribute: get
            </div>



            <div class="panel-body">

                <p>
                    <br>
                    <i>method attribute is: method="get"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="get">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method="GET"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="GET">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method="Get"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="Get">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method="gEt"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="gEt">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method='get'</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="get">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method=get</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="get">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method &nbsp;&nbsp; ="get"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="get">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: method = "get"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="get">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
                <p>
                    <br>
                    <i>method attribute is: METHOD="get"</i>
                </p>
                <form id="csrfForm" action="./CSRF" method="get">
                    Name:
                    <input type="text" name="name">
                    <input type="submit" value="Submit">
                </form>
            </div>



        </div>


        <div class="panel panel-default">

            <div class="panel-heading">a href tags</div>
            <div class="panel-body">
                <a href="./default.aspx">a href="default.aspx"</a><br>
                <a href="./default.aspx">a href='default.aspx'</a><br>
                <a href="./default.aspx">a href=default.aspx</a><br>
                <a href="./default.aspx">a href = "default.aspx"</a><br>
                <a href="./default.aspx">A HREF="default.aspx"</a><br>
                <a href="http://www.google.com/">a href="http://www.google.com"</a><br>
                <a href="./default.aspx/google.com">a href="google.com"</a><br>
                <a href="">a href=""</a><br>
                <a href="./CSRF.aspx">a href=" "</a><br>
            </div>

            <div class="panel-heading">a href tags with anchors</div>
            <div class="panel-body">
                <a href="#">a href="#"</a><br>
                <a href="#foo">a href="#foo"</a><br>
                <a href=./default.aspx#foo">a href="./default.aspx#foo"</a><br>
                <a href="./file.aspx#foo">a href="file.aspx#foo"</a><br>
                <a href="http://localhost:8080/spiracle/network.jsp#foo">a href="network.jsp#foo"</a><br>
                <a href="./sql.aspx#foo">a href="sql.aspx#foo"</a><br>
                <a href="./xss.aspx#foo">a href="xss.aspx#foo"</a><br>
                <a href="./CSRF.aspx#foo">a href="csrf.aspx#foo"</a><br>
                <a href="./path_traversal.aspx#foo">a href="pathTraversal.aspx#foo"</a><br>
                <a href="http://www.google.com/#foo">a href="http://www.google.com#foo"</a><br>
                <a href="./default.aspx/google.com/#foo">a href="google.com#foo"</a><br>
            </div>
        </div>

    </div>
</asp:Content>
