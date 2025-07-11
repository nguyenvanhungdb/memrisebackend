using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MemRise
{
    public partial class vocabulary1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadVocabulary();
            }
        }
        protected void btnLearn_Click(object sender, EventArgs e)
        {
            Response.Redirect("learn.aspx");
        }
        protected void btnTrangChu_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
        protected void btnStart_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }
        protected void btnBlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("blog.aspx");
        }
        protected void btnSen_Click(object sender, EventArgs e)
        {
            Response.Redirect("notebook.aspx");
        }
        protected void btnCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }
        
        private void LoadVocabulary()
        {
            // Lấy chuỗi kết nối từ Web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MemriseDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT Word, Meaning FROM Vocabulary";


                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                try
                {
                    conn.Open();
                    adapter.Fill(dt);

                    // Gán dữ liệu cho control hiển thị, ví dụ GridView1
                    gvWord.DataSource = dt;
                    gvWord.DataBind();
                }
                catch (Exception ex)
                {
                    // Hiển thị lỗi nếu có
                    Response.Write("Lỗi: " + ex.Message);
                }
            }
        }
    }
}