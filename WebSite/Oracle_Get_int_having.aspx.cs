using System;

namespace WebSite
{
    public partial class Oracle_Get_int_having : OraclePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT MIN(name) from users GROUP BY id HAVING id = " + id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}