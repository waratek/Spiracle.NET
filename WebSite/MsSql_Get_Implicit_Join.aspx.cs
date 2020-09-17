using System;

namespace WebSite
{
    public partial class MsSql_Get_Implicit_Join : MsSqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT * FROM users, address WHERE users.id = " + id + " AND users.id = address.id";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}