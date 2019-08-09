using System;
using System.IO;

namespace Day9_10
{
    public partial class Trace : System.Web.UI.Page
    {
        private static string log = string.Empty; //log variable
        string FileName = string.Empty; //variable for filename
        StreamReader str;
        public string TraceLog  //TraceLog Property for Trace Log display
        {
            get
            { return log = "<a href=\"Trace.axd \">Trace Log</a>"; }
            set
            { Trace.IsEnabled = true; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ErrorButtonClick4(object sender, EventArgs e)
        {
            try
            {
                string path = file4.Text;
                FileName = Server.MapPath(path);
                str = File.OpenText(FileName);
                filedata4.Text = str.ReadToEnd();
                str.Close();
            }
            catch
            {
                Page_Error(sender, e);
            }
        }
        public void Page_Error(object sender, System.EventArgs e)
        {
            if (Trace.IsEnabled)
            {
                Trace.Warn(AllMessage.error, "", Server.GetLastError());
                Server.ClearError();
                Response.Write(TraceLog);
            }
        }        
    }
}