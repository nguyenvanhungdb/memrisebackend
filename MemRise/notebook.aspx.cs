using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MemRise
{
    public partial class notebook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Mặc định hiện tất cả hàng
                foreach (TableRow row in wordTable.Rows)
                {
                    row.Visible = true;
                }
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void btnStart_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtSearch.Text.Trim().ToLower();

            foreach (TableRow row in wordTable.Rows)
            {
                // Bỏ qua dòng tiêu đề (nếu có)
                if (row.Cells.Count == 0) continue;

                TableCell cellTiengAnh = row.Cells[0];
                string textTiengAnh = cellTiengAnh.Text.Trim().ToLower();

                // So khớp keyword
                if (textTiengAnh.Contains(keyword) || keyword == "")
                {
                    row.Visible = true;
                }
                else
                {
                    row.Visible = false;
                }
            }
        }
    }
}