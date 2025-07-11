﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MemRise.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/home.css?v1.2" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <header class="">
        <div class="header flex">
        <div class="flex header-wrap center-y">
            <div class="header-language flex">
            </div>
            <div class="header-signin">
                <asp:Button ID="btnSignin" runat="server" Text="Đăng nhập" CssClass="btn-header-signin flex" OnClick="btnSignin_Click" />
            </div>

        </div>    
        </div>
        
        <div class="flex-gap-center flex">
            <div class="header-banner flex center-y">
            <div>
                <img class="logo-header" src="images/logo.jpg" alt="">
            </div>
            <div class="banner-header-list flex">
                <ul class="flex gap-banner center-y">
                    <li>
                      <asp:LinkButton ID="btnCourses" runat="server" Text="Khoá học" CssClass="menu-link" OnClick="btnCourses_Click" />
                    </li>
                    <li>
                      <asp:LinkButton ID="btnPhrases" runat="server" Text="Sổ tay mẫu câu" CssClass="menu-link" OnClick="btnPhrases_Click" />
                    </li>
                    <li>
                      <asp:LinkButton ID="btnBlog" runat="server" Text="Blog Memrise" CssClass="menu-link" OnClick="btnBlog_Click" />
                    </li>
                    <li>
                        <asp:Button ID="btnStartLearning" runat="server" Text="Bắt Đầu Học" CssClass="btn-learn" OnClick="btnStartLearning_Click" />
                    </li>
                </ul>
            </div>
        </div>
        </div>
        
    </header>
    <main>
        <section class="body-introduce flex">
            <div class="block-introduce-wrap flex">
                <div class="introduce-block-list">
                    <div>
                        <p class="header-word">Học tiếng Anh > Khoá Học Tiếng Anh</p>
                    </div>
                    <div>
                        <div class="wrap-introduce flex">
                        <div class="wrap-content-block flex">
                            <div class="wrap-content-introduce">
                                <ul class="flex center-y list-content-1">
                                <li>
                                    <img class="img-flag" src="images/img-flag.png" alt=""></li>
                                <li>
                                    <div class="color-word-1">
                                        Miễn phí
                                    </div>
                                </li>
                                <li>
                                    <div class="color-word-2">
                                        Tất cả các cấp độ
                                    </div>
                                </li>
                            </ul>
                            <p class="big-word">Khoá học tiếng Anh bởi Memrise</p>
                            <p class="normal-word">Thể hiện bản thân với sự tự tin bằng tiếng Anh</p>
                            <div class="block-list-evaluate flex">
                                <div class="block-evaluate-1 flex">
                                    <div>
                                        <img class="img-applestore" src="images/img-applestore.png" alt="">
                                    </div>
                                    <div>
                                        <div>
                                            <img class="img-5-star" src="images/img-5-star.png" alt="">
                                        </div>
                                        <div>
                                            <p class="word-evaluate">177k đánh giá</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="block-evaluate-1 flex">
                                    <div>
                                        <img class="img-applestore" src="images/img-chplay.png" alt="">
                                    </div>
                                    <div>
                                        <div>
                                            <img class="img-5-star" src="images/img-5-star.png" alt="">
                                        </div>
                                        <div>
                                            <p class="word-evaluate">1.47M đánh giá</p>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div>
                                <asp:Button ID="btnBeginCourse" runat="server" Text="Bắt đầu khoá học" CssClass="btn-begin-course" OnClick="btnBeginCourse_Click" />
                            </div>
                            </div>
                            
                        </div>
                         </div>
                    </div>
                </div>
                <div class="wrap-content-introduce-2 flex">
                    <div class="content-block-introduce flex">
                        <div class="element-content-introduce">
                            <div class="content-introduce">
                                <h2>Về khoá học này</h2>
                            </div>
                            <div class="content-introduce">
                                <i class="ri-service-line"></i>
                                <p><strong>Chọn các tình huống </strong>bạn muốn học và học từ vựng</p>
                            </div>
                            <div class="content-introduce">
                                <i class="ri-headphone-fill"></i>
                                <p>Nghe những từ vựng được phát âm bởi <strong>người bản ngữ</strong></p>
                            </div>
                            <div class="content-introduce">
                                <i class="ri-chat-voice-ai-line"></i>
                                <p><strong>Tập luyện nói </strong>riêng với gia sư ngoại ngữ AI của bạn</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div>

                </div>
            </div>
        </section>

    <section class="body-course">
        <div class="wrap-body-course-1">
            <div class="content-body-course-1">
                <div class="wrap-word-body-course-1">
                    <h2>400+ các bài học</h2>
                <p>dựa trên các chủ đề bên dưới. Học các mẫu câu tiếng Anh mà 
                    người địa phương sử dụng, để bạn có thể chuẩn bị cho những cuộc đối thoại.</p>
                </div>

                <div class="item-list-body-course-1">
                    <ul class="item-body-course-1">
                        <li>
                            <div class="block-content-course-1">
                                <div class="circle-block">
                                    <i class="ri-palette-line"></i>
                                </div>
                                <p>Các hoạt động...</p>
                            </div>
                        </li>
                        <li>
                            <div   class="block-content-course-1">
                                <div class="circle-block">
                                    <i class="ri-heart-fill"></i>
                                </div>
                                <p>Các mối qu...</p>
                            </div>
                        </li>
                        <li>
                            <div  class="block-content-course-1">
                                <div class="circle-block">

                                    <i class="ri-briefcase-line"></i>
                                </div>
                                <p>Công việc</p>
                            </div>
                        </li>
                        <li>
                            <div  class="block-content-course-1">
                                <div class="circle-block">

                                    <i class="ri-suitcase-3-fill"></i>
                                </div>
                                <p>Du lịch</p>
                            </div>
                        </li>
                        <li>
                            <div  class="block-content-course-1">
                                <div class="circle-block">

                                    <i class="ri-admin-fill"></i>
                                </div>
                                <p>Giáo dục</p>
                            </div>
                        </li>
                        <li class="btn-response">
                            <i class="ri-arrow-right-circle-fill"></i>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="block-body-course-2 flex">
            <div class="content-body-course-1 flex">
                <div class="wrap-word-body-course-2">
                    <div class="wrap-video">
                        <div class="video-container">
                            <div class="container-video">
                                <video id="myVideo" class="video" src="https://static.memrise.com/uploads/things/video/medium/1000000003_170302_1106_58.mp4#t=0.1" muted></video>
                            <button class="play-button" id="playBtn">
                                <span class="triangle"></span>
                            </button>
                            </div>
                        </div>
                        <div class="content-body-word-1">
                            <p><strong>what's up?</strong> có gì mới không?</p>
                        </div>
                    </div>
                    <div class="container-right-course">
                        <h2>6000+ từ</h2>
                        <p>Các từ bạn học sẽ được phát âm bởi người bản ngữ.</p>
                        <button>
                            Số cụm từ thông dụng tiếng anh
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-body-course-3">
            <div class="content-body-course-3">
                <div class="wrap-body-course-3 flex">
                    <div class="content-left-body-course-3">
                        <h2>200+ video</h2>
                        <p>Đắm mình vào ngôn ngữ là cách nhanh nhất để học. Hãy xem
                             những người bản ngữ và làm quen với giọng điệu của họ.</p>
                    </div>
                    <div class="content-right-body-course-3">
                        <img class="img-video-group" src="images/img-video-group.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="block-body-course-4 ">
            <div class="content-body-course-4">
                <div class="wrap-body-course-4">
                    <div class="content-left-body-course-4">
                        <img src="images/img-ai.png" alt="">
                    </div>
                    <div class="content-left-body-course-4">
                        <h2>75+ đối thoại với AI</h2>
                        <p>Xây dựng sự tự tin của bạn bằng cách học riêng cùng gia sư AI của bạn.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="body-content">
        <div class="block-body-content">
            <div class="wrap-body-content">
                <div class="wrap-body-content-head">
                    <h2>Nội dung học nổi bật</h2>
                    <p>Học tiếng Anh với nội dung thật vui mà bạn sẽ không thấy ở bất kỳ đâu khác.</p>
                </div>
                <div class="block-img-content">
                    <div class="wrap-body-content-block flex">
                        <div class="block-img-wrap">
                            <img src="images/img-course-1.jpg" alt="">
                            <p>Kỳ thi trung học phổ...</p>
                            <div>
                                <button>Xem thêm</button>
                            </div>
                        </div>
                    </div>
                    <div class="wrap-body-content-block flex">
                        <div class="block-img-wrap">
                            <img src="images/img-course-2.jpg" alt="">
                            <p>Oxford 3000</p>
                            <div>
                                <button>Xem thêm</button>
                            </div>
                        </div>
                    </div>
                    <div class="wrap-body-content-block flex">
                        <div class="block-img-wrap">
                            <img src="images/img-course-3.jpg" alt="">
                            <p>TOEIC</p>
                            <div>
                                <button>Xem thêm</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="body-expert">
        <div class="block-body-expert">
            <div class="wrap-body-expert">
                <div class="left-body-expert">
                    <img src="images/team-img.png" alt="">
                </div>
                <div class="right-body-expert">
                    <div class="flex right-img-body-expert">
                        <img src="images/logo-circle.png" alt="">
                        <h2>Các chuyên gia ngôn ngữ</h2>
                    </div>
                    <p>Khoá học tiếng Anh của chúng tôi được tạo bởi các chuyên gia ngôn ngữ và 
                        được lấy gốc từ các nghiên cứu khoa học trong nhiều năm.
                    </p>
                    <div class="btn-discover">
                        <button>Tìm hiểu thêm</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="body-member-share">
        <div class="block-body-share">
            <div class="wrap-body-share">
                <div class="item-share">
                    <div class="body-share-title">
                        <h2>Đây là những gì học viên của chúng tôi chia sẻ</h2>
                    </div>
                    <div class="list-body-share">
                        <div class="item-share-mutually">
                            <div class="block-share-mutually">
                                <div class="title-block-share">
                                    <p>Đó là một ứng dụng rất tuyệt để học tiếng Anh</p>
                                </div>
                                <div class="footer-block-share">
                                    <img src="images/star.png" alt="">
                                    <p>Juny</p>
                                </div>
                            </div>
                        </div>
                        <div class="item-share-mutually">
                            <div class="block-share-mutually">
                                <div class="title-block-share">
                                    <p>Đây là một ứng dụng rất hữu ích và dễ chịu cho những ai muốn học tiếng Anh.</p>
                                </div>
                                <div class="footer-block-share">
                                    <img src="images/star.png" alt="">
                                    <p>Anna</p>
                                </div>
                            </div>
                        </div>
                        <div class="item-share-mutually">
                            <div class="block-share-mutually">
                                <div class="title-block-share">
                                    <p>Tôi đã dùng hoặc đánh giá ít nhất 20 ứng dụng học ngoại ngữ và tôi đã học ba khoá trên Duolingo (tiếng Bồ Đào Nha kiểu Brazil, tiếng Pháp, tiếng Ý, và một chút tiếng Tây Ban Nha). Memrise HƠN HẲN tất cả những ứng dụng đó. Các công cụ học rất chỉn chu và đa dạng. Mọi thứ được phát âm rõ ràng và được chú thích bằng giải nghĩa theo từng từ và cả nghĩa thông dụng trong tiếng Anh.</p>
                                </div>
                                <div class="footer-block-share">
                                    <img src="images/star.png" alt="">
                                    <p>Jackie</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="title-body-share">
                            <p>Nhận xét từ</p>
                        </div>
                        <div class="dowload-body-share">
                            <div class="dowload-body-share-left">
                                <img class="img-applestore-2" src="images/apple-store.svg" alt="">
                                <img class="img-5-star" src="images/star.png" alt="">
                                <p>177k đánh giá</p>
                            </div>
                            <div class="dowload-body-share-right">
                                <img class="img-chplay-2" src="images/gg-play.svg" alt="">
                                <img class="img-5-star" src="images/star.png" alt="">
                                <p>177k đánh giá</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="body-attend">
        <div class="block-body-attend">
            <div class="wrap-body-attend">
                <div class="item-body-attend">
                    <div class="item-body-attend-left">
                        <h2>Hãy tham gia cùng 364k người dùng để học nhanh hơn với Memrise Pro</h2>
                        <div class="item-attend-mutually">
                            <i class="ri-git-repository-private-fill"></i>
                            <p>Loại bỏ tất cả quảng cáo</p>
                        </div>
                        <div class="item-attend-mutually">
                            <i class="ri-verified-badge-fill"></i>
                            <p>Toàn quyền truy cập vào mọi ngôn ngữ</p>
                        </div>
                        <div class="item-attend-mutually">
                            <i class="ri-video-line"></i>
                            <p>45,000 video clip của người bản ngữ</p>
                        </div>
                        <div class="btn-signin">
                            <button>Xem các gói đăng ký của chúng tôi</button>
                        </div>
                    </div>
                    <div class="item-body-attend-right">
                        <img src="images/img-phones.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="body-question">
        <div class="block-body-question">
            <div class="wrap-body-question">
                <div class="item-body-question">
                    <h2>Các Câu Hỏi Thường Gặp</h2>
                    <div class="wrap-list-body-question">
                        <div class="wrap-item-body-question">
                            <i class="ri-arrow-right-s-fill"></i>
                        <p>Vì sao nên học tiếng Anh Anh?</p>
                        </div>
                    </div>
                    <hr>
                    <div class="wrap-list-body-question">
                        <div class="wrap-item-body-question">
                            <i class="ri-arrow-right-s-fill"></i>
                        <p>Vì sao nên học tiếng Anh cùng Memrise?</p>
                        </div>
                    </div>
                    <hr>
                    <div class="wrap-list-body-question">
                        <div class="wrap-item-body-question">
                            <i class="ri-arrow-right-s-fill"></i>
                        <p>Tôi phải bắt đầu học tiếng Anh từ đâu?</p>
                        </div>
                    </div>
                    <hr>
                    <div class="wrap-list-body-question">
                        <div class="wrap-item-body-question">
                            <i class="ri-arrow-right-s-fill"></i>
                        <p>Các bài học tiếng Anh có được thiết kế phù hợp với trình độ của tôi không?</p>
                        </div>
                    </div>
                    <hr>
                    <div class="wrap-list-body-question">
                        <div class="wrap-item-body-question">
                            <i class="ri-arrow-right-s-fill"></i>
                        <p>Tôi phải cam kết học tiếng Anh trong bao nhiêu lâu?</p>
                        </div>
                    </div>
                    <hr>
                    <div class="wrap-list-body-question">
                        <div class="wrap-item-body-question">
                            <i class="ri-arrow-right-s-fill"></i>
                        <p>Tôi có được trao chứng chỉ sau khi hoàn thành khoá học tiếng Anh không?</p>
                        </div>
                    </div>
                    <hr>
                    <div class="wrap-list-body-question">
                        <div class="wrap-item-body-question">
                            <i class="ri-arrow-right-s-fill"></i>
                        <p>Học tiếng Anh có khó không?</p>
                        </div>
                    </div>
                    <hr>
                </div>
            </div>
        </div>
    </section>

    <section class="body-advice">
        <div class="block-body-advice">
            <div class="wrap-body-advice">
                <div class="item-body-advice">
                    <div class="item-body-advice-left">
                        <img src="images/mac.png" alt="">
                    </div>
                    <div class="item-body-advice-right">
                        <h2>Đa thiết bị</h2>
                        <p>Truy cập tất cả các ngôn ngữ trên điện thoại và máy tính của bạn</p>
                        <button>Bắt đầu học</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </main>
    
    <footer>
        <section class="footer">
            <div class="block-footer">
                <div class="wrap-block-footer">
                    <div class="item-footer">
                        <div class="block-body-footer">
                            <div class="item-footer-body">

                                <img src="images/logo.jpg" alt="">
                            </div>
                            <div class="btn-footer">
                                <button>Bắt Đầu Học</button>
                            </div>
                            <div class="list-app">
                                <i class="ri-facebook-line"></i>
                                <i class="ri-twitter-fill"></i>
                                <i class="ri-youtube-line"></i>
                                <i class="ri-twitter-x-line"></i>
                            </div>
                        </div>
                        <div class="list-course-2">
                            <div>
                                <p>Giới thiệu</p>
                                <p>Liên hệ</p>
                                <p>Câu hỏi thường gặp & Trợ giúp</p>
                                <p>Ứng dụng trên thiết bị di động</p>
                                
                            </div>
                            <div>
                                <p>Học chứng chỉ TOEIC</p>
                                <p>Học chứng chỉ IELTS</p>
                                <p>Học chứng chỉ SAT </p>
                            </div>
                            <div>
                                <p>Khoá Học cơ bản</p>
                                <p>Khoá Học trung cấp</p>
                                <p>Khoá Học nâng cao</p>
                            </div>
                            <div>
                                <p>Các gói</p>
                                <p>Đội ngũ</p>
                                <p>Blog Memrise</p>
                                <p>Blog kĩ thuật lập trình</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </footer>
        </main>
    </form>

    <script>
        const button = document.getElementById('playBtn');
        const video = document.getElementById('myVideo');

        button.addEventListener('click', function () {
            video.play();
            playBtn.style.display = "none";
        });
    </script>
</body>
</html>
