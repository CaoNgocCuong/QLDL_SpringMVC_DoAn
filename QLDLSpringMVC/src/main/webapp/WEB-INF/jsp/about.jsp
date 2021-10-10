<%-- 
    Document   : about
    Created on : Sep 13, 2021, 1:27:33 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Travel about story start -->
<div class="travel-main about-story">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12 col-lg-12">
                <div class="about-story__heading">
                    <h3>Hành trình của chúng tôi</h3>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-11 col-lg-11 offset-lg-1">
                        <div class="about-story__info">
                           <div class="row">
                               <div class="col col-lg-9">
                                <p>Du lịch là một ngành Công nghiệp không khói, một lĩnh vực đã đem lại một nguồn thu không nhá cho nền Kinh tế Quốc dân. Nó không chỉ mang lại nguồn thu nhập đáng kể cho đất nước mà nó còn tạo ra nhiều việc làm cho Xã hội là đòn bẩy thúc đẩy các ngành Kinh tế khác cùng phát triển. Ta có thể coi ngành Du lịch như một chiếc cầu giao lưu Văn hoá giữa các vùng trong mét Quốc gia và các Quốc gia khác trên toàn Thế giới. Du lịch góp phần nâng cao dân trí, thúc đẩy sự tiến bộ Xã hội, mở rộng tình hữu nghị, sự hiểu biết lẫn nhau về Truyền thống, Lịch sử giữa các Quốc gia trên Thế giới, tạo nên sự Hoà bình trên toàn nhân loại.</p>
                                <p>Cùng với sự phát triển đó Du lịch Việt Nam đang hoà mình vào Du lịch Thế giới bởi sự giúp đỡ về cơ sơ vật chất của nhiều Quốc gia có nền Du lịch phát triển, bởi sự đầu tư đúng đắn của Nhà nước cũng như của nhiều Địa phương. Hơn nữa ở nước ta tiềm năng Du lịch là rất lớn, vị trí địa lý thuận lợi cho việc đi lại nối kết nước ta với các khu vực trên Thế giới, có nguồn tài nguyên phong phó và đa dạng đó là hàng loạt các danh lam thắng cảnh nổi tiếng như: Vịnh Hạ Long, Cố Đô Huế, Thánh Địa Mỹ Sơn, Động Phong Nha. . . Trải qua bao biến cố thăng trầm của lịch sử khác nhau đã tạo cho Việt Nam những điểm khác biệt thu hút khách Du lịch mọi nơi trên khắp Thế giới.</p>
                               </div>
                           </div>
                        </div>
                        <div class="about-story__thumb">
                            <div class="row">
                                <div class="col-xs-12 col-md-5 col-lg-5">
                                    <div class="thumb part-left">
                                        <img src="<c:url value="/img/hoi-an.jpg" />" alt="story-1">
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6 col-lg-6">
                                    <div class="thumb part-right">
                                        <img src="<c:url value="/img/blogcover-1.jpg" />" alt="story-2">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="counter-wrap">
                            <div class="row">
                                <div class="col-xs-12 col-md-4 col-lg-4">
                                    <div class="single_counter">
                                        <h3 class="counter">${countTour}</h3>
                                        <p>Chuyến tham quan đã thành công</p>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-4 col-lg-4">
                                    <div class="single_counter">
                                        <h3 class="counter">${countBlog}</h3>
                                        <p>Các bài viết tin tức nóng hổi</p>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-4 col-lg-4">
                                    <div class="single_counter">
                                        <h3 class="counter">${countUserRole}</h3>
                                        <p>Khách hàng thành viên</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Travel about story end -->