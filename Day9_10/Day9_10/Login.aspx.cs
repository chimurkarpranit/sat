using System;
using System.Text;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace Day9_10
{
    public partial class Login : System.Web.UI.Page
    {
        StringBuilder sb;
        public string SqlQuery { get; set; }

        string conString = ConfigurationManager.ConnectionStrings["DBConnection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelInvalid.Visible = false; //visibility false
        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            sb = new StringBuilder();
            try
            {
                MySqlConnection con = new MySqlConnection(conString);
                sb = new StringBuilder("select ");
                sb.Append("* ");
                sb.Append("from ");
                sb.Append("employees ");
                sb.Append("where ");
                sb.Append("FirstName ");
                sb.Append("= ");
                sb.Append(LabelUserName.Text);
                sb.Append(" and ");
                sb.Append("LastName ");
                sb.Append("= ");
                sb.Append(LabelPassword.Text);
                sb.Append(";");
                SqlQuery = sb.ToString();
                MySqlDataAdapter sda = new MySqlDataAdapter(SqlQuery, conString);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["UserName"] = LabelUserName.Text; //Username stored in Session
                    Session["PassWord"] = LabelPassword.Text; //PassWord stored in Session
                    Response.Redirect("Secure.aspx");
                }
                else
                {
                    LabelInvalid.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}