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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.Cookies["UNAME"] !=null && Request.Cookies["UPWD"] !=null)
                {
                    username.Text = Request.Cookies["UNAME"].Value;
                    password.Text = Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PlantsDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@password ", con);
                cmd.Parameters.AddWithValue("@username", username.Text);

                cmd.Parameters.AddWithValue("@password", password.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows .Count !=0)
                {
                    if(CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = username.Text;
                        Response.Cookies["UPWD"].Value = password.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["UPSW"].Expires = DateTime.Now.AddDays(10);

                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["UPSW"].Expires = DateTime.Now.AddDays(-1);
                    }

                    string Utype;
                    Utype = dt.Rows[0][4].ToString().Trim();

                    if(Utype == "User")
                    {
                        Session["Username"] = username.Text;
                        Response.Redirect("~/Main_page/plants.aspx");
                    }
                    if (Utype == "Admin")
                    {
                        Session["Username"] = username.Text;
                        Response.Redirect("~/AdminHomePage.aspx");
                    }
                }
                else
                {
                    Response.Write("<script> alert('Invaild username and password'); </script>");
                    Response.Write("<script> alert('Login failed'); </script>");
                    //lblError.Text = "Invaild username and password";
                }

                //Response.Write("<script> alert('Login Successfully done'); </script>");
                clr();
                con.Close();

            }
        }

        private void clr()
        {
            username.Text = string.Empty;
            password.Text = string.Empty;
            username.Focus();
        }
    }
}