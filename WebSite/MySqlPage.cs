using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebSite
{
    public class MySqlPage : System.Web.UI.Page
    {
        protected void ExecuteQuery(string sql, GridView users)
        {
            var connStr = ConfigurationManager.ConnectionStrings["MySQLLocalConnection"].ToString();
            using (MySqlConnection connnection = new MySqlConnection(connStr))
            {
                using (MySqlCommand cmd = connnection.CreateCommand())
                {
                    cmd.CommandText = sql;
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    users.DataSource = ds;
                    users.DataBind();
                }
            }
        }
    }
}