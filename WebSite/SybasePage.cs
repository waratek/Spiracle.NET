using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;
using AdoNetCore.AseClient;

namespace WebSite
{
    public class SybasePage : System.Web.UI.Page
    {
        protected void ExecuteQuery(string sql, GridView users)
        {
            var connStr = ConfigurationManager.ConnectionStrings["SybaseLocalConnection"].ToString();
            using (AseConnection connnection = new AseConnection(connStr))
            {
                using (AseCommand cmd = connnection.CreateCommand())
                {
                    cmd.CommandText = sql;
                    AseDataAdapter da = new AseDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    users.DataSource = ds;
                    users.DataBind();
                }
            }
        }
    }
}