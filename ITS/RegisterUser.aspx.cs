using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace ITS
{
    public partial class RegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string s = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
                HttpPostedFile postedFile = ProfileFileUpload.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(filename);

                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".gif")
                {
                    Stream stream = postedFile.InputStream;
                    BinaryReader binaryReader = new BinaryReader(stream);
                    Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                    using (SqlConnection con = new SqlConnection(s))
                    {
                        SqlCommand cmd = new SqlCommand("spInsertNewUser", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@usercategory", ComboBox1.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@user_fname", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@user_lname", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@user_username", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@user_password", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@user_gender", DropdownList1.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@user_dob", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@user_mobile", TextBox10.Text);
                        cmd.Parameters.AddWithValue("@user_email", TextBox11.Text);
                        cmd.Parameters.AddWithValue("@user_address", TextBox13.Text);
                        cmd.Parameters.AddWithValue("@user_picture", bytes);
                        try
                        {
                            con.Open();
                            int value = (int)cmd.ExecuteScalar(); // as procedure return number
                            if (value == 1)
                            {
                                Response.Redirect("~/MainLogin.aspx?register=successfull");
                            }
                            else
                            {
                                Label1.Visible = true;
                                Label1.Text = "Email is already in use";
                                Label1.ForeColor = System.Drawing.Color.Red;
                            }

                        }
                        catch (Exception ex)
                        {
                            Label1.Visible = true;
                            Label1.Text = "Something went wrong! Contact your devloper </br>" + ex.Message;
                        }
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