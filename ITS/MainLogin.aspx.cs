using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace ITS
{
    public partial class MainLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string s = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        //for login
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                using (SqlConnection con = new SqlConnection(s))
                {
                    SqlCommand cmd = new SqlCommand("spUsrLogin", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@usercategory", ComboBox1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@user_username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@user_password", txtPassword.Text);
                    try
                    {
                        con.Open();
                        int value = (int)cmd.ExecuteScalar();
                        if (value == 1 && ComboBox1.Text == "0")
                        {
                            Response.Redirect("~/admin/Index.aspx");
                        }
                        if (value == 1 && ComboBox1.Text == "1")
                        {
                            Response.Redirect("mainmenu.aspx");
                        }
                        if (value == 1 && ComboBox1.Text == "2")
                        {
                            Response.Redirect("~/admin/Index.aspx");
                        }
                        else
                        {
                            Label1.Visible = true;
                            Label1.Text = "Use correct user...name and password</br>";
                        }

                    }
                    catch (Exception ex)
                    {
                        Label1.Visible = true;
                        Label1.Text = "Something went wrong! Contact your devloper </br>" + ex.Message;
                    }
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Please fill all the requirements";
            }

        }


    }
}