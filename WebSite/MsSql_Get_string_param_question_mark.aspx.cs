using System;

namespace WebSite
{
    public partial class MsSql_Get_string_param_question_mark : MsSqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var sql = "SELECT top 5 id, name, surname FROM users where name <> '?' and name = '" + name + "'";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}