<%-- 
    Document   : blogs
    Created on : Sep 21, 2021, 6:05:40 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Trip start -->
<section class="travel-main trip">
    <div class="container">
        <div class="row align-item">
            <div class="col col-lg-6">
                <div class="section-title">
                    <h3>Bản tin gần đây</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col col-lg-4">
                <div class="single-trip">
                    <div class="single-trip__img">
                        <img src="<c:url value="/img/trips/trip-1.png" />" alt="trip1">
                    </div>
                    <div class="single-trip__info">
                        <div class="single-trip__date">
                            <span>Oct 12, 2019</span>
                        </div>
                        <a href="">
                            <h3>Journeys Are Best Measured In New Friends</h3>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col col-lg-4">
                <div class="single-trip">
                    <div class="single-trip__img">
                        <img src="<c:url value="/img/trips/trip-2.png" />" alt="trip1">
                    </div>
                    <div class="single-trip__info">
                        <div class="single-trip__date">
                            <span>Oct 12, 2019</span>
                        </div>
                        <a href="">
                            <h3>Journeys Are Best Measured In New Friends</h3>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col col-lg-4">
                <div class="single-trip">
                    <div class="single-trip__img">
                        <img src="<c:url value="/img/trips/trip-3.png" />" alt="trip1">
                    </div>
                    <div class="single-trip__info">
                        <div class="single-trip__date">
                            <span>Oct 12, 2019</span>
                        </div>
                        <a href="">
                            <h3>Journeys Are Best Measured In New Friends</h3>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Trip end -->
