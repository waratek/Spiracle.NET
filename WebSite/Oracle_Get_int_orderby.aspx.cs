using System;

namespace WebSite
{
    public partial class Oracle_Get_int_orderby : OraclePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT * FROM users ORDER BY " + id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}