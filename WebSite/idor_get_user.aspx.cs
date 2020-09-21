using System;
using System.Web;

namespace WebSite
{
	public partial class idor_get_user : MsSqlPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			lblUserIdSession.Text = Session["UserID"].ToString();
			var id = Request.QueryString["id"];

			if (true) // missing check if Session["UserID"] is allowed to access this resource (he should only be able to access his own data)
			{
				var sql = "select * from users where id='" + id + "'";
				lblUserId.Text = id;
				ExecuteQuery(sql, users);
			}
			else
			{
				throw new HttpException(403, "Forbidden");
			}
		}


	}
}