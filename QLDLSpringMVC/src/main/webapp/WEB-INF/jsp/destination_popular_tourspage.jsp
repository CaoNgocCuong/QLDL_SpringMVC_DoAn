<%-- 
    Document   : destination_popular_tourspage
    Created on : Sep 21, 2021, 11:30:00 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/tours" var="action" />
<!-- Popular places start -->
<section id="popular-tourpage-place-id" class="travel-main popular-place">
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
            <c:forEach var="tourWithComment" items="${toursWithComment}">
                <div class="col col-lg-4">
                    <div class="single-place">
                        <div class="thumb">
                            <img src="${tourWithComment[3]}" alt="popular place">
                            <a href="<c:url value="/tours/${tourWithComment[0]}" />" class="price">${tourWithComment[7]} - ${tourWithComment[6]} (VNĐ)</a>
                        </div>
                        <div class="place-info">
                            <a href="<c:url value="/tours/${tourWithComment[0]}" />">
                                <h3>${tourWithComment[1]}</h3>
                            </a>
                            <p>${tourWithComment[14]}</p>
                            <div class="rating-days">
                                <span>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <a href="">(${tourWithComment[15]} bình luận)</a>
                                </span>
                                <div class="days">
                                    <i class="far fa-clock"></i>
                                    <a href="">${tourWithComment[4]} ngày ${tourWithComment[5]} đêm</a>
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
                                    <a href="<c:url value="/tours/"/>?page=${p}#popular-tourpage-place-id">
                                        ${p}
                                    </a>
                                </li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${counterKw != 0}">
                            <c:forEach var="pi" begin="1" end="${Math.ceil(counterKw/9)}">
                                <li class="num active">
                                    <a href="<c:url value="/tours/"/>?page=${pi}&&tourName=${param.tourName}#popular-tourpage-place-id">
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
