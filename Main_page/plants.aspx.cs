using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PLANTS.Main_page
{
    public partial class plants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            



            DLbind();
            if (Session ["Username"]!=null)
            {
                user.Text =  Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }

        

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("plants_for_house.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("plants_for_office.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bonsai_plants.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("plants_for_house.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("plants_for_office.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("gift_plants.aspx");
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login_page/login.aspx");
            Session["Username"] = null;

        }


        //datalist product show in home page
        protected void DLbind()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PlantsDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblProduct", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }
        }

        protected void sendmessage_Click(object sender, EventArgs e)
        {
            
        }

        protected void AddTOCart_Click(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddToCart.aspx?PID=" + e.CommandArgument.ToString() + "&Quantity=" + dlist.SelectedItem.ToString());
        }
    }
}
