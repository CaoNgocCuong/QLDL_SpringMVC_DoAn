<%-- 
    Document   : destination_popular_tourspage
    Created on : Sep 21, 2021, 11:30:00 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/tours" var="action" />
<!-- Popular places start -->
<section class="travel-main popular-place">
    <div class="container">
        <div class="row align-item">
            <div class="col col-lg-12">
                <div class="popular-place__box-top">
                    <span>Sắp xếp:</span>
                    <ul class="popular-place__list">
                        <li class="popular-place__item hide">Ngày khởi hành 
                            <i class="fas fa-long-arrow-alt-down"></i>
                            <i class="fas fa-long-arrow-alt-up"></i>
                        </li>
                        <li class="popular-place__item">Theo giá 
                            <i class="fas fa-long-arrow-alt-down"></i>
                            <i class="fas fa-long-arrow-alt-up"></i>
                        </li>
                        <li class="popular-place__item">Theo thời gian 
                            <i class="fas fa-long-arrow-alt-down"></i>
                            <i class="fas fa-long-arrow-alt-up"></i>
                        </li>
                        <li class="popular-place__item">Theo sao 
                            <i class="fas fa-long-arrow-alt-down"></i>
                            <i class="fas fa-long-arrow-alt-up"></i>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach var="tour" items="${tours}">
                <div class="col col-lg-4">
                    <div class="single-place">
                        <div class="thumb">
                            <img src="${tour.photo}" alt="popular place">
                            <a href="./tour-detail.html" class="price">${tour.childrenPrice} - ${tour.adultsPrice} (VNĐ)</a>
                        </div>
                        <div class="place-info">
                            <a href="./tour-detail.html">
                                <h3>${tour.name}</h3>
                            </a>
                            <p>United State of America</p>
                            <div class="rating-days">
                                <span>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <a href="">(20 bình luận)</a>
                                </span>
                                <div class="days">
                                    <i class="far fa-clock"></i>
                                    <a href="">${tour.tourDays} ngày ${tour.tourNights} đêm</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <div class="col col-lg-12">
                <div class="popular-place-pagi">
                    <ul>
                        <li class="arrow disabled"><i class="fas fa-chevron-left"></i></li>
                        <c:forEach var="p" begin="1" end="${Math.ceil(counter/9)}">
                            <li class="num active">
                                <a href="<c:url value="/tours"/>?page=${p}">
                                    ${p}
                                </a>
                            </li>
                        </c:forEach>
                        <li class="arrow"><i class="fas fa-chevron-right"></i></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Popular places ends -->
