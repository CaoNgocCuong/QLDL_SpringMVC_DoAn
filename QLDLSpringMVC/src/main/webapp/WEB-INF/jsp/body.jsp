<%-- 
    Document   : body
    Created on : Aug 24, 2021, 8:08:50 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--<h1>Hello main</h1>
<ul>
    <c:forEach var="category" items="${categories}">
        <li>${category.name}</li>
        <li>${category.description}</li>
    </c:forEach>
</ul>-->

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
                    <div class="grid wide">
                        <div class="row">
                            <div class="col l-12 slider-text-align">
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
                    <div class="grid wide">
                        <div class="row">
                            <div class="col l-12 slider-text-align">
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
                    <div class="grid wide">
                        <div class="row">
                            <div class="col l-12 slider-text-align">
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
                    <div class="grid wide">
                        <div class="row">
                            <div class="col l-12 slider-text-align">
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
            <div class="grid wide">
                <div class="row">
                    <div class="col l-3">
                        <div class="form-ask">
                            <h3>Bạn muốn đi đâu?</h3>
                        </div>
                    </div>
                    <div class="col l-9">
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
                                    <button type="submit" class="btn">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search start -->

        <!-- Popular area start -->
        <section class="travel-main popular-destination">
            <div class="grid wide">
                <div class="row align-item">
                    <div class="col l-6">
                        <div class="section-title">
                            <h3>
                                Địa điểm nổi tiếng
                            </h3>
                            <p>
                                Suffered alteration in some form, by injected humour or good day randomised booth anim 8-bit hella wolf moon beard words.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col l-4">
                        <div class="single-destination">
                            <div class="thumb">
                                <img src="./img/1.png" alt="thumb1">
                            </div>
                            <div class="single-destination__content">
                                <p class="single-destination__content-title align-item">Brazil 
                                    <a href="">03 Places</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-destination">
                            <div class="thumb">
                                <img src="./img/1.png" alt="thumb1">
                            </div>
                            <div class="single-destination__content">
                                <p class="single-destination__content-title align-item">Brazil 
                                    <a href="">03 Places</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-destination">
                            <div class="thumb">
                                <img src="./img/1.png" alt="thumb1">
                            </div>
                            <div class="single-destination__content">
                                <p class="single-destination__content-title align-item">Brazil 
                                    <a href="">03 Places</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-destination">
                            <div class="thumb">
                                <img src="./img/1.png" alt="thumb1">
                            </div>
                            <div class="single-destination__content">
                                <p class="single-destination__content-title align-item">Brazil 
                                    <a href="">03 Places</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-destination">
                            <div class="thumb">
                                <img src="./img/1.png" alt="thumb1">
                            </div>
                            <div class="single-destination__content">
                                <p class="single-destination__content-title align-item">Brazil 
                                    <a href="">03 Places</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-destination">
                            <div class="thumb">
                                <img src="./img/1.png" alt="thumb1">
                            </div>
                            <div class="single-destination__content">
                                <p class="single-destination__content-title align-item ">Brazil 
                                    <a href="">03 Places</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Popular area end -->

        <!-- Newletter area start -->
        <section class="newletter-area overlay">
            <div class="grid wide">
                <div class="row align-item">
                    <div class="col l-10">
                        <div class="row">
                            <div class="col l-5">
                                <div class="letter-text">
                                    <h4>Đăng kí bản tin của chúng tôi</h4>
                                    <p>Đăng ký bản tin để nhận ưu đãi và về các địa điểm mới để khám phá.</p>
                                </div>
                            </div>
                            <div class="col l-7 align-item">
                                <div class="letter-form">
                                    <div class="row">
                                        <div class="col l-9">
                                            <div class="newsletter_field">
                                                <input type="email" name="" id="" placeholder="Nhập email của bạn...">
                                            </div>
                                        </div>
                                        <div class="col l-3">
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

        <!-- Popular places start -->
        <section class="travel-main popular-place">
            <div class="grid wide">
                <div class="row align-item">
                    <div class="col l-6">
                        <div class="section-title">
                            <h3>Địa điểm phổ biến</h3>
                            <p>Suffered alteration in some form, by injected humour or good day randomised booth anim 8-bit hella wolf moon beard words.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/2.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/6.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/3.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/6.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/1.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/2.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/6.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/1.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="./img/tour/2.png" alt="popular place">
                                <a href="" class="price">$500</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>California</h3>
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
                                        <a href="">5 ngày</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col l-12">
                        <div class="popular-place-pagi">
                            <ul>
                                <li class="arrow disabled"><i class="fas fa-chevron-left"></i></li>
                                <li class="num active">1</li>
                                <li class="num">2</li>
                                <li class="num">3</li>
                                <li class="num">...</li>
                                <li class="num">10</li>
                                <li class="arrow"><i class="fas fa-chevron-right"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Popular places ends -->

        <!-- Travel variation area start -->
        <section class="travel-variation overlay">
            <div class="grid wide">
                <div class="row">
                    <div class="col l-4">
                        <div class="single-travel">
                            <div class="icon">
                                <img src="./img/train.svg" alt="train service">
                            </div>
                            <h3>Thoải mái với mọi hành trình</h3>
                            <p>Một sự thanh thản tuyệt vời đã chiếm hữu toàn bộ tâm hồn tôi.</p>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-travel">
                            <div class="icon">
                                <img src="./img/hotel.svg" alt="train service">
                            </div>
                            <h3>Khách sạn sang trọng</h3>
                            <p>Một sự thanh thản tuyệt vời đã chiếm hữu toàn bộ tâm hồn tôi.</p>
                        </div>
                    </div>
                    <div class="col l-4">
                        <div class="single-travel">
                            <div class="icon">
                                <img src="./img/world.svg" alt="train service">
                            </div>
                            <h3>Những hướng dẫn viên tuyệt vời</h3>
                            <p>Một sự thanh thản tuyệt vời đã chiếm hữu toàn bộ tâm hồn tôi.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Travel variation area end -->

        <!-- Testmonial start -->
        <section class="testimonial-area">
            <div class="grid wide">
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
                                    <img src="./img/author/author1.png" alt="author1">
                                    <span><i class="far fa-comment-dots"></i></span>
                                </div>
                                <div class="testimonial-info">
                                    <p class="testimonial-info__content">Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering.</p>
                                    <h3 class="testimonial-info__author">Tom mouse</h3>
                                </div>
                            </div>
                            <div class="testimonial-slide">
                                <div class="testimonial-thumb">
                                    <img src="./img/author/author1.png" alt="author1">
                                    <span><i class="far fa-comment-dots"></i></span>
                                </div>
                                <div class="testimonial-info">
                                    <p class="testimonial-info__content">Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering.</p>
                                    <h3 class="testimonial-info__author">Tom mouse</h3>
                                </div>
                            </div>
                            <div class="testimonial-slide">
                                <div class="testimonial-thumb">
                                    <img src="./img/author/author1.png" alt="author1">
                                    <span><i class="far fa-comment-dots"></i></span>
                                </div>
                                <div class="testimonial-info">
                                    <p class="testimonial-info__content">Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering.</p>
                                    <h3 class="testimonial-info__author">Tom mouse</h3>
                                </div>
                            </div>
                            <div class="testimonial-slide">
                                <div class="testimonial-thumb">
                                    <img src="./img/author/author1.png" alt="author1">
                                    <span><i class="far fa-comment-dots"></i></span>
                                </div>
                                <div class="testimonial-info">
                                    <p class="testimonial-info__content">Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering.</p>
                                    <h3 class="testimonial-info__author">Tom mouse</h3>
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

        <!-- Trip start -->
        <section class="travel-main trip">
            <div class="grid wide">
                <div class="row align-item">
                    <div class="col l-6">
                        <div class="section-title">
                            <h3>Chuyến đi gần đây</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col l-4">
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
                    <div class="col l-4">
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
                    <div class="col l-4">
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