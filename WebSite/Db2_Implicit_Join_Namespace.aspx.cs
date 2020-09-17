using System;

namespace WebSite
{
    public partial class Db2_Implicit_Join_Namespace : DB2Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var sql = "SELECT * FROM SPIRACLE.USERS, SPIRACLE.ADDRESS where SPIRACLE.USERS.ID = " + id + " AND SPIRACLE.ADDRESS.ID = SPIRACLE.USERS.ID";
            sqlQuery.Text = sql;
            ExecuteQuery(sql, users);
        }
    }
}