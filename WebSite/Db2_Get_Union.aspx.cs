using System;

namespace WebSite
{
    public partial class Db2_Get_Union : DB2Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT name, surname FROM spiracle.users WHERE id = " + id + " UNION SELECT address_1, address_2 FROM spiracle.address WHERE id = " + id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}