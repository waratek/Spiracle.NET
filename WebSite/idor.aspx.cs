using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
	public partial class idor : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
			// user is currently authenticated as userID 2
			context.Session["UserID"] = 2;

            if (context.Session["UserID"] != null)
            {
                String userId = context.Session["UserID"].ToString();
                lblWelcome.Text = "You are authenticated as UserID: " + userId;
            }
 
        }
	}
}