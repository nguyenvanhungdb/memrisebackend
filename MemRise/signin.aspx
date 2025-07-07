<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="signin.aspx.cs" Inherits="MemRise.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="css/signin.css" />
</head>
<body>
  <form id="form1" runat="server">
    <header>
      <div class="logo">MEM<br />RISE</div>
    </header>

    <div class="container">
      <h1>Đăng nhập để có cảm hứng<br />và học tập nhanh hơn</h1>

      <asp:Button runat="server" Text="Đăng nhập với Google" CssClass="btn google" ID="btnGoogle" />
      <asp:Button runat="server" Text="Đăng nhập với Facebook" CssClass="btn facebook" ID="btnFacebook" />
      <asp:Button runat="server" Text="Đăng nhập với Apple" CssClass="btn apple" ID="btnApple" />

      <div class="divider">hoặc</div>

      <div>
          <label for="txtEmail">Email:</label><br />
          <asp:TextBox ID="txtEmail" runat="server" CssClass="input" TextMode="Email" Placeholder="abc@gmail.com"/> <br />
          <asp:Label ID="lblEmailError" runat="server" CssClass="error" ForeColor="Red" />
      </div>

      <label for="txtPassword">Mật khẩu:</label>
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input" Placeholder="********"></asp:TextBox>
      <asp:Label ID="lblPasswordError" runat="server" CssClass="error" ForeColor="Red"></asp:Label>

      <a href="#" class="forgot">Quên mật khẩu!</a>

      <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="signin-btn" OnClick="btnLogin_Click" />

      <asp:Label ID="lblError" runat="server" CssClass="error" ForeColor="Red"></asp:Label>

      <p class="signup-text">Chưa có tài khoản? <a href="signup.aspx">Đăng kí ngay!</a></p>
    </div>

    <footer>
      <div class="footer-content">
        <a href="#"><img src="images/icon-home.png" alt=""> About</a>
        <a href="#"><img src="images/icon-person.png" alt=""> Blog</a>
        <a href="#"><img src="images/icon-return.png" alt=""> Terms</a>
        <a href="#"><img src="images/icon-mailbox.png" alt=""> Privacy</a>
        <a href="#"><img src="images/icon-heart.png" alt=""> Contact</a>
      </div>
      <p>© 2025 Memrise</p>
    </footer>
  </form>
</body>
</html>
