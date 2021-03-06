﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var redirectType = this.Request.QueryString["redirectType"];

            if (string.IsNullOrEmpty(redirectType)) return;
            
            var value = Request.QueryString["value"];

            switch (redirectType)
            {
                case "ResponseRedirectLocation":
                    {
                        Response.StatusCode = 301;
                        Response.Status = "301 Moved Permanently";
                        Response.RedirectLocation = value;
                        Response.End();

                        break;
                    }
                case "ResponseRedirect":
                    {
                        Response.Redirect(value);
                        break;
                    }
                case "HeaderRedirect":
                    {
                        Response.Headers.Add("Location", value);
                        Response.StatusCode = (int)HttpStatusCode.Redirect;
                        break;
                    }
                case "HardcodedResponseRedirectToGoogle":
                    {
                        Response.Redirect("http://www.google.com");
                        break;
                    }
                case "PartiallyHardcodedResponseRedirectToGoo":
                    {
                        Response.Redirect("http://www.goo" + value);
                        break;
                    }
                case "PartiallyHardcodedResponseRedirectTo":
                    {
                        Response.Redirect("http://" + value);
                        break;
                    }
            }
        }
    }
}