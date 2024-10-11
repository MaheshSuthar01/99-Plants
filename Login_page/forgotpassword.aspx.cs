using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Drawing;

namespace PLANTS.Login_page
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PlantsDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count !=0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();


                    //send Reset link via Email

                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hi ,"+Username+ ",<br/><br/>Click the link below to reset your password<br/> <br/> http://localhost:62977/Login_page/RecoverPassword.aspx?id="+myGUID;

                    MailMessage PasswordRecMail = new MailMessage("maheshjangid477@gmail.com", ToEmailAddress);

                    PasswordRecMail.Body = EmailBody;
                    PasswordRecMail.IsBodyHtml = true;
                    PasswordRecMail.Subject = "Reset Password ";
                    SmtpClient SMTP = new SmtpClient("SMTP.gmail.com" , 587);
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "maheshjangid477@gmail.com",
                        Password = "vcbgkwunjesflwny"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PasswordRecMail);

                    //-------------

                    lblResetPassMsg.Text = "Reset Link Send ! Check your email reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                }
                else
                {
                    lblResetPassMsg.Text = "OOPs ! This Email Does not Exist..Try agian";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();
                }
            }
        }
    }
}