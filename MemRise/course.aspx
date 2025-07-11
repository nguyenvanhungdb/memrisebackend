﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="MemRise.course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Các khóa học</title>
    <link rel= "stylesheet" href= "css/course.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
    <img class="logo" src="images/logo.jpg" alt="Logo">
    <div>
        <nav aria-label="Main navigation"> 
            <asp:LinkButton ID="btnTrangChu" runat="server" OnClick="btnTrangChu_Click" CssClass="nav-link">Trang Chủ</asp:LinkButton>
            <asp:LinkButton ID="btnKhoaHoc" runat="server" OnClick="btnKhoaHoc_Click" CssClass="nav-link active">Khóa Học</asp:LinkButton>
            <asp:LinkButton ID="btnBlog" runat="server" OnClick="btnBlog_Click" CssClass="nav-link">Blog</asp:LinkButton>

        </nav>
        <div class="course">
            <div class="search-container" role="search">
                <input type="search" placeholder="Tìm kiếm..." aria-label="Tìm kiếm khóa học" />
                <button aria-label="Tìm kiếm">
                   <svg width="16" height="16" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="7" cy="7" r="5" /><line x1="11" y1="11" x2="15" y2="15"/></svg>
                </button>
            </div>
            <img class="profile-image" src="images/avatar.jpg" alt="Avatar"> 
        </div>
    </div>
  </header>
  <main>
    <div class="content-wrapper">
      <aside class="sidebar" aria-label="Sidebar with languages and course categories">
        <section class="speak-wrapper" aria-labelledby="speak-label">
          <label id="speak-label" for="language-select">NGÔN NGỮ</label>
          <select id="language-select" class="speak-select" aria-describedby="language-description" autocomplete="off">
            <option value="vi" selected>Tiếng Việt</option>
            <option value="en-uk">Tiếng Anh (Anh Quốc)</option>
          </select>
        </section>
        <section class="top-langs" aria-labelledby="top-langs-label">
          <h2 id="top-langs-label">CHỦ ĐỀ</h2>
          <ul>
            <li tabindex="0" aria-current="false" role="listitem">
              <img class="theme-photo" src="images/environment.jpg" alt="Môi trường" />
              Environment
            </li>
            <li tabindex="0" aria-current="false" role="listitem">
              <img class="theme-photo" src="images/hobbies.jpg" alt="Sở thích" />
              Hobbies
            </li>
            <li tabindex="0" aria-current="false" role="listitem">
              <img class="theme-photo" src="images/music.png" alt="Âm nhạc" />
              Music
            </li>
            <li tabindex="0" aria-current="false" role="listitem">
              <img class="theme-photo" src="images/food.jpg" alt="Thực phẩm" />
              Food
            </li>
            <li tabindex="0" aria-current="false" role="listitem">
              <img class="theme-photo" src="images/beauty.jpg" alt="Làm đẹp" />Chăm Sóc Sức Khỏe
            </li>
            <li tabindex="0" aria-current="false" role="listitem">
                <img class="theme-photo" src="images/film.jpg" alt="Phim" />Học Tiếng Qua Phim
            </li>
            <li tabindex="0" aria-current="false" role="listitem">
                <img class="theme-photo" src="images/test.jpg" alt="Đề thi" />Đề Thi Các Năm
            </li>
            <li tabindex="0" aria-current="false" role="listitem">
              <svg class="system" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" 
                fill="#e9e9e9" width="18" height="18" aria-hidden="true" focusable="false">
                <circle cx="12" cy="12" r="10" stroke="#ccc" stroke-width="2" fill="none"/>
                <text x="12" y="16" font-size="12" fill="#ccc" text-anchor="middle" font-family="Arial, sans-serif">#</text>
              </svg>
              Hệ thống số
            </li>
          </ul>
        </section>
        <section class="categories-menu" aria-labelledby="categories-label">
          <h2 id="categories-label">THƯ VIỆN SÁCH</h2>
          <ul>
            <li tabindex="0">Ngoại ngữ</li>
            <li tabindex="0">Văn học & Nghệ thuật</li>
            <li tabindex="0">Toán học & Khoa học</li>
            <li tabindex="0">Thế giới Tự nhiên</li>
            <li tabindex="0">Lịch sử & Địa lý</li>
            <li tabindex="0">Luyện trí nhớ</li>
            <li tabindex="0">Các bài trắc nghiệm tiêu chuẩn hóa</li>
            <li tabindex="0">Giải trí</li>
          </ul>
        </section>
      </aside>
      <section class="courses" aria-label="Danh sách các khóa học hàng đầu">

        <asp:LinkButton ID="btnHocToeic" runat="server" CssClass="course-card" OnClick="btnHocToeic_Click">
        <article tabindex="0" aria-label="Từ vựng TOEIC quan trọng cấp I, 100 ngàn lượt học, 13 giờ" >
          <div class="course-image">
            <img src="images/Toeic.png" 
                 alt="Ảnh 1" 
                 onerror="this.style.backgroundColor='#777'; this.alt='Image failed to load: Young woman reading book in a sunlit green park with friends in background'"/>
          </div>
          <div class="course-content">
            <div class="course-lang">
              <img class="flag" src="images/img-flag.png" alt="Quốc kỳ Anh Quốc" />
              Tiếng Anh
              <span class="course-level" aria-hidden="true">bởi Decks</span>
            </div>
            <div class="course-title">Khóa học từ vựng TOEIC quan trọng</div>
            <div class="course-stats" aria-label="Lượt học và thời gian hoàn thành khóa học">
              <div aria-label="2.1 triệu lượt học">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 12c2 0 3.999-1.5 4-4s-2-4-4-4-4 1.5-4 4 2 4 4 4zm0 2c-3 0-8 1.5-8 4.5v2.5h16v-2.5c0-3-5-4.5-8-4.5z"/></svg>
                2.1m
              </div>
              <div aria-label="7 giờ để hoàn thành">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 6v6l5 3"/></svg>
                7h
              </div>
            </div>
          </div>
        </article>
        </asp:LinkButton>

        <article class="course-card" tabindex="0" aria-label="Khóa học SAT Comprehensive, 390 ngàn lượt học, 78 giờ">
          <div class="course-image">
            <img src="images/course_2.jpg" 
                 alt="Ảnh 2" 
                 onerror="this.style.backgroundColor='#777'; this.alt='Image failed to load: Group of graduates in dark blue caps and gowns tossing hats in the air'"/>
          </div>
          <div class="course-content">
            <div class="course-lang">
              <img class="flag" src="images/img-flag.png" alt="Quốc kỳ Anh Quốc" />
              Tiếng Anh
              <span class="course-level" aria-hidden="true">bởi deactiv...</span>
            </div>
            <div class="course-title">SAT Comprehensive</div>
            <div class="course-stats" aria-label="Lượt học và thời gian hoàn thành khóa học">
              <div aria-label="390 ngàn lượt học">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 12c2 0 3.999-1.5 4-4s-2-4-4-4-4 1.5-4 4 2 4 4 4zm0 2c-3 0-8 1.5-8 4.5v2.5h16v-2.5c0-3-5-4.5-8-4.5z"/></svg>
                390k
              </div>
              <div aria-label="78 giờ để hoàn thành">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 6v6l5 3"/></svg>
                78h
              </div>
            </div>
          </div>
        </article>

        <article class="course-card" tabindex="0" aria-label="Khóa học Capital Cities, 181 ngàn lượt học, 3 giờ">
          <div class="course-image">
            <img src="images/course_3.jpg" 
                 alt="Ảnh 3" 
                 onerror="this.style.backgroundColor='#777'; this.alt='Image failed to load: 3D map location pin glowing yellow on blurred city streets background'"/>
            <span title="Capital Cities course" aria-hidden="true" 
                  style="position:absolute;left:8px;top:8px;background:#2f2f2f5f;border-radius:4px;padding:2px 6px;color:#ddd; font-size:10px;">
                Capitals
            </span>
          </div>
          <div class="course-content">
            <div class="course-lang">
              <svg aria-hidden="true" focusable="false" width="16" height="16" viewBox="0 0 24 24" fill="#ccc" style="margin-right: 6px;">
                <circle cx="12" cy="12" r="10" stroke="#fff3" stroke-width="2" fill="none" />
                <path d="M12 8v8m-4-4h8" stroke="#f5bf23" stroke-width="2" stroke-linecap="round" />
              </svg>
              Capital Cities
              <span class="course-level" aria-hidden="true">bởi Abdullah...</span>
            </div>
            <div class="course-title">Capital Cities</div>
            <div class="course-stats" aria-label="Lượt học và thời gian hoàn thành khóa học">
              <div aria-label="181 ngàn lượt học">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 12c2 0 3.999-1.5 4-4s-2-4-4-4-4 1.5-4 4 2 4 4 4zm0 2c-3 0-8 1.5-8 4.5v2.5h16v-2.5c0-3-5-4.5-8-4.5z"/></svg>
                181k
              </div>
              <div aria-label="3 giờ để hoàn thành">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 6v6l5 3"/></svg>
                3h
              </div>
            </div>
          </div>
        </article>

        <article class="course-card" tabindex="0" aria-label="Khóa học 400 Words of TOEFL - Intermediate, 2.1 triệu lượt học, 7 giờ">
          <div class="course-image">
            <img src="images/course_1.jpg"
                 alt="Ảnh 4" 
                 onerror="this.style.backgroundColor='#777'; this.alt=''"/>
          </div>
          <div class="course-content">
            <div class="course-lang">
              <img class="flag" src="images/img-flag.png" alt="Quốc kỳ Anh Quốc" />
              Tiếng Anh
              <span class="course-level" aria-hidden="true">bởi Thầy...</span>
            </div>
            <div class="course-title">Khóa học 400 Words of TOEFL - Intermediate</div>
            <div class="course-stats" aria-label="Lượt học và thời gian hoàn thành khóa học">
              <div aria-label="100 ngàn lượt học">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 12c2 0 3.999-1.5 4-4s-2-4-4-4-4 1.5-4 4 2 4 4 4zm0 2c-3 0-8 1.5-8 4.5v2.5h16v-2.5c0-3-5-4.5-8-4.5z"/></svg>
                100k
              </div>
              <div aria-label="13 giờ để hoàn thành">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 6v6l5 3"/></svg>
                13h
              </div>
            </div>
          </div>
        </article>
    
        <article class="course-card" tabindex="0" aria-label="Văn hóa Việt Nam">
          <div class="course-image">
            <img src="images/course_6.jpg" 
                 alt="Ảnh 6" 
                 onerror="this.style.backgroundColor='#777'; this.alt=''"/>
          </div>
          <div class="course-content">
            <div class="course-lang">
              <img class="flag" src="images/img-vietnam-flag.png" alt="Quốc kỳ Việt Nam" />
              Tiếng Việt
              <span class="course-level" aria-hidden="true">bởi deactiv...</span>
            </div>
            <div class="course-title">Văn Hóa - Con Người Việt Nam</div>
            <div class="course-stats" aria-label="Lượt học và thời gian hoàn thành khóa học">
              <div aria-label="271 ngàn lượt học">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 12c2 0 3.999-1.5 4-4s-2-4-4-4-4 1.5-4 4 2 4 4 4zm0 2c-3 0-8 1.5-8 4.5v2.5h16v-2.5c0-3-5-4.5-8-4.5z"/></svg>
                271k
              </div>
              <div aria-label="50 giờ để hoàn thành">
                <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24"><path fill="currentColor" d="M12 6v6l5 3"/></svg>
                50h
              </div>
            </div>
          </div>
        </article>
        <button class="load-more-btn" aria-label="Tải thêm khóa học">↻ Tải thêm...</button>
      </section>
    </div>

  </main>
        </div>
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
