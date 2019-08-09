﻿using System;

namespace Day9_10
{
    public partial class Secure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                LabelMSG.Visible = false;
                if (Session["UserName"] != null)
                {
                    LabelMSG.Visible = true;
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}