using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PLANTS.Main_page
{
    public partial class Bonsai_plants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                user.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }
        //add to wishlist
        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login_page/login.aspx");
            Session["Username"] = null;
        }

        protected void AddToWishList_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList2_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList3_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList4_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList5_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList6_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList7_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList8_Click(object sender, EventArgs e)
        {

        }

        protected void AddToWishList9_Click(object sender, EventArgs e)
        {

        }
    }
}