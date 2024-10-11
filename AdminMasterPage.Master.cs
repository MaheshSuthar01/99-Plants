using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PLANTS
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
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
        //signout button
        protected void btnAdmin_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Login_page/login.aspx");
            Session["Username"] = null;
        }
        //manage button
        protected void btnManage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Manage/manage.aspx");
        }
    }
}