<%-- 
    Document   : slide_header
    Created on : Sep 21, 2021, 5:19:31 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <img src="<c:url value="/img/banner2.png"/>" alt="">
            <div class="container container-slide">
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
            <img src="<c:url value="/img/banner4.png"/>" alt="">
            <div class="container container-slide">
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
            <img src="<c:url value="/img/banner3.png"/>" alt="">
            <div class="container container-slide">
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
            <img src="<c:url value="/img/banner.png"/>"alt="">
            <div class="container container-slide">
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
