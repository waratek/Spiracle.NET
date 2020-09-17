using System;

namespace WebSite
{
    public partial class Oracle_Get_string_param_question_mark : OraclePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var sql = "SELECT * FROM users where name <> '?' and name = '" + name + "'";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}