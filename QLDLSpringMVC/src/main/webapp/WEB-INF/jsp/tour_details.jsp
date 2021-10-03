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
                            <div class="comments-list" id="comments-list-area">
                                <c:forEach items="${tour.ratings}" var="rating">
                                    <div class="single-comment">
                                        <div class="single-comment__thumb">
                                            <img src="<c:url value="/img/bradcam3.png" />" alt="user-1">
                                        </div>
                                        <div class="single-comment__des">
                                            <p class="single-comment__content">${rating.comment}</p>
                                            <div class="comment-user">
                                                <h5><a href="#">${rating.user.fullName}</a></h5>
                                                <p class="date">${rating.ratingDate}</p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="comment-box">
                            <div class="user-thumb">
                                <img src="<c:url value="/img/avtar/avtar.jpg" />" alt="user">
                            </div>
                            <div class="user-comment">
                                <textarea name="" id="comment-area" cols="5" rows="1" placeholder="Viết bình luận của bạn..."></textarea>
                                <div class="user-action">
                                    <button class="user-btn back">Hủy</button>
                                    <button class="user-btn submit" onclick="addCommentTour(${tour.id})">Bình luận</button>
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
