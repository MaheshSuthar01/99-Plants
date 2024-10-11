using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PLANTS.Login_page
{
    public partial class sign_up : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {

            if(isformvaild())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PlantsDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Email,Password,Usertype) Values('" + username.Text + "','" + email.Text + "', '" + password.Text + "','User')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Registration Successfully done'); </script>");
                    clr();
                    con.Close();
                    Response.Redirect("~/Login_page/login.aspx");
                }
                

            }
            else
            {
                Response.Write("<script> alert('Registration failed'); </script>");
                
            }

        }

        private bool isformvaild()
        {
            if(username.Text =="")
            {
                Response.Write("<script> alert('username not vaild'); </script>");
                username.Focus();
                return false;
            }
            else if(password.Text == "")
            {
                Response.Write("<script> alert('password not vaild'); </script>");
                password.Focus();
                return false;
            }
            else if (password.Text != con_password.Text)
            {
                Response.Write("<script> alert('confirm password not vaild'); </script>");
                con_password.Focus();
                return false;
            }
            else if (email.Text == "")
            {
                Response.Write("<script> alert('email not vaild'); </script>");
                email.Focus();
                return false;
            }
            return true;
        }
        private void clr()
        {
            username.Text = string.Empty;
            password.Text = string.Empty;
            con_password.Text = string.Empty;
            email.Text = string.Empty;
        }
    }
}