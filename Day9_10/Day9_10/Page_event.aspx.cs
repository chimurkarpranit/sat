using System;
using System.IO;

namespace Day9_10
{
    public partial class Page_event : System.Web.UI.Page
    {
        string FileName = string.Empty; //variable for filename
        StreamReader str;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ErrorButtonClick1(object sender, EventArgs e)
        {
            try
            {
                string path = file1.Text;
                FileName = Server.MapPath(path);
                str = File.OpenText(FileName);
                filedata1.Text = str.ReadToEnd();
                str.Close();
            }
            catch (Exception)
            {
                Page_Error(sender, e);
            }
        }
        protected void Page_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            Server.ClearError();
            Response.Write(AllMessage.strPageErrorEvent);
        }
    }
}