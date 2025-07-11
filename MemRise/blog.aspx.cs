using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MemRise
{
    public partial class blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void btnStart_Click(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("signin.aspx");
            }
            else
            {
                Response.Redirect("course.aspx");
            }
        }
    }
}