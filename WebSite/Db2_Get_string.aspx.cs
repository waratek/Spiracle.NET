using System;

namespace WebSite
{
    public partial class Db2_Get_string : DB2Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var sql = "SELECT * FROM spiracle.users WHERE name = '" + name + "'";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}