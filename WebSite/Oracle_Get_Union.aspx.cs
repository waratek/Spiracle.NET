using System;

namespace WebSite
{
    public partial class Oracle_Get_Union : OraclePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT name, surname, TO_CHAR(dob) FROM users WHERE id = " + id + " UNION SELECT address_1, address_2, address_3 FROM address WHERE id = " + id;
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}