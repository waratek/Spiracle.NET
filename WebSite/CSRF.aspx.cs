using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class CSRF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.AllKeys.Contains("name"))
            {
                MyLabelForText.Text += "POST Params: <br/>";
                foreach (var key in Request.Form.AllKeys)
                {
                    var s = $"<b>KEY</b>: {key} <b>VALUE</b>: {Request.Form[key]}  <br/>";
                    MyLabelForText.Text += s;
                }
            }

            if (Request.QueryString.AllKeys.Contains("name"))
            {
                MyLabelForText.Text += "GET Params: <br/>";
                foreach (var key in Request.QueryString.AllKeys)
                {
                    var s = $"<b>KEY</b>: {key} <b>VALUE</b>: {Request.QueryString[key]}  <br/>";
                    MyLabelForText.Text += s;
                }
            }
        }
    }
}