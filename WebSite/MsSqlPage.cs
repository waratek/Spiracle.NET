using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI.WebControls;

namespace WebSite
{
    public class MsSqlPage : System.Web.UI.Page
    {
        protected void ExecuteQuery(string sql, GridView users)
        {
            var connStr = ConfigurationManager.ConnectionStrings["MsSQLConnection"].ToString();
            using (SqlConnection connnection = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql))
                {
                    //users.RowDataBound += users_RowDataBound;
                    users.RowCreated += users_RowCreated;
                    cmd.Connection = connnection;
                    cmd.Connection.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    users.DataSource = ds;
                    users.DataBind();                    
                }
            }
        }

        protected void users_RowCreated(object sender, GridViewRowEventArgs e)
        {
            foreach (TableCell cell in e.Row.Cells)
            {
                BoundField fldRef = (BoundField)((DataControlFieldCell)cell).ContainingField;
                fldRef.HtmlEncode = false;
            }
        }
    }
}