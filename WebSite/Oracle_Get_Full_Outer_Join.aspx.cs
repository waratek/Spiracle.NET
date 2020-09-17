using System;

namespace WebSite
{
    public partial class Oracle_Get_Full_Outer_Join : OraclePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT * FROM users FULL OUTER JOIN address ON users.id = address.id AND users.id = " + id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}