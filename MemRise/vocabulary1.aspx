﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vocabulary1.aspx.cs" Inherits="MemRise.vocabulary1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Từ vựng cấp 1</title>
    <link rel="stylesheet" href="css/vocabulary1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
    <div class="logo">MEM<br>RISE</div>
    <nav>
      <ul>
        <li><a href="#">Trang chủ</a></li>
        <li><a href="#">Khóa học</a></li>
        <li><a href="#">Blog</a></li>
        <li><img src="images/avatar.jpg" alt="User" class="avatar"></li>
      </ul>
    </nav>
  </header>

  <section class="course-info">
    <img src="images/Toeic.png" alt="TOEIC" class="course-img">
    <div class="course-text">
      <h2>Từ vựng TOEIC quan trọng - Cấp 1</h2>
      <p>Những từ vựng mà ai cũng phải biết khi bắt đầu học TOEIC. Hãy bắt đầu học ngay hôm nay !</p>
    </div>
  </section>

  <main>
    <section class="words-section">
      <div class="words-header">
        <h3>500 words to learn</h3>
        <input type="text" placeholder="Search word...">
        <button class="learn-btn">Learn</button>
      </div>

      <table class="word-table">
        <tr><th>new</th><td>mới</td></tr>
        <tr><th>company</th><td>công ty</td></tr>
        <tr><th>Mr.</th><td>ông</td></tr>
        <tr><th>year</th><td>năm</td></tr>
        <tr><th>service</th><td>dịch vụ</td></tr>
        <tr><th>please</th><td>vui lòng</td></tr>
        <tr><th>customer</th><td>khách hàng</td></tr>
        <tr><th>work</th><td>làm việc / công việc</td></tr>
        <tr><th>book</th><td>quyển sách</td></tr>
        <tr><th>pen</th><td>bút</td></tr>
        <tr><th>apple</th><td>quả táo</td></tr>
        <tr><th>school</th><td>trường học</td></tr>
        <tr><th>teacher</th><td>giáo viên</td></tr>
        <tr><th>student</th><td>học sinh</td></tr>
        <tr><th>cat</th><td>con mèo</td></tr>
        <tr><th>dog</th><td>con chó</td></tr>
        <tr><th>milk</th><td>sữa</td></tr>
        <tr><th>sun</th><td>mặt trời</td></tr>
        <tr><th>fish</th><td>cá</td></tr>
        <tr><th>bird</th><td>chim</td></tr>
        <tr><th>water</th><td>nước</td></tr>
        <tr><th>banana</th><td>chuối</td></tr>
        <tr><th>car</th><td>xe hơi</td></tr>
        <tr><th>bike</th><td>xe đạp</td></tr>
        <tr><th>house</th><td>ngôi nhà</td></tr>
        <tr><th>door</th><td>cánh cửa</td></tr>
        <tr><th>chair</th><td>ghế</td></tr>
        <tr><th>table</th><td>bàn</td></tr>
        <tr><th>happy</th><td>vui vẻ</td></tr>
        <tr><th>sad</th><td>buồn</td></tr>
        <tr><th>big</th><td>to, lớn</td></tr>
        <tr><th>small</th><td>nhỏ</td></tr>
        <tr><th>hot</th><td>nóng</td></tr>
        <tr><th>cold</th><td>lạnh</td></tr>
        <tr><th>run</th><td>chạy</td></tr>
        <tr><th>jump</th><td>nhảy</td></tr>
        <tr><th>sleep</th><td>ngủ</td></tr>
        <tr><th>eat</th><td>ăn</td></tr>
        <tr><th>star</th><td>ngôi sao</td></tr>
        <tr><th>water</th><td>nước</td></tr>
        <tr><th>food</th><td>thức ăn</td></tr>
        <tr><th>house</th><td>nhà</td></tr>
        <tr><th>car</th><td>xe hơi</td></tr>
        <tr><th>bike</th><td>xe đạp</td></tr>
        <tr><th>table</th><td>bàn</td></tr>
        <tr><th>chair</th><td>ghế</td></tr>
        <tr><th>friend</th><td>bạn</td></tr>
        <tr><th>name</th><td>tên</td></tr>
        <tr><th>family</th><td>gia đình</td></tr>
        <tr><th>father</th><td>bố</td></tr>
        <tr><th>mother</th><td>mẹ</td></tr>
        <tr><th>baby</th><td>em bé</td></tr>
        <tr><th>boy</th><td>con trai</td></tr>
        <tr><th>girl</th><td>con gái</td></tr>
        <tr><th>happy</th><td>vui</td></tr>
        <tr><th>sad</th><td>buồn</td></tr>
      </table>

      <div class="more-link">
        <a href="#" onclick="return false;">Xem thêm...</a>
      </div>
    </section>
  </main>
  

  <footer class="footer">
  <div class="footer-container">
    <div class="logo">MEM<br>RISE</div> <br>

    <div class="footer-links">
      <ul>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Team</a></li>
        <li><a href="#">Jobs</a></li>
      </ul>
      <ul>
        <li><a href="#">Memrise Blog</a></li>
        <li><a href="#">Engineering Blog</a></li>
        <li><a href="#">Press</a></li>
      </ul>
      <ul>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">FAQ & Help</a></li>
      </ul>
      <ul>
        <li><a href="#">Phrasebooks</a></li>
      </ul>
    </div>

    <div class="footer-bottom">
      <a href="#"><img src="images/icon-home.png" alt="">Terms of Use</a>
      <a href="#"><img src="images/icon-mailbox.png" alt="">Privacy Policy</a>
      <a href="#"><img src="images/icon-heart.png" alt="">Cookie Policy</a>
    </div>
  </div>
</footer>
        </div>
    </form>
</body>
</html>
