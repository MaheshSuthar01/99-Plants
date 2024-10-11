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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //category button events
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

       //add to wish list
        protected void AddToWishList_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("~/Main_page/WishList.aspx");
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }

        protected void AddToWishList2_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("~/Main_page/WishList.aspx");
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }

        protected void AddToWishList3_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("~/Main_page/WishList.aspx");
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }

        protected void AddToWishList4_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("~/Main_page/WishList.aspx");
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }

        protected void AddToWishList5_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("~/Main_page/WishList.aspx");
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }

        protected void AddToWishList6_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("~/Main_page/WishList.aspx");
            }
            else
            {
                Response.Redirect("~/Login_page/login.aspx");
            }
        }
    }
}