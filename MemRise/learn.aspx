<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="learn.aspx.cs" Inherits="MemRise.learn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Học từ vựng</title>
    <link rel="stylesheet" href="css/learn.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
  <form id="form1" runat="server">
    <header class="site-header">
    <div class="logo">
        <img src="images/logo.jpg" alt="Logo" />
    </div>
    <nav class="menu">
        <asp:LinkButton ID="btnHome" runat="server" CssClass="menu-item" OnClick="btnHome_Click">Trang Chủ</asp:LinkButton>
        <asp:LinkButton ID="btnCourse" runat="server" CssClass="menu-item" OnClick="btnCourse_Click">Khóa học</asp:LinkButton>
        <asp:LinkButton ID="btnBlog" runat="server" CssClass="menu-item" OnClick="btnBlog_Click">Blog</asp:LinkButton>
    </nav>
</header>
      <br />

    <div class="progress-wrapper" aria-label="Quiz progress">
  <div class="progress-container" role="progressbar" aria-valuemin="0" aria-valuemax="100">
    <div id="progressFill" class="progress-fill" style="width: <%= progressWidth %>%;"></div>
  </div>

  <div class="progress-number" aria-live="polite" aria-atomic="true">
    <asp:Label ID="lblProgressText" runat="server" Text="0/10"></asp:Label>
  </div>

</div>


      <main class="main-content">
        <p id="lblInstruction" runat="server" class="instruction">Pick the correct answer</p>

        <h2 class="question">
    <asp:Label ID="lblQuestion" runat="server" ></asp:Label>
      </h2>

      </main>
        <div class="answer-grid">
  <div><asp:LinkButton ID="btnAns1" runat="server" CssClass="answer-btn" OnClick="btnAns_Click" /></div>
  <div><asp:LinkButton ID="btnAns2" runat="server" CssClass="answer-btn" OnClick="btnAns_Click" /></div>
  <div><asp:LinkButton ID="btnAns3" runat="server" CssClass="answer-btn" OnClick="btnAns_Click" /></div>
  <div><asp:LinkButton ID="btnAns4" runat="server" CssClass="answer-btn" OnClick="btnAns_Click" /></div>
</div> <br />
        <asp:Button ID="btnNext" runat="server" Text="Câu tiếp theo" CssClass="next-btn" OnClick="btnNext_Click" Visible="false" />

<asp:Label ID="lblResult" runat="server" CssClass="result-label" Text=""></asp:Label> <br />
<asp:Button ID="btnRestart" runat="server" Text="Làm bài test khác" CssClass="restart-button" OnClick="btnRestart_Click" Visible="false" />

    </div>
  </form>
</body>
</html>

