using System;
using System.IO;

namespace WebSite
{
    public partial class path_traversal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            string[] keys = Request.Form.AllKeys;
            var value = "";
            for (int i = 0; i < keys.Length; i++)
            {
                // here you get the name eg test[0].quantity
                // keys[i];
                // to get the value you use
                value = Request.Form[keys[i]];
                dddd.Text += keys[i] + " = " + value + "<br>";
            }
            */
            if (Request.Form["File01Button"] != null)
            {
                btnGetFile01_Click(sender, e);
            }
            else if (Request.Form["File02Button"] != null)
            {
                btnGetFile02_Click(sender, e);
            }
            else if (Request.Form["File03Button"] != null)
            {
                btnGetFile03_Click(sender, e);
            }
        }

        protected void btnGetFile01_Click(object sender, EventArgs e)
        {
            var testFileName = Request.Form["File01"];
            var fileSeparator = Path.DirectorySeparatorChar;

            var relativePathToTestFilesParentDir = fileSeparator + "pathTraversal" + fileSeparator + "testFilesParent";
            var relativePathToTestFilesChildDir = relativePathToTestFilesParentDir + fileSeparator + "testFilesChild" + fileSeparator;
            var absolutePathToTestFilesChildDir = Server.MapPath(relativePathToTestFilesChildDir);
            var absolutePathToTestFile = absolutePathToTestFilesChildDir + testFileName;

            outputTxt.Text = "Access to the following file created: " + absolutePathToTestFile + "<br>";

            var fileExistsMessage = "And file already exists.";
            var fileDoesNotExistMessage = "But file does not exist.";

            if (File.Exists(absolutePathToTestFile))
            {
                outputTxt.Text += fileExistsMessage;
            }
            else
            {
                outputTxt.Text += fileDoesNotExistMessage;
            }
        }

        protected void btnGetFile02_Click(object sender, EventArgs e)
        {
            var testFileName = Request.Form["File02"];
            var fileSeparator = Path.DirectorySeparatorChar;

            var relativePathToTestFilesParentDir = fileSeparator + "pathTraversal" + fileSeparator + "testFilesParent";
            var relativePathToTestFilesChildDir = relativePathToTestFilesParentDir + fileSeparator + "testFilesChild" + fileSeparator;
            var absolutePathToTestFilesChildDir = Server.MapPath(relativePathToTestFilesChildDir);
            var absolutePathToTestFile = absolutePathToTestFilesChildDir + "." + testFileName;

            outputTxt.Text = "Access to the following file created: " + absolutePathToTestFile + "<br>";

            var fileExistsMessage = "And file already exists.";
            var fileDoesNotExistMessage = "But file does not exist.";

            if (File.Exists(absolutePathToTestFile))
            {
                outputTxt.Text += fileExistsMessage;
            }
            else
            {
                outputTxt.Text += fileDoesNotExistMessage;
            }
        }

        protected void btnGetFile03_Click(object sender, EventArgs e)
        {
            var testFileName = Request.Form["File03"];
            var absolutePathToTestFile = testFileName;

            outputTxt.Text = "Access to the following file created: " + absolutePathToTestFile + "<br>";

            var fileExistsMessage = "And file already exists.";
            var fileDoesNotExistMessage = "But file does not exist.";

            if (File.Exists(absolutePathToTestFile))
            {
                outputTxt.Text += fileExistsMessage;
            }
            else
            {
                outputTxt.Text += fileDoesNotExistMessage;
            }
        }

    }
}