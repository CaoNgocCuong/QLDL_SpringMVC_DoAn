<%-- 
    Document   : destination_popular
    Created on : Sep 21, 2021, 5:48:26 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Popular places start -->
<section class="travel-main popular-place">
    <div class="container">
        <div class="row align-item">
            <div class="col col-lg-6">
                <div class="section-title">
                    <h3>Địa điểm phổ biến</h3>
                    <p>MỘT THƯƠNG HIỆU VIỆT – PHONG CÁCH CHUYÊN NGHIỆP</p>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach var="tour" items="${tours}">
                <div class="col col-lg-4">
                    <div class="single-place">
                        <div class="thumb">
                            <img src="<c:url value="${tour.photo}" />" alt="popular place">
                            <a href="<c:url value="/tours/${tour.id}" />" class="price">${tour.childrenPrice} - ${tour.adultsPrice} VNĐ</a>
                        </div>
                        <div class="place-info">
                            <a href="<c:url value="/tours/${tour.id}" />">
                                <h3>${tour.name}</h3>
                            </a>
                            <p>${tour.country}</p>
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
                        <c:if test="${counterKw == 0}">
                            <c:forEach var="p" begin="1" end="${Math.ceil(counter/9)}">
                                <li class="num active">
                                    <a href="<c:url value="/"/>?page=${p}">
                                        ${p}
                                    </a>
                                </li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${counterKw != 0}">
                            <c:forEach var="pi" begin="1" end="${Math.ceil(counterKw/9)}">
                                <li class="num active">
                                    <a href="<c:url value="/"/>?page=${pi}">
                                        ${pi}
                                    </a>
                                </li>
                            </c:forEach>
                        </c:if>
                        <li class="arrow"><i class="fas fa-chevron-right"></i></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Popular places ends -->
