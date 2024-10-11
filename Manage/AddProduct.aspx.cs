using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace PLANTS.Manage
{
    public partial class AddProduct : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["PlantsDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindCategory();
               
               
            }
        }

       

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count !=0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtProductName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
                cmd.Parameters.AddWithValue("@PSelPrice", txtSellingPrice.Text);
                cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PQuanitiy", txtQuanitity.Text);
                cmd.Parameters.AddWithValue("@Category", ddlCategory.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Image", fuImg.FileName);
                con.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

                //insert and Upload Image
                fuImg.SaveAs(Server.MapPath("~/Images/") + fuImg.FileName);

                Response.Write("<script> alert('Product Added Successfully'); </script>");
                txtProductName.Text = string.Empty;
                txtPrice.Text = string.Empty;
                txtQuanitity.Text = string.Empty;
                txtSellingPrice.Text = string.Empty;
                ddlCategory.SelectedItem.Text = string.Empty;
                
            }
        }

        

        
    }
}