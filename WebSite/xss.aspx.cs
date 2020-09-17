using System;
// using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class xss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (string strKey in Request.QueryString.AllKeys)
            {
                payloadText.Text += "<tr><td>" + Request.QueryString[strKey] + "</td></tr>";
            }
            /*
            Menu menu = this.Master.FindControl("NavbarMenu") as Menu;
            foreach (MenuItem item in menu.Items)
            {
                string url = ResolveUrl(item.NavigateUrl);
                string pageUrl = Request.RawUrl;
                //if (url.Contains(pageUrl))
                //{
                //    item.Selected = true;
                //}
            }
            */
        }
    }
}