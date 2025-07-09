using System;
using System.Configuration;
using System.Data.SqlClient;

namespace MemRise
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblEmailError.Text = "";
            lblPasswordError.Text = "";
            lblError.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            bool isValid = true;

            if (string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                lblEmailError.Text = "Vui lòng nhập email.";
                isValid = false;
            }

            if (string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblPasswordError.Text = "Vui lòng nhập mật khẩu.";
                isValid = false;
            }

            if (!isValid)
                return;

            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["MemriseDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    int count = (int)cmd.ExecuteScalar();

                    if (count == 1)
                    {
                        // Đăng nhập thành công
                        Session["email"] = email;
                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        lblError.Text = "Email hoặc mật khẩu không đúng.";
                    }
                }
            }
        }
    }
}
