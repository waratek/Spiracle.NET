using System;

namespace WebSite
{
    public partial class MsSql_Get_string_no_quote : MsSqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var sql = "select * from users where name=" + name;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}