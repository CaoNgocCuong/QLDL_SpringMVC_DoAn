<%-- 
    Document   : tours
    Created on : Sep 10, 2021, 8:40:15 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/tours" var="action" />

<div id="main" var="">
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
                                <input type="text" name="tourName" id="" placeholder="Bạn muốn đi đâu?">
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
        <div class="grid wide">
            <div class="row align-item">
                <div class="col l-12">
                    <div class="popular-place__box-top hide">
                        <span>Sắp xếp:</span>
                        <ul class="popular-place__list">
                            <li class="popular-place__item">Ngày khởi hành 
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
                <c:forEach var="t" items="${tours}">
                    <div class="col l-4">
                        <div class="single-place">
                            <div class="thumb">
                                <img src="${t.photo}" alt="popular place">
                                <a href="" class="price">${t.childrenPrice} - ${t.adultsPrice} (VNĐ)</a>
                            </div>
                            <div class="place-info">
                                <a href="">
                                    <h3>${t.name}</h3>
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
                                        <a href="">${t.tourDays} ngày ${t.tourNights} đêm</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="row">
                <div class="col l-12">
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
    <!-- Trip end -->
</div>
