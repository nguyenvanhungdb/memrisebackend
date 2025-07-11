using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MemRise
{
    public partial class _4level : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void btnBlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("blog.aspx");
        }

        protected void btnFooterStart_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }

        protected void btnCourse1_Click(object sender, EventArgs e)
        {
            Response.Redirect("vocabulary1.aspx");
        }

        protected void btnCourse2_Click(object sender, EventArgs e)
        {
            Response.Redirect("vocabulary1.aspx");
        }

        protected void btnCourse3_Click(object sender, EventArgs e)
        {
            Response.Redirect("vocabulary1.aspx");
        }

        protected void btnCourse4_Click(object sender, EventArgs e)
        {
            Response.Redirect("vocabulary1.aspx");
        }
        protected void btn4level_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }
    }
}