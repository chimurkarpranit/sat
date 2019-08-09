using System;
using System.IO;

namespace Day9_10
{
    public partial class PageEventModified : System.Web.UI.Page
    {
        string FileName = string.Empty; //variable for filename
        StreamReader str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Page_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();        
            Response.Redirect(AllMessage.errorPageURL);
            Server.ClearError();
        }
        protected void ErrorButtonClick2(object sender, EventArgs e)
        {
            try
            {
                string path = file1.Text;
                FileName = Server.MapPath(path);
                str = File.OpenText(FileName);
                filedata2.Text = str.ReadToEnd();
                str.Close();
            }
            catch
            {
                Page_Error(sender, e);
            }
        }        
    }
}