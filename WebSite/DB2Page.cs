using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;
//using IBM.Data.DB2;

namespace WebSite
{
    public class DB2Page : System.Web.UI.Page
    {
        protected void ExecuteQuery(string sql, GridView users)
        {
            var connStr = ConfigurationManager.ConnectionStrings["DB2LocalConnection"].ToString();
            
            //using (DB2Connection connnection = new DB2Connection(connStr))
            //{
            //    using (DB2Command cmd = connnection.CreateCommand())
            //    {
            //        cmd.CommandText = sql;
            //        DB2DataAdapter da = new DB2DataAdapter(cmd);
            //        DataSet ds = new DataSet();
            //        da.Fill(ds);
            //        users.DataSource = ds;
            //        users.DataBind();
            //    }
            //}
            
        }
    }
}