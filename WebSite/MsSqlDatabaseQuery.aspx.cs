using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class MsSqlDatabaseQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sql = Request["query"];

            if (string.IsNullOrWhiteSpace(sql)) return;

            var connStr = ConfigurationManager.ConnectionStrings["MsSQLConnection"].ToString();
            using (SqlConnection connnection = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql))
                {
                    cmd.Connection = connnection;
                    cmd.Connection.Open();
                    output.Text = cmd.ExecuteScalar()?.ToString();
                }
            }

        }
    }
}