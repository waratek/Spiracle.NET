using System;

namespace WebSite
{
    public partial class Sybase_Get_Union : SybasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT name, surname, CONVERT(varchar(500),dob,3)  FROM users WHERE id = " + id + " UNION SELECT address_1, address_2, address_3 FROM address WHERE id = " + id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}