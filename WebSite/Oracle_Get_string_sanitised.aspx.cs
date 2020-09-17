using System;

namespace WebSite
{
    public partial class Oracle_Get_string_sanitised : OraclePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var newName = name.Replace("'", "''");
            var sql = "select * from users where name = '" + newName + "'";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}