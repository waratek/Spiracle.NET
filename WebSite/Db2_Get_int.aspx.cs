using System;

namespace WebSite
{
    public partial class Db2_Get_int : DB2Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT * FROM SPIRACLE.USERS WHERE id = '" + id + "'";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}