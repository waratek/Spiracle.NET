using System;

namespace WebSite
{
    public partial class MsSql_Get_int_inline : MsSqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}