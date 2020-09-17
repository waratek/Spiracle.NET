using System;

namespace WebSite
{
    public partial class Sybase_Implicit_Join_Namespace : SybasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT * FROM dbo.users, dbo.address WHERE dbo.users.id = " + id + " AND dbo.users.id = dbo.address.id";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}