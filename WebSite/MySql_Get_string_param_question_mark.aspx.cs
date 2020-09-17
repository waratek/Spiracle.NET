using System;

namespace WebSite
{
    public partial class MySql_Get_string_param_question_mark : MySqlPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            // The '?' syntax is invalid for MySQL, so this query never successfully executes.
            var sql = "SELECT top 5 id, name, surname FROM users where name <> '?' and name = '" + name + "'";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}