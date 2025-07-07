using System;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace MemRise
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            lblEmailError.Text = "";
            lblPasswordError.Text = "";
            lblGeneralError.Text = "";

            bool isValid = true;

            // Kiểm tra email
            if (string.IsNullOrWhiteSpace(email))
            {
                lblEmailError.Text = "Vui lòng nhập email.";
                isValid = false;
            }
            else if (!System.Text.RegularExpressions.Regex.IsMatch(email, @"^\S+@\S+\.\S+$"))
            {
                lblEmailError.Text = "Email không hợp lệ.";
                isValid = false;
            }

            // Kiểm tra mật khẩu
            if (string.IsNullOrWhiteSpace(password))
            {
                lblPasswordError.Text = "Vui lòng nhập mật khẩu.";
                isValid = false;
            }
            else if (password.Length < 6)
            {
                lblPasswordError.Text = "Mật khẩu phải có ít nhất 6 ký tự.";
                isValid = false;
            }
            else if (password.Contains(" "))
            {
                lblPasswordError.Text = "Mật khẩu không được chứa khoảng trắng.";
                isValid = false;
            }

            if (!isValid) return;

            string connectionString = WebConfigurationManager.ConnectionStrings["MemriseDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Kiểm tra email trùng
                string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email = @Email";
                SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
                checkCmd.Parameters.AddWithValue("@Email", email);

                int count = (int)checkCmd.ExecuteScalar();
                if (count > 0)
                {
                    lblEmailError.Text = "Email đã được đăng ký!";
                    return;
                }

                // Thêm người dùng mới
                string insertQuery = "INSERT INTO Users (Email, Password) VALUES (@Email, @Password)";
                SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                insertCmd.Parameters.AddWithValue("@Email", email);
                insertCmd.Parameters.AddWithValue("@Password", password); // Nên mã hóa mật khẩu

                insertCmd.ExecuteNonQuery();

                Response.Redirect("Signin.aspx");
            }
        }
    }
}
