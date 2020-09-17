using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace WebSite
{
    public class OraclePage : System.Web.UI.Page
    {
        protected void ExecuteQuery(string sql, GridView users)
        {
            var connStr = ConfigurationManager.ConnectionStrings["OracleLocalConnection"].ToString();
            using (OracleConnection connnection = new OracleConnection(connStr))
            {
                using (OracleCommand cmd = connnection.CreateCommand())
                {
                    cmd.CommandText = sql;
                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    users.DataSource = ds;
                    users.DataBind();
                }

                /*
                using (OracleCommand cmd = new OracleCommand(sql))
                {
                    cmd.Connection = connnection;
                    cmd.Connection.Open();
                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    users.DataSource = ds;
                    users.DataBind();
                }
                */
            }
        }
    }
}