using System;
using System.IO;
using System.Web.UI;

namespace Day9_10
{
    public partial class ReadFile : Page
    {
        string FileName = string.Empty; //variable for filename
        StreamReader str;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ErrorButtonClick(object sender, EventArgs e)
        {
            try
            {
                FileName = Server.MapPath("Fil.txt");
                str = File.OpenText(FileName);
                filedata.Text = str.ReadToEnd();
                str.Close();
            }
            catch (FileNotFoundException f)
            {
                filedata.Text = f.Message.ToString();//Exception if file not present
            }
        }
    }
}