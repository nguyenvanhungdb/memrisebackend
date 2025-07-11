using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MemRise
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }
        
        
        protected void btnStartCourse_Click(object sender, EventArgs e)
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

        protected void btnCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }

        protected void btnPhrases_Click(object sender, EventArgs e)
        {
            Response.Redirect("notebook.aspx"); 
        }

        protected void btnBlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("blog.aspx"); 
        }

        protected void btnStartLearning_Click(object sender, EventArgs e)
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

        protected void btnBeginCourse_Click(object sender, EventArgs e)
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