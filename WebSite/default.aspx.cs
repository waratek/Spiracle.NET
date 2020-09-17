using System;

namespace WebSite
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (var key in Request.Headers.AllKeys)
                Headers.Text += $"<b>{key}</b>={Request.Headers[key]} {Environment.NewLine}";

            foreach (var key in Request.Cookies.AllKeys)
                Cookies.Text += $"<b>{key}</b>={Request.Cookies.Get(key)} {Environment.NewLine}";
        }
    }
}