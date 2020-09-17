using System;
using System.Reflection;

namespace WebSite
{
    public partial class xssContextMatrix : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var testcase = Request.QueryString["testcase"];
            if (testcase != null)
            {
                outputPanel.Visible = true;

                var payload = Request.QueryString["payload"];
                bool singlePrint = (Request.QueryString["singlePrint"] != null && Request.QueryString["singlePrint"].Equals("on"));

                MethodInfo methodInfo = this.GetType().GetMethod("testcase" + testcase, BindingFlags.NonPublic | BindingFlags.Instance);
                methodInfo.Invoke(this, new object[] { singlePrint, payload });
            }
            else
            {
                outputPanel.Visible = false;
            }
        }

        protected void testcase1(bool singlePrint, string payload)
        {
            lblTestCase.Text = "1: Content (No concatenation)";
            output.Text = payload;
        }

        protected void testcase2(bool singlePrint, string payload)
        {
            lblTestCase.Text = "2: Double-quoted Attr (No concatenation)";
            if (singlePrint)
            {
                output.Text = "<img src=\"" + payload + "\" />";
            }
            else
            {
                output.Text += "<img src=\"";
                output.Text += payload;
                output.Text += "\" />";
            }
        }

        protected void testcase3(bool singlePrint, string payload)
        {
            lblTestCase.Text = "3: Single-quoted Attr (No concatenation)";
            if (singlePrint)
            {
                output.Text = "<img src=\'" + payload + "\' />";
            }
            else
            {
                output.Text += "<img src=\'";
                output.Text += payload;
                output.Text += "\' />";
            }
        }

        protected void testcase4(bool singlePrint, string payload)
        {
            lblTestCase.Text = "4: Unquoted Attr (No concatenation)";
            if (singlePrint)
            {
                output.Text = "<img src=" + payload + " />";
            }
            else
            {
                output.Text += "<img src=";
                output.Text += payload;
                output.Text += " />";
            }
        }

        protected void testcase5(bool singlePrint, string payload)
        {
            lblTestCase.Text = "5: Attribute Name (No concatenation)";
            if (singlePrint)
            {
                output.Text = "<img " + payload + "='100' />";
            }
            else
            {
                output.Text += "<img ";
                output.Text += payload;
                output.Text += "='100' />";
            }
        }

        protected void testcase6(bool singlePrint, string payload)
        {
            lblTestCase.Text = "6: Content (Payload as Prefix)";
            if (singlePrint)
            {
                output.Text = payload + "foo";
            }
            else
            {
                output.Text += payload;
                output.Text += "foo";
            }
        }

        protected void testcase7(bool singlePrint, string payload)
        {
            lblTestCase.Text = "7: Double-quoted Attr (Payload as Prefix)";
            if (singlePrint)
            {
                output.Text = "<img src=\"" + payload + "foo\" />";
            }
            else
            {
                output.Text += "<img src=\"";
                output.Text += payload;
                output.Text += "foo\" />";
            }
        }

        protected void testcase8(bool singlePrint, string payload)
        {
            lblTestCase.Text = "8: Single-quoted Attr (Payload as Prefix)";
            if (singlePrint)
            {
                output.Text = "<img src=\'" + payload + "foo\' />";
            }
            else
            {
                output.Text += "<img src=\'";
                output.Text += payload;
                output.Text += "foo\' />";
            }
        }

        protected void testcase9(bool singlePrint, string payload)
        {
            lblTestCase.Text = "9: Unquoted Attr (Payload as Prefix)";
            if (singlePrint)
            {
                output.Text = "<img src=" + payload + "foo />";
            }
            else
            {
                output.Text += "<img src=";
                output.Text += payload;
                output.Text += "foo />";
            }
        }

        protected void testcase10(bool singlePrint, string payload)
        {
            lblTestCase.Text = "10: Attribute Name (Payload as Prefix)";
            if (singlePrint)
            {
                output.Text = "<img " + payload + "foo='100' />";
            }
            else
            {
                output.Text += "<img ";
                output.Text += payload;
                output.Text += "foo='100' />";
            }
        }

        protected void testcase11(bool singlePrint, string payload)
        {
            lblTestCase.Text = "11: Content (Payload as Suffix)";
            if (singlePrint)
            {
                output.Text = "foo" + payload;
            }
            else
            {
                output.Text += "foo";
                output.Text += payload;
            }
        }

        protected void testcase12(bool singlePrint, string payload)
        {
            lblTestCase.Text = "12: Double-quoted Attr (Payload as Suffix)";
            if (singlePrint)
            {
                output.Text = "<img src=\"foo" + payload + "\" />";
            }
            else
            {
                output.Text += "<img src=\"foo";
                output.Text += payload;
                output.Text += "\" />";
            }
        }

        protected void testcase13(bool singlePrint, string payload)
        {
            lblTestCase.Text = "13: Single-quoted Attr (Payload as Suffix)";
            if (singlePrint)
            {
                output.Text = "<img src=\'foo" + payload + "\' />";
            }
            else
            {
                output.Text += "<img src=\'foo";
                output.Text += payload;
                output.Text += "\' />";
            }
        }

        protected void testcase14(bool singlePrint, string payload)
        {
            lblTestCase.Text = "14: Unquoted Attr (Payload as Suffix)";
            if (singlePrint)
            {
                output.Text = "<img src=foo" + payload + " />";
            }
            else
            {
                output.Text += "<img src=foo";
                output.Text += payload;
                output.Text += " />";
            }
        }

        protected void testcase15(bool singlePrint, string payload)
        {
            lblTestCase.Text = "15: Attribute Name (Payload as Suffix)";
            if (singlePrint)
            {
                output.Text = "<img foo" + payload + "='100' />";
            }
            else
            {
                output.Text += "<img foo";
                output.Text += payload;
                output.Text += "='100' />";
            }
        }
    }
}