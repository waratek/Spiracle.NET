<%@ Page Title="Spiracle.Net - SQL" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="sql.aspx.cs" Inherits="WebSite.sql" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <h1>SQL Injection</h1>

        <div class="panel panel-default">
            <div class="panel-heading">Injectable URLS</div>
            <div class="panel-body">
                <h3>MsSQL</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Request</th>
                            <th>SQL Statement</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="MsSql_Get_int?id=1">MsSql_Get_int?id=1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = '" + id + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MsSql_Get_int?id=1' or '1'='1">MsSql_Get_int?id=1' or '1'='1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = " + id + " or id = id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="MsSql_Get_string?name=wu">MsSql_Get_string?name=wu</a></td>
                            <td><code>"SELECT * FROM users WHERE name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MsSql_Get_string_param_question_mark?name=wu">MsSql_Get_string_param_question_mark?name=wu</a></td>
                            <td><code>"SELECT top 5 id, name, surname FROM users where name <> '?' and name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MsSql_Get_Union?id=1">MsSql_Get_Union?id=1</a></td>
                            <td><code>"SELECT name, surname, CONVERT(varchar(500), dod, 3)dob FROM users WHERE
                                        id = " + id + " UNION SELECT address_1, address_2, address_3
                                        FROM address WHERE id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="MsSql_Get_Implicit_Join?id=1">MsSql_Get_Implicit_Join?id=1</a></td>
                            <td><code>"SELECT * FROM users, address WHERE
                                        users.id = " + id + " AND users.id = address.id";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MsSql_Implicit_Join_Namespace?id=1">MsSql_Implicit_Join_Namespace?id=1</a></td>
                            <td><code>"SELECT * FROM dbo.users, dbo.address WHERE
                                        dbo.users.id = " + id + " AND dbo.users.id = dbo.address.id";</code></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-body">
                <h3>Oracle</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Request</th>
                            <th>SQL Statement</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="Oracle_Get_int?id=1">Oracle_Get_int?id=1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = '" + id + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_int?id=1' or '1'='1">Oracle_Get_int?id=1' or '1'='1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = " + id + " or id = id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_int_no_quote?id=1">Oracle_Get_int_no_quote?id=1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_int_orderby?id=name">Oracle_Get_int_orderby?id=name</a></td>
                            <td><code>"SELECT * FROM users ORDER BY '" + id + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_int_groupby?id=name">Oracle_Get_int_groupby?id=name</a></td>
                            <td><code>"SELECT count(name), name FROM users GROUP BY " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_int_having?id=1">Oracle_Get_int_having?id=1</a></td>
                            <td><code>"SELECT MIN(name) from users GROUP BY id HAVING id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_int_inline?id=SELECT%20*%20FROM%20users">Oracle_Get_int_inline?id=SELECT
                                        * FROM users</a></td>
                            <td><code>id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_string?name=wu">Oracle_Get_string?name=wu</a></td>
                            <td><code>"SELECT * FROM users WHERE name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_string_no_quote?name='wu'">Oracle_Get_string_no_quote?name='wu'</a></td>
                            <td><code>"SELECT * FROM users WHERE name = " + name;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_string_sanitised?name=wu">Oracle_Get_string_sanitised?name=wu</a></td>
                            <td><code>"SELECT * FROM users WHERE name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_string_param_question_mark?name=wu">Oracle_Get_string_param_question_mark?name=wu</a></td>
                            <td><code>"SELECT * FROM users where name <> '?' and name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_Implicit_Join?id=1">Oracle_Get_Implicit_Join?id=1</a></td>
                            <td><code>"SELECT * FROM users, address WHERE users.id = " + id + " AND users.id = address.id";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_Full_Outer_Join?id=1">Oracle_Get_Full_Outer_Join?id=1</a></td>
                            <td><code>"SELECT * FROM users FULL OUTER JOIN address ON users.id = address.id AND users.id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Oracle_Get_Union?id=1">Oracle_Get_Union?id=1</a></td>
                            <td><code>"SELECT name, surname, TO_CHAR(dob) FROM users WHERE id = " + id + " UNION SELECT address_1, address_2, address_3 FROM address WHERE id = " + id;</code></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-body">
                <h3>MySQL</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Request</th>
                            <th>SQL Statement</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="MySql_Get_int?id=1">MySql_Get_int?id=1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = '" + id + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MySql_Get_int?id=1' or '1'='1">MySql_Get_int?id=1' or '1'='1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = " + id + " or id = id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="MySql_Get_string?name=wu">MySql_Get_string?name=wu</a></td>
                            <td><code>"SELECT * FROM users WHERE name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MySql_Get_string_param_question_mark?name=wu">MySql_Get_string_param_question_mark?name=wu</a></td>
                            <td><code>"SELECT top 5 id, name, surname FROM users where name <> '?' and name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MySql_Get_union?id=1">MySql_Get_union?id=1</a></td>
                            <td><code>"SELECT name, surname, dob FROM users WHERE
                                        id = " + id + " UNION SELECT address_1, address_2, address_3
                                        FROM address WHERE id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="MySql_Get_Implicit_Join?id=1">MySql_Get_Implicit_Join?id=1</a></td>
                            <td><code>"SELECT * FROM users, address WHERE
                                        users.id = " + id + " AND users.id = address.id";</code></td>
                        </tr>
                        <tr>
                            <td><a href="MySql_Implicit_Join_Namespace?id=1">MySql_Implicit_Join_Namespace?id=1</a></td>
                            <td><code>"SELECT * FROM test.users, test.address
                                        WHERE test.users.id = " + id + " AND test.users.id =
                                        test.address.id";</code></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-body">
                <h3>Sybase</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Request</th>
                            <th>SQL Statement</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="Sybase_Get_int_no_quote?id=1">Sybase_Get_int_no_quote?id=1</a></td>
                            <td><code>"SELECT * FROM users WHERE id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Sybase_Get_int_no_quote?id=1 OR name LIKE '%25'">Sybase_Get_int_no_quote?id=1 OR name LIKE '%25'</a></td>
                            <td><code>"SELECT * FROM users WHERE id = 1 OR name LIKE '%25';</code></td>
                        </tr>
                        <tr>
                            <td><a href="Sybase_Get_string?name=wu">Sybase_Get_string?name=wu</a></td>
                            <td><code>"SELECT * FROM users WHERE name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Sybase_Get_string_no_quote?name='wu'">Sybase_Get_string_no_quote?name='wu'</a></td>
                            <td><code>"SELECT * FROM users WHERE name = " + name;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Sybase_Get_string_param_question_mark?name=wu">Sybase_Get_string_param_question_mark?name=wu</a></td>
                            <td><code>"SELECT top 5 id, name, surname FROM users where name <> '?' and name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Sybase_Get_Union?id=1">Sybase_Get_Union?id=1</a></td>
                            <td><code>"SELECT name, surname, CONVERT(varchar(500),dob,3)  FROM users WHERE id = " + id + " UNION SELECT address_1, address_2, address_3 FROM address WHERE id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Sybase_Get_Implicit_Join?id=1">Sybase_Get_Implicit_Join?id=1</a></td>
                            <td><code>"SELECT * FROM users, address WHERE users.id = " + id + " AND users.id = address.id";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Sybase_Implicit_Join_Namespace?id=1">Sybase_Implicit_Join_Namespace?id=1</a></td>
                            <td><code>"SELECT * FROM dbo.users, dbo.address WHERE dbo.users.id = " + id + " AND dbo.users.id = dbo.address.id";</code></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-body">
                <h3>IBM DB2</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Request</th>
                            <th>SQL Statement</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="Db2_Get_int?id=1">Db2_Get_int?id=1</a></td>
                            <td><code>"SELECT * FROM SPIRACLE.USERS WHERE id = '" + id + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Get_int?id=1' or '1'='1">Db2_Get_int?id=1' or '1'='1</a></td>
                            <td><code>"SELECT * FROM SPIRACLE.USERS WHERE id = " + id + " or id = id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Get_int_quote_id?id=1">Db2_Get_int_quote_id?id=1</a></td>
                            <td><code>"SELECT * FROM \"SPIRACLE\".\"USERS\" WHERE id = '" + id + "'"</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Get_string?name=wu">Db2_Get_string?name=wu</a></td>
                            <td><code>"SELECT * FROM spiracle.users WHERE name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Get_string_quote_id?name=wu">Db2_Get_string_quote_id?name=wu</a></td>
                            <td><code>"SELECT * FROM \"SPIRACLE\".\"USERS\" WHERE name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Get_string_param_question_mark?name=wu">Db2_Get_string_param_question_mark?name=wu</a></td>
                            <td><code>"SELECT * FROM spiracle.users where name <> ? and name = '" + name + "'";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Implicit_Join_Namespace?id=1">Db2_Implicit_Join_Namespace?id=1</a></td>
                            <td><code>"SELECT * FROM SPIRACLE.USERS, SPIRACLE.ADDRESS where SPIRACLE.USERS.ID = " + id + " AND SPIRACLE.ADDRESS.ID = SPIRACLE.USERS.ID";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Implicit_Join_Namespace_quote_id?id=1">Db2_Implicit_Join_Namespace_quote_id?id=1</a></td>
                            <td><code>"SELECT * FROM \"SPIRACLE\".\"USERS\", SPIRACLE.ADDRESS where SPIRACLE.USERS.ID = " + id + " AND SPIRACLE.ADDRESS.ID = SPIRACLE.USERS.ID";</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Get_Union?id=1">Db2_Get_Union?id=1</a></td>
                            <td><code>"SELECT name, surname FROM spiracle.users WHERE id = " + id + " UNION SELECT address_1, address_2 FROM spiracle.address WHERE id = " + id;</code></td>
                        </tr>
                        <tr>
                            <td><a href="Db2_Get_Union_quote_id?id=1">Db2_Get_Union_quote_id?id=1</a></td>
                            <td><code>"SELECT name, surname FROM \"SPIRACLE\".\"USERS\" WHERE id = " + id + " UNION SELECT address_1, address_2 FROM spiracle.address WHERE id = " + id;</code></td>
                        </tr>


                    </tbody>
                </table>
            <div>

        </div>
    </div>
</asp:Content>
