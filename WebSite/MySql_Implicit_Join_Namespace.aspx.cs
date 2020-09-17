using System;

namespace WebSite
{
    public partial class MySql_Implicit_Join_Namespace : MySqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT * FROM test.users, test.address WHERE test.users.id = " + id + " AND test.users.id = test.address.id";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}