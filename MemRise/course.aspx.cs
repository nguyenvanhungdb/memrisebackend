using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MemRise
{
    public partial class course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnTrangChu_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void btnHocToeic_Click(object sender, EventArgs e)
        {
            Response.Redirect("4level.aspx");
        }
        protected void btnKhoaHoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }

        protected void btnBlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("blog.aspx");
        }
    }
}