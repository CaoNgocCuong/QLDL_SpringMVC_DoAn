<%-- 
    Document   : testimonial
    Created on : Sep 21, 2021, 6:01:19 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Testmonial start -->
<section class="testimonial-area">
    <div class="container">
        <div class="row align-item">
            <div class="testimonial-col">
                <div class="testimonial-main">
                    <!-- Radio button start -->
                    <input type="radio" name="testimonial" id="testimonial-radio1">
                    <input type="radio" name="testimonial" id="testimonial-radio2">
                    <input type="radio" name="testimonial" id="testimonial-radio3">
                    <input type="radio" name="testimonial" id="testimonial-radio4">
                    <!-- Radio button start -->

                    <!-- Testimonial slide start -->
                    <div class="testimonial-slide first">
                        <div class="testimonial-thumb">
                            <img src="<c:url value="/img/author/ba-phuong-hang.jpg" />" alt="Ba Phuong Hang">
                            <span><i class="far fa-comment-dots"></i></span>
                        </div>
                        <div class="testimonial-info">
                            <p class="testimonial-info__content">Tour nói chung là ổn với người đi du lịch ít ngày. Hướng dẫn viên thân thiện nhiệt tình, còn biết tư vấn dáng chụp ảnh, rất đáng yêu 😍</p>
                            <h3 class="testimonial-info__author">Bà Phương Hằng</h3>
                        </div>
                    </div>
                    <div class="testimonial-slide">
                        <div class="testimonial-thumb">
                            <img src="<c:url value="/img/author/be-khang.jpg" />" alt="Be Khang">
                            <span><i class="far fa-comment-dots"></i></span>
                        </div>
                        <div class="testimonial-info">
                            <p class="testimonial-info__content">Nhìn chung chuyến đi rất tốt, mình và bạn mình rất hài lòng. Hướng dẩn viên Khánh rất chuyên nghiệp vui tính nhiệt tình làm việc có tâm.</p>
                            <h3 class="testimonial-info__author">Trần Vũ Khang</h3>
                        </div>
                    </div>
                    <div class="testimonial-slide">
                        <div class="testimonial-thumb">
                            <img src="<c:url value="/img/author/be-duy.jpg" />" alt="Trương Nguyễn Đăng Duy">
                            <span><i class="far fa-comment-dots"></i></span>
                        </div>
                        <div class="testimonial-info">
                            <p class="testimonial-info__content">Mọi thứ đều tuyệt vời Mặc dù chúng thay đổi kỷ nguyên của chúng ta.</p>
                            <h3 class="testimonial-info__author">Trương Nguyễn Đăng Duy</h3>
                        </div>
                    </div>
                    <div class="testimonial-slide">
                        <div class="testimonial-thumb">
                            <img src="<c:url value="/img/author/be-cuong.jpg" />" alt="Cao Ngọc Cường">
                            <span><i class="far fa-comment-dots"></i></span>
                        </div>
                        <div class="testimonial-info">
                            <p class="testimonial-info__content">Toàn bộ lịch trình là rất hài lòng. Nó dường như đã được tổ chức tốt để bạn có thể khám phá đầy đủ nhiều nơi trong một khoảng thời gian ngắn. Cảm ơn bạn.</p>
                            <h3 class="testimonial-info__author">Cao Ngọc Cường</h3>
                        </div>
                    </div>
                    <!-- Testimonial slide end -->

                    <!-- Testimonial navigation auto -->
                    <div class="testimonial-nav__auto">
                        <div class="testimonial-auto1"></div>
                        <div class="testimonial-auto2"></div>
                        <div class="testimonial-auto3"></div>
                        <div class="testimonial-auto4"></div>
                    </div>
                    <!-- Testimonial navigation auto -->

                </div>

                <div class="testimonial-nav__manual">
                    <label for="testimonial-radio1" class="testimonial-btn"></label>
                    <label for="testimonial-radio2" class="testimonial-btn"></label>
                    <label for="testimonial-radio3" class="testimonial-btn"></label>
                    <label for="testimonial-radio4" class="testimonial-btn"></label>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testmonial end -->
