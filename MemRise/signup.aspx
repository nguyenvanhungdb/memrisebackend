<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="MemRise.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Đăng ký</title>
    <link rel="stylesheet" href="css/signup.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper"> 

            <header>
                <div class="logo">MEM<br />RISE</div>
            </header>

            <main>
                <div class="container">
                    <div class="left">
                        <img src="images/person-signup.png" alt="Promo Person" class="promo-image" />
                    </div>
                    <div class="right">
                        <h1>Đăng ký<br />và học tập ngay</h1>

                        <button type="button" class="btn google-btn">Đăng nhập với Google</button>
                        <button type="button" class="btn facebook-btn">Đăng nhập với Facebook</button>
                        <button type="button" class="btn apple-btn">Đăng nhập với Apple</button>
                        <br />
                        <p class="or">Hoặc đăng ký với email</p>

                        <asp:Label ID="lblGeneralError" runat="server" CssClass="error" ForeColor="Red" />

                        <div>
                            <label for="txtEmail">Email:</label><br />
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" TextMode="Email" Placeholder="abc@gmail.com"/> <br />
                            <asp:Label ID="lblEmailError" runat="server" CssClass="error" ForeColor="Red" />
                        </div>

                        <div>
                            <label for="txtPassword">Mật khẩu</label> <br />
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" Placeholder="********" /> <br />
                            <asp:Label ID="lblPasswordError" runat="server" CssClass="error" ForeColor="Red" />
                        </div>

                        <div class="note">
                            <p><strong>Đảm bảo mật khẩu của bạn:</strong></p>
                            <ul>
                                <li>Có 6 ký tự hoặc dài hơn</li>
                                <li>Không chứa khoảng trắng</li>
                            </ul>
                        </div>

                        <asp:Button ID="btnSignup" runat="server" Text="Đăng ký ngay" CssClass="submit-btn" OnClick="btnSignup_Click" />
                    </div>
                </div>
            </main>

            <footer>
                <div class="footer-content">
                    <a href="#"><img src="images/icon-home.png" alt="" /> About</a>
                    <a href="#"><img src="images/icon-person.png" alt="" /> Blog</a>
                    <a href="#"><img src="images/icon-return.png" alt="" /> Terms</a>
                    <a href="#"><img src="images/icon-mailbox.png" alt="" /> Privacy</a>
                    <a href="#"><img src="images/icon-heart.png" alt="" /> Contact</a>
                </div>
                <p>© 2025 Memrise</p>
            </footer>

        </div> 
    </form>
</body>

</html>
