<%-- 
    Document   : tour_details
    Created on : Oct 2, 2021, 10:55:44 AM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container tour-detail">
    <div class="row">
        <div class="col col-lg-12">
            <div class="tour-title">
                <h2>${tour.name}</h2>
            </div>
        </div>
        <div class="col col-lg-12">
            <div class="tour-rating">
                <ul class="rating">
                    <li><a href="#"><i class="far fa-star"></i></a></li>
                    <li><a href="#"><i class="far fa-star"></i></a></li>
                    <li><a href="#"><i class="far fa-star"></i></a></li>
                    <li><a href="#"><i class="far fa-star"></i></a></li>
                    <li><a href="#"><i class="far fa-star"></i></a></li>
                </ul>
                <div class="rating-info">
                    <span class="num-first">4.75</span>
                    <span>/</span>
                    <span class="num-last">5</span>
                    trong
                    <span class="num-sum"><strong>210</strong></span>
                    đánh giá
                </div>
            </div>  
        </div>
    </div>
    <div class="row">
        <div class="col col-lg-8">
            <div class="row">
                <div class="col col-lg-12">
                    <div id="carouselTourDetailIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                          <li data-target="#carouselTourDetailIndicators" data-slide-to="0" class="active"></li>
                          <li data-target="#carouselTourDetailIndicators" data-slide-to="1"></li>
                          <li data-target="#carouselTourDetailIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <c:forEach var="photo" items="${tour.tourPhotos}">
                                <div class="carousel-item active">
                                    <img class="d-block w-100 h-100" src="${photo.photo}" alt="">
                                </div>
                            </c:forEach>
                        </div>
                        <a class="carousel-control-prev" href="#carouselTourDetailIndicators" role="button" data-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselTourDetailIndicators" role="button" data-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col col-lg-12">
                    <div class="tour-detail__title">
                        <h3 id="journey"><i class="fas fa-info-circle mr-3"></i>Điểm nhấn hành trình</h3>
                    </div>
                    <div class="tour-detail__content">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        <span><strong>Hành trình:</strong></span>
                                    </td>
                                    <td>
                                        <span>${tour.name}</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span><strong>Lịch trình:</strong></span>
                                    </td>
                                    <td>
                                        <span>${tour.tourDays} ngày ${tour.tourNights} đêm</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span><strong>Ngày khởi hành:</strong></span>
                                    </td>
                                    <td>
                                        <span><fmt:formatDate pattern="dd-MM-yyyy" value="${tour.startDate}" /></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span>
                                            <strong>Ngày kết thúc:</strong>
                                        </span>
                                    </td>
                                    <td>
                                        <span>
                                            <fmt:formatDate pattern="dd-MM-yyyy" value="${tour.endDate}" />
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="tour-detail__des">
                            <p>${tour.introduction}</p>
                        </div>
                    </div>
                </div>
                <div class="col col-lg-12">
                    <div class="tour-detail__title">
                        <h3 id="journey-map"><i class="fas fa-map-marked mr-3"></i>Lịch trình</h3>
                    </div>
                    <div class="tour-detail__content">
                        <c:forEach var="tourDetail" items="${tour.tourDetails}">
                            <div class="tour-detail__content-title">
                            <h3>${tourDetail.departure} - ${tourDetail.destination} (<fmt:formatDate pattern="dd-MM-yyyy" value="${tourDetail.startDate}" /> đến ngày <fmt:formatDate pattern="dd-MM-yyyy" value="${tourDetail.endDate}" /> )</h3>
                        </div>
                        <div class="tour-detail__content-main">
                            ${tourDetail.content}
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col col-lg-12">
                    <div class="tour-detail__title">
                        <h3 id="services"><i class="fas fa-paperclip mr-3"></i>Dịch vụ bao gồm và không bao gồm</h3>
                    </div>
                    <div class="tour-detail__content">
                        <div class="tour-detail__content-main">
                            ${tour.service}
                        </div>
                    </div>
                </div>
                <div class="col col-lg-12">
                    <div class="tour-detail__title">
                        <h3 id="note"><i class="far fa-sticky-note mr-3"></i>Ghi chú</h3>
                    </div>
                    <div class="tour-detail__content">
                        <div class="tour-detail__content-main">
                            ${tour.note}
                        </div>
                    </div>
                </div>
                <div class="col col-lg-12">
                    <div class="tour-detail__gb">
                        <p class="text-center fs-5"><strong>KÍNH CHÚC QUÝ KHÁCH CHUYẾN ĐI THÚ VỊ VÀ BỔ ÍCH !</strong></p>
                    </div>
                </div>
                <div class="col col-lg-12">
                    <div class="tour-detail__title">
                        <h3 id="comment"><i class="far fa-comments mr-3"></i>Bình luận</h3>
                    </div>
                    <div class="tour-detail__content">
                        <div class="comments-area">
                            <h4>05 bình luận</h4>
                            <div class="comments-list">
                                <div class="single-comment">
                                    <div class="single-comment__thumb">
                                        <img src="<c:url value="/img/user/comment_1.png" />" alt="user-1">
                                    </div>
                                    <div class="single-comment__des">
                                        <p class="single-comment__content">Cho em hỏi mấy anh chị đã ra trường ở OU hiện đã làm công việc gì vậy ạ. Anh chị có xin việc dễ dàng ko. Vì em thấy có nhìu doanh nghiệp ưu tiên bằng ĐH của những trường top.</p>
                                        <div class="comment-user">
                                            <h5><a href="#">Cao Ngọc Cường</a></h5>
                                            <p class="date">01 Tháng 03 2021</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-comment">
                                    <div class="single-comment__thumb">
                                        <img src="<c:url value="/img/user/comment_2.png" />" alt="user-1">
                                    </div>
                                    <div class="single-comment__des">
                                        <p class="single-comment__content">Một bài viết thực sự củm động :((</p>
                                        <div class="comment-user">
                                            <h5><a href="#">Trần Vũ Khang</a></h5>
                                            <p class="date">02 Tháng 03 2021</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-comment">
                                    <div class="single-comment__thumb">
                                        <img src="<c:url value="/img/user/comment_3.png" />" alt="user-1">
                                    </div>
                                    <div class="single-comment__des">
                                        <p class="single-comment__content">học trường nào cũng được, quan trọng là giá trị bản thân có được đánh bóng bởi chính mình hay là không, mới quan trọng. Ví dụ như mấy cuộc thi của L'Oreal, hay Nestlé đâu có cần xem bằng cấp gì, quan trọng là năng lực bản thân mình thể hiện thôi. Nên nếu các bạn đã tin tưởng chọn Ou làm nơi để các bạn trau dồi thì chắc chắn một điều là các bạn đã không có điểm số cao để vào các trường Top lớn. Vì thế, việc bây giờ là các bạn phải cố gắng trau dồi hết mức có thể để bản thân mình có đủ skill, đừng tự ti vì mình học trường thấp hơn mà hãy suy nghĩ rằng mình sẽ giỏi như họ vào một thời điểm trong tương lai, đến lúc đó vững vàng mà chọn doanh nghiệp lớn để vào. dè deeee~</p>
                                        <div class="comment-user">
                                            <h5><a href="#">Cao Ngọc Cường</a></h5>
                                            <p class="date">01 Tháng 03 2021</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-comment">
                                    <div class="single-comment__thumb">
                                        <img src="<c:url value="/img/user/comment_3.png" />" alt="user-1">
                                    </div>
                                    <div class="single-comment__des">
                                        <p class="single-comment__content">Bài viết rất xuất sắc</p>
                                        <div class="comment-user">
                                            <h5><a href="#">Cao Ngọc Cường</a></h5>
                                            <p class="date">01 Tháng 03 2021</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-comment">
                                    <div class="single-comment__thumb">
                                        <img src="<c:url value="/img/user/comment_2.png" />" alt="user-1">
                                    </div>
                                    <div class="single-comment__des">
                                        <p class="single-comment__content">Bài viết rất xuất sắc</p>
                                        <div class="comment-user">
                                            <h5><a href="#">Cao Ngọc Cường</a></h5>
                                            <p class="date">01 Tháng 03 2021</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comment-box">
                            <div class="user-thumb">
                                <img src="<c:url value="/img/avtar/avtar.jpg" />" alt="user">
                            </div>
                            <div class="user-comment">
                                <textarea name="" id="" cols="5" rows="2" placeholder="Viết bình luận của bạn..."></textarea>
                                <div class="user-action">
                                    <button class="user-btn back">Hủy</button>
                                    <button class="user-btn submit">Bình luận</button>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <div class="col col-lg-4">
            <div class="box-right">
                <div class="tour-box-info">
                    <div class="tour-name">${tour.name}</div>
                    <div class="tour-box-detail">
                        <ul>
                            <li>
                                <span class="tour-key">Mã chuyến đi:</span>
                                <span class="tour-value">${tour.id}</span>
                            </li>
                            <li>
                                <span class="tour-key">Thời gian:</span>
                                <span class="tour-value">${tour.tourDays} ngày ${tour.tourNights} đêm</span>
                            </li>
                            <li>
                                <span class="tour-key">Ngày khởi hành:</span>
                                <span class="tour-value"><fmt:formatDate pattern="dd-MM-yyyy" value="${tour.startDate}" /></span>
                            </li>
                            <li>
                                <span class="tour-key">Ngày kết thúc:</span>
                                <span class="tour-value"><fmt:formatDate pattern="dd-MM-yyyy" value="${tour.endDate}" /></span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tour-box-fix">
                    <div class="tour-box-price">
                        <span class="tour-box-price__text">Giá từ:</span>
                        <span class="tour-box-price__num">${tour.adultsPrice}</span>
                        <span class="tour-box-price__nor">${Math.floor(tour.adultsPrice * 1.2)}</span>
                    </div>
                    <div class="tour-box-btn text-center">
                        <a href="./bookingTour.html" class="btn btn-tdetail">Đặt vé</a>
                    </div>
                </div>
                <div class="tour-box-index">
                    <ul>
                        <li class="active">
                            <a href="#journey">
                                <span><i class="fas fa-info-circle mr-3"></i></span>
                                Điểm nhấn hành trình
                            </a>
                        </li>
                        <li>
                            <a href="#journey-map">
                                <span><i class="fas fa-map-marked mr-3"></i></span>
                                Lịch trình
                            </a>
                        </li>
                        <li>
                            <a href="#services">
                                <span><i class="fas fa-paperclip mr-3"></i></span>
                                Dịch vụ bao gồm và không bao gồm
                            </a>
                        </li>
                        <li>
                            <a href="#note">
                                <span><i class="far fa-sticky-note mr-3"></i></span>
                                Ghi chú
                            </a>
                        </li>
                        <li>
                            <a href="#comment">
                                <span><i class="far fa-comments mr-3"></i></span>
                                Bình luận
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
