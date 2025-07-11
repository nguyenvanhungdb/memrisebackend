﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="MemRise.blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
    <link rel="stylesheet" href="css/blog.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
</head>
<body>
  <form id="form1" runat="server">
    <header>
      <div>
        <img class="logo" src="images/logo.jpg" alt="Logo" />
      </div>
      <nav class="buttons" aria-label="Primary navigation">
        <asp:LinkButton ID="btnLogin" CssClass="login" runat="server" OnClick="btnLogin_Click">Đăng Nhập</asp:LinkButton>
        <asp:LinkButton ID="btnHome" CssClass="login" runat="server" OnClick="btnHome_Click">Trang chủ</asp:LinkButton>
        <asp:LinkButton ID="btnStart" CssClass="start" runat="server" OnClick="btnStart_Click">Bắt Đầu Học</asp:LinkButton>

      </nav>
    </header>

    <main>
      <div class="container" role="main" aria-labelledby="memnews-title">
        <section class="hero-content" aria-describedby="memnews-desc">
          <h1 id="memnews-title" class="hero-title">MemNews</h1>
          <p id="memnews-desc" class="hero-desc">
            Articles to brighten your language learning journey. Read learning guides for different languages, Memrise learning methods, language learning news, motivational tips and more. Put together by Memrise's language specialists.
          </p>
        </section>

      <article class="hero-news-card" tabindex="0" aria-label="Featured news: Your 2025 New Year's Resolutions: how to learn a new language this year">
        <div class="hero-news-image">
          <img src="images/team-celebrating.jpg" alt="Happy Party" onerror="this.style.display='none';" />
          <div class="tags-container">
            <span class="tag" aria-label="Tag Language Learning">Language Learning</span>
            <span class="tag" aria-label="Tag Featured">Featured</span>
          </div>
        </div>
        <div class="hero-news-text">
          <h2 class="hero-news-title">Your 2025 New Year's Resolutions: how to learn a new language this year</h2>
          <p class="hero-news-desc">
            Achieve your New Year's resolutions in 2025! We tell you how to work on your new year goal so you get to speak naturally and confidently, . . .
          </p>
          <time class="hero-news-date" datetime="2025-07-06">06/07/2025</time>
        </div>
      </article>
    </div>
  </main>

  <section id="blogs-section" aria-labelledby="blogs-title">
    <div class="container">
      <h2 id="blogs-title" class="section-title">All The Blogs:</h2>
      <p class="section-desc">Discover mind-blowing language learning tips, stories from the world of languages, and more key advice to help you learn fast. And have fun while you're doing it.</p>

      <div class="filters" role="region" aria-label="Blog filters">
        <select class="filter-select" name="category" aria-label="Category filter">
          <option value="all" selected>Category: All</option>
          <option value="updates">Updates</option>
          <option value="tips">Tips</option>
          <option value="guides">Guides</option>
        </select>
        <select class="filter-select" name="date" aria-label="Date filter">
          <option value="all" selected>Date: All</option>
          <option value="2024">Tháng Một - 2024</option>
          <option value="2023">Tháng Sáu - 2023</option>
          <option value="2022">Tháng Mười Một - 2022</option>
          <option value="2021">Tháng Hai - 2021</option>
        </select>
      </div>

      <div class="blogs-grid" aria-live="polite" aria-atomic="true">
        <article class="blog-card" tabindex="0" aria-label="Blog: Cập nhật quan trọng: phiên bản mới của ứng dụng sắp ra mắt. Published 01/08/2024">
          <div class="blog-img-container">
            <img src="images/blog_6.png" alt="Ảnh 6" onerror="this.style.display='none';" />
          </div>
          <div class="blog-content">
            <h3>Cập nhật quan trọng: Phiên bản mới của ứng dụng sắp ra mắt!</h3>
            <p>Ngắn gọn: Nếu bạn có phiên bản cũ hơn của ứng dụng Memrise (xem ảnh chụp...</p>
            <div class="blog-meta">
              <time datetime="2025-04-15">15/04/2025</time>
            </div>
          </div>
        </article>

        <article class="blog-card" tabindex="0" aria-label="Blog: Sắp có thay đổi: một cách thông minh hơn để theo dõi tiến độ học của bạn. Published 22/05/2024">
          <div class="blog-img-container">
            <img src="images/blog_2.png" alt="Ảnh 2" onerror="this.style.display='none';" />
          </div>
          <div class="blog-content">
            <h3>Sắp có thay đổi: một cách thông minh hơn để theo dõi tiến độ học của bạn</h3>
            <p>Một hệ thống mới để theo dõi tiến độ học ngoại ngữ của bạn. Với hệ thống dựa...</p>
            <div class="blog-meta">
              <time datetime="2025-01-12">12/01/2025</time>
            </div>
          </div>
        </article>

        <article class="blog-card" tabindex="0" aria-label="Blog: Các thay đổi trong ứng dụng Memrise. Published 12/02/2024">
          <div class="blog-img-container">
            <img src="images/blog_4.jpg" alt="Ảnh 4" onerror="this.style.display='none';" />
          </div>
          <div class="blog-content">
            <h3>Các thay đổi trong ứng dụng Memrise</h3>
            <p>Blog cập nhật ngày 8/11/2024. Ứng dụng Memrise đang thay đổi. Đây sẽ là nơi bạn...</p>
            <div class="blog-meta">
              <time datetime="2025-06-01">01/06/2025</time>
            </div>
          </div>
        </article>

        <article class="blog-card" tabindex="0" aria-label="Blog: Hãy nói đi và nói sai. Published 21/03/2022">
          <div class="blog-img-container">
            <img src="images/blog_1.jpg" alt="Ảnh 1" onerror="this.style.display='none';" />
          </div>
          <div class="blog-content">
            <h3>Hãy nói đi và nói sai</h3>
            <p>Việc mắc sai lầm khi học một ngôn ngữ thực sự đang giúp bạn rất nhiều, đừng lo...</p>
            <div class="blog-meta">
              <time datetime="2022-03-21">21/03/2022</time>
              <span class="min-read" aria-label="Reading time zero minutes">0 Min Read</span>
            </div>
          </div>
        </article>

        <article class="blog-card highlighted" tabindex="0" aria-label="Blog: Hướng dẫn chào hỏi và chúc mừng trong tiếng Anh. Published 17/12/2021">
          <div class="blog-img-container">
            <img src="images/blog_3.jpg" alt="Ảnh 3" onerror="this.style.display='none';" />
          </div>
          <div class="blog-content">
            <h3>Hướng dẫn chào hỏi và chúc mừng trong tiếng Anh</h3>
            <p>Tất cả những cách khác nhau để chào hỏi trong tiếng Anh. Hãy học cách tạo mộ...</p>
            <div class="blog-meta">
              <time datetime="2021-12-17">17/12/2021</time>
            </div>
          </div>
        </article>

        <article class="blog-card" tabindex="0" aria-label="Blog: Học tiếng Anh Cơ Bản: Những Mẫu Câu Để Cải Thiện Tiếng Anh Của Bạn Ngay. Published 13/12/2021">
          <div class="blog-img-container">
            <img src="images/blog_5.jpg" alt="Ảnh 5" onerror="this.style.display='none';"/>
          </div>
          <div class="blog-content">
            <h3>Học tiếng Anh Cơ Bản: Những Mẫu Câu Để Cải Thiện Tiếng Anh Của Bạn Ngay</h3>
            <p>Các mẫu câu và mẹo học tiếng Anh cơ bản để cải thiện tiếng Anh của bạn ngay từ...</p>
            <div class="blog-meta">
              <time datetime="2021-12-13">13/12/2021</time>
            </div>
          </div>
        </article>

        <article class="blog-card" tabindex="0" aria-label="Blog: Học bằng cách đắm mình: Phương pháp học ngoại ngữ tốt nhất. Published 24/09/2021">
          <div class="blog-img-container">
            <img src="images/blog_7.jpg" alt="Ảnh 7" onerror="this.style.display='none';" />
          </div>
          <div class="blog-content">
            <h3>Học bằng cách đắm mình: Phương pháp học ngoại ngữ tốt nhất</h3>
            <p>Học bằng cách đắm mình là chìa khoá của thành công. Khám phá cách đắm mình vào...</p>
            <div class="blog-meta">
              <time datetime="2021-09-24">24/09/2021</time>
              <span class="min-read" aria-label="Reading time zero minutes">0 Min Read</span>
            </div>
          </div>
        </article>
      </div>
    </div>
  </section>

    <footer role="contentinfo">
    <div class="container">
      <img class="logo-img-footer" src="images/logo.jpg" alt="Logo">
      <button class="footer-btn-start" aria-label="Bắt đầu học button in footer">Bắt đầu học</button>
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

      <div class="footer-terms">
        <a href="#" tabindex="0">Điều Khoản Sử Dụng</a> | 
        <a href="#" tabindex="0">Chính Sách Bảo Mật</a> | 
        <a href="#" tabindex="0">Chính sách Cookie</a>
      </div>
    </div>
  </footer>
  </form>
</body>
</html>
