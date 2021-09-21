<%-- 
    Document   : tours
    Created on : Sep 10, 2021, 8:40:15 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/tours" var="action" />


<div id="main">
    <!-- Slider start -->
    <div class="slider">
        <div class="sliders">
            <!-- Radio button start -->
            <input type="radio" name="radio-btn" id="radio1">
            <input type="radio" name="radio-btn" id="radio2">
            <input type="radio" name="radio-btn" id="radio3">
            <input type="radio" name="radio-btn" id="radio4">
            <!-- Radio button end -->

            <!-- Slide image start -->
            <div class="slide first">
                <img src="./img/banner2.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-12 slider-text-align">
                            <div class="slider-text">
                                <h3>Indonesia</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slide ">
                <img src="./img/banner4.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-12 slider-text-align">
                            <div class="slider-text">
                                <h3>Indonesia</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slide ">
                <img src="./img/banner3.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-12 slider-text-align">
                            <div class="slider-text">
                                <h3>Indonesia</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slide ">
                <img src="./img/banner.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col col-lg-12 slider-text-align">
                            <div class="slider-text">
                                <h3>Indonesia</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Slide image end -->

            <!-- Automatic navigation start -->
            <div class="navigation-auto">
                <div class="auto-btn1"></div>
                <div class="auto-btn2"></div>
                <div class="auto-btn3"></div>
                <div class="auto-btn4"></div>
            </div>
            <!-- Automatic navigation end -->
        </div>
        <!-- Manual navigation start -->
        <div class="manual-navigation">
            <label for="radio1" class="manual-btn"></label>
            <label for="radio2" class="manual-btn"></label>
            <label for="radio3" class="manual-btn"></label>
            <label for="radio4" class="manual-btn"></label>
        </div>
        <!-- Manual navigation end -->
    </div>
    <!-- Slider end -->

    <!-- Search start -->
    <div class="search-area">
        <div class="container">
            <div class="row">
                <div class="col col-lg-3">
                    <div class="form-ask">
                        <h3>Bạn muốn đi đâu?</h3>
                    </div>
                </div>
                <div class="col col-lg-9">
                    <div class="search-wrap">
                        <form action="" class="search-form">
                            <div class="form-item">
                                <input type="text" name="" id="" placeholder="Bạn muốn đi đâu?">
                            </div>
                            <div class="form-item">
                                <input type="date" name="" id="">
                            </div>
                            <div class="form-item">
                                <select name="" id="">
                                    <option value="null">Loại du lịch</option>
                                    <option value="trong-nuoc">Du lịch trong nước</option>
                                    <option value="ngoai-nuoc">Du lịch ngoài nước</option>
                                </select>
                            </div>
                            <div class="form-item">
                                <button type="submit" class="btn">Tìm kiếm</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search start -->

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
                                <a href="#" class="price">${tour.childrenPrice} - ${tour.adultsPrice} (VNĐ)</a>
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
                            <c:forEach begin="1" end="${Math.ceil(counter/15)}" var="p">
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

     <!-- Newletter area start -->
     <section class="newletter-area overlay">
        <div class="container">
            <div class="row align-item">
                <div class="col col-lg-10">
                    <div class="row">
                        <div class="col col-lg-5">
                            <div class="letter-text">
                                <h4>Đăng kí bản tin của chúng tôi</h4>
                                <p>Đăng ký bản tin để nhận ưu đãi và về các địa điểm mới để khám phá.</p>
                            </div>
                        </div>
                        <div class="col col-lg-7 align-item">
                            <div class="letter-form">
                                <div class="row">
                                    <div class="col col-lg-9">
                                        <div class="newsletter_field">
                                            <input type="email" name="" id="" placeholder="Nhập email của bạn...">
                                        </div>
                                    </div>
                                    <div class="col col-lg-3">
                                        <div class="newletter_btn">
                                            <button type="submit" class="btn">Đăng kí</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Newletter area end -->

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
                            <img src="./img/trips/trip-1.png" alt="trip1">
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
                            <img src="./img/trips/trip-2.png" alt="trip1">
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
                            <img src="./img/trips/trip-3.png" alt="trip1">
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
</div>