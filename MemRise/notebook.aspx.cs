using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MemRise
{
    public partial class notebook : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["MemriseDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSentences();
            }
        }

        private void LoadSentences(string keyword = "")
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT EnglishSentence, VietnameseTranslation FROM NotebookSentences";

                if (!string.IsNullOrEmpty(keyword))
                {
                    query += " WHERE LOWER(EnglishSentence) LIKE @keyword OR LOWER(VietnameseTranslation) LIKE @keyword";
                }

                SqlCommand cmd = new SqlCommand(query, conn);
                if (!string.IsNullOrEmpty(keyword))
                {
                    cmd.Parameters.AddWithValue("@keyword", "%" + keyword.ToLower() + "%");
                }

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvSentences.DataSource = dt;
                gvSentences.DataBind();

                lblMessage.Text = dt.Rows.Count == 0 ? "Không tìm thấy kết quả phù hợp." : "";
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtSearch.Text.Trim();
            LoadSentences(keyword);
        }

        protected void btnTrangChu_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void btnCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }
        protected void btnBlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("blog.aspx");
        }
        protected void btnStart_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }
    }
}
