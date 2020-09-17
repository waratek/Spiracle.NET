using System;

namespace WebSite
{
    public partial class Oracle_Get_int_groupby : OraclePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT count(name), name FROM users GROUP BY " + id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}