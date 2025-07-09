<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notebook.aspx.cs" Inherits="MemRise.notebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mẫu câu thông dụng</title>
    <link rel="stylesheet" href="css/notebook.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
    <div>
      <img class="logo" src="images/logo.jpg" alt="Logo">
	</div>
    <nav class="buttons" aria-label="Primary navigation">
      <asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" CssClass="login-button" OnClick="btnLogin_Click" />
      <asp:Button ID="btnStartHeader" runat="server" Text="Bắt Đầu Học" CssClass="footer-btn-start" OnClick="btnStart_Click" />
    </nav>
    
  </header>
<section class="hero" aria-labelledby="hero-title" role="region">
    <div class="hero-content">
        <nav class="hero-breadcrumb" aria-label="Breadcrumb">
            <a href="#">Học Tiếng Anh</a>
            <span class="separator" aria-hidden="true"> > </span>
            <a href="#">Khóa học Tiếng Anh</a>
            <span class="separator" aria-hidden="true"> > </span>
            <a href="#">Sổ cụm từ thông dụng Tiếng Anh</a>
        </nav>
        <div class="hero-main-flex-container"> <div class="hero-flag-wrapper">
              <img src="images/img-flag.png" alt="Flag of United Kingdom" class="hero-flag" />
            </div>
            <div class="hero-text-content">
                <h1 id="hero-title" class="hero-title">Sổ cụm từ thông dụng tiếng Anh</h1>
                <p class="hero-subtitle">Tìm kiếm các từ và mẫu câu tiếng Anh bạn sẽ học cùng Memrise. Nhấn vào một từ để xem <strong><a href="#">các video và audio của người bản ngữ.</a></strong></p>
            </div>
        </div>
        </div>
  </section>
    <div class="sticky-header-wrapper">
        <section class="search-container" aria-label="Search English or Vietnamese words">
            <div class="search-wrapper">
    <asp:TextBox ID="txtSearch" runat="server" CssClass="search-input" placeholder="Search..." aria-label="Search English or Vietnamese words" />
    <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="footer-btn-start" OnClick="btnSearch_Click" />

                
            </div>
        </section>


        <section class="table-wrapper" aria-label="Table of English common phrases and Vietnamese translations">
            <div class="language-tabs" role="radiogroup" aria-label="Language selection">
                <div class="language-tab">
                    <label for="lang-en" tabindex="0" class="active-language-tab">
                        <img src="images/img-flag.png" alt="United Kingdom flag" class="flag-icon" />
                        Tiếng Anh (Anh Quốc)
                    </label>
                </div>
                <div class="language-tab">
                    <label for="lang-vi" tabindex="0">
                        <img src="images/img-vietnam-flag.png" alt="Vietnam flag" class="flag-icon" />
                        Tiếng Việt
                    </label>
                </div>
            </div>
        </section>
   </div> <section class="table-wrapper main-table-section" aria-label="Table of English common phrases and Vietnamese translations">
    <asp:Table ID="wordTable" runat="server" CssClass="translation-table">

    <asp:TableRow>
        <asp:TableCell>apple</asp:TableCell>
        <asp:TableCell>quả táo</asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell>book</asp:TableCell>
        <asp:TableCell>quyển sách</asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>cat</asp:TableCell>
        <asp:TableCell>con mèo</asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>dog</asp:TableCell>
        <asp:TableCell>con chó</asp:TableCell>
    </asp:TableRow>
</asp:Table>


    <nav class="pagination" aria-label="Pagination navigation">
      <button aria-label="Previous page" disabled><</button>
      <span class="page-num active-page" aria-current="page" tabindex="0">1</span>
      <button>2</button>
      <button>3</button>
      <button>4</button>
      <button>5</button>
      <span aria-hidden="true">...</span>
      <button>322</button>
      <button aria-label="Next page">></button>
    </nav>
  </section>
        </div>

    <footer role="contentinfo">
    <div class="container">
      <img class="logo-img-footer" src="images/logo.jpg" alt="Logo"> 
      <asp:Button ID="btnStartFooter" runat="server" Text="Bắt đầu học" CssClass="footer-btn-start" OnClick="btnStart_Click" /> <br /> 
      <nav aria-label="Social media links" class="social-icons">
        <a href="#" aria-label="Facebook" tabindex="0" title="Facebook" rel="noopener noreferrer" target="_blank">
          <svg width="18" height="18" fill="currentColor" aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path d="M22.675 0h-21.35C.6 0 0 .6 0 1.342v21.317c0 .742.6 1.341 1.325 1.341h11.536v-9.295H9.911v-3.622h2.95V8.41c0-2.92 1.783-4.512 4.388-4.512 1.246 0 2.315.092 2.626.134v3.04h-1.798c-1.41 0-1.684.67-1.684 1.655v2.168h3.363l-.44 3.622h-2.923V24h5.736c.725 0 1.325-.6 1.325-1.341V1.342C24 .6 23.4 0 22.675 0z" /></svg>
        </a>
        <a href="#" aria-label="Twitter" tabindex="0" title="Twitter" rel="noopener noreferrer" target="_blank">
          <svg width="18" height="18" fill="currentColor" aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path d="M23.954 4.569a10 10 0 0 1-2.825.775 4.958 4.958 0 0 0 2.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 0 0-8.388 4.482c-4.083-.195-7.702-2.159-10.126-5.134a4.822 4.822 0 0 0-.663 2.475c0 1.708.87 3.214 2.188 4.099a4.904 4.904 0 0 1-2.229-.616v.06a4.936 4.936 0 0 0 3.946 4.833 4.9 4.9 0 0 1-2.224.084c.623 1.946 2.444 3.362 4.604 3.403a9.868 9.868 0 0 1-6.102 2.104c-.396 0-.787-.023-1.17-.069a13.978 13.978 0 0 0 7.557 2.212c9.054 0 14.002-7.496 14.002-13.985 0-.208 0-.423-.015-.633a9.936 9.936 0 0 0 2.457-2.548l-.047-.02z"/></svg>
        </a>
        <a href="#" aria-label="YouTube" tabindex="0" title="YouTube" rel="noopener noreferrer" target="_blank">
          <svg width="18" height="18" fill="currentColor" aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path d="M10 15L15 12 10 9v6zm12-3c0-1.104-.896-2-2-2h-2.419l-.548-2.683C17.007 6.572 16.319 6 15.5 6h-7c-.819 0-1.507.572-1.533 1.317L6.419 10H4a2 2 0 0 0-2 2c0 1.104.896 2 2 2h2.419l.548 2.683c.026.746.714 1.317 1.533 1.317h7c.819 0 1.507-.571 1.533-1.317L17.581 14H20c1.104 0 2-.896 2-2z"/></svg>
        </a>
        <a href="#" aria-label="Instagram" tabindex="0" title="Instagram" rel="noopener noreferrer" target="_blank">
          <svg width="18" height="18" fill="currentColor" aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path d="M7 2C4.243 2 2 4.243 2 7v10c0 2.757 2.243 5 5 5h10c2.757 0 5-2.243 5-5V7c0-2.757-2.243-5-5-5H7zm5 4a5 5 0 1 1 0 10 5 5 0 0 1 0-10zm6.5-.75a1.25 1.25 0 1 1 0 2.5 1.25 1.25 0 0 1 0-2.5z"/></svg>
        </a>
      </nav>

      <div class="footer-links-wrapper" aria-label="Footer navigation links">
        <div class="footer-links-column" role="navigation" aria-labelledby="footer-col-1">
          <h3 id="footer-col-1" class="sr-only">Information</h3>
          <a href="#">Giới thiệu</a>
          <a href="#">Liên hệ</a>
          <a href="#">Câu hỏi thường gặp & Trợ giúp</a>
          <a href="#">Ứng dụng trên thiết bị di động</a>
          <a href="#">Các gói đăng ký</a>
          <a href="#">Đội ngũ</a>
          <a href="#">Blog Memrise</a>
          <a href="#">Blog Kỹ thuật lập trình</a>
        </div>
        <div class="footer-links-column" role="navigation" aria-labelledby="footer-col-2">
          <h3 id="footer-col-2" class="sr-only">Courses</h3>
          <a href="#">Học kĩ năng Listening</a>
          <a href="#">Học kĩ năng Reading</a>
          <a href="#">Học kĩ năng giao tiếp</a>
        </div>
        <div class="footer-links-column" role="navigation" aria-labelledby="footer-col-3">
          <h3 id="footer-col-3" class="sr-only">Course categories</h3>
          <a href="#">Khoá Học cơ bản</a>
          <a href="#">Khoá Học trung cấp</a>
          <a href="#">Khoá Học nâng cao</a>
        </div>
        <div class="footer-links-column" role="navigation" aria-labelledby="footer-col-4">
          <h3 id="footer-col-4" class="sr-only">Word clusters</h3>
          <a href="#">Số cụm từ, thành ngữ tiếng Anh</a>
          <a href="#">Số cụm từ tiếng Anh thông dụng</a>
          <a href="#">Số mẫu câu giao tiếp tiếng Anh</a>
        </div>
      </div>

      <div class="footer-bottom">
        <a href="#" tabindex="0">Điều Khoản Sử Dụng</a> | 
        <a href="#" tabindex="0">Chính Sách Bảo Mật</a> | 
        <a href="#" tabindex="0">Chính sách Cookie</a>
      </div>
    </div>
  </footer>
    </form>
</body>
</html>
