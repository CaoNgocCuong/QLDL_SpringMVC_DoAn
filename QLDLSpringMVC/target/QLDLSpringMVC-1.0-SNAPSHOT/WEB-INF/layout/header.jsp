<%-- 
    Document   : header
    Created on : Aug 7, 2021, 9:07:26 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
            <![endif]-->

        <!-- header-start -->
<!--        <header>
            <div class="header-area ">
                <div id="sticky-header" class="main-header-area">
                    <div class="container-fluid">
                        <div class="header_bottom_border">
                            <div class="row align-items-center">
                                <div class="col-xl-2 col-lg-2">
                                    <div class="logo">
                                        <a href="index.html">
                                            <img src="<c:url value="/img/logo.png"/>" alt="logo" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6">
                                    <div class="main-menu  d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a class="active" href="/QLDLSpringMVC/">Home</a></li>
                                                <li><a href="about.html">About</a></li>
                                                <li><a class="" href="travel_destination.html">Destination</a></l/li>
                                                <li><a href="#">pages <i class="ti-angle-down"></i></a>
                                                    <ul class="submenu">
                                                            <li><a href="destination_details.html">Destinations details</a></li>
                                                            <li><a href="elements.html">elements</a></li>
                                                    </ul>
                                                </li>
                                                
                                                <li><a href="contact.html">Contact</a></li>
                                                <li><a href="<c:url value="/register" />">Register</a></li>
                                                <c:if test="${pageContext.request.userPrincipal.name == null}">
                                                    <li><a class="nav-link text-danger" href="<c:url value="/login" />">Login</a></li>
                                                </c:if>
                                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                                    <li><a class="nav-link text-danger" href="<c:url value="/" />">${pageContext.request.userPrincipal.name}</a></li>
                                                    <li><a class="nav-link text-danger" href="<c:url value="/logout" />">Logout</a></li>
                                                </c:if>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 d-none d-lg-block">
                                    <div class="social_wrap d-flex align-items-center justify-content-end">
                                        <div class="number">
                                            <p> <i class="fas fa-phone-alt"></i> 10(256)-928 256</p>
                                        </div>
                                        <div class="social_links d-none d-xl-block">
                                            <ul>
                                                <li><a href="#"> <i class="fa fa-instagram"></i> </a></li>
                                                <li><a href="#"> <i class="fa fa-linkedin"></i> </a></li>
                                                <li><a href="#"> <i class="fa fa-facebook"></i> </a></li>
                                                <li><a href="#"> <i class="fa fa-google-plus"></i> </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="seach_icon">
                                    <a data-toggle="modal" data-target="#exampleModalCenter" href="#">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                                <div class="col-12">
                                    <div class="mobile_menu d-block d-lg-none"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </header>-->

 <header id="header">
        <div class="top-header">
            <div class="grid wide">
                <div class="row">
                    <div class="col l-12">
                        <div class="number-contact">
                            <p>
                                <i class="fas fa-phone-alt"></i>
                                Hotline: <a href="tel:1900 0909 09"><strong>1900 0909 09</strong></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="grid wide">
            <div class="row header">
                <div class="col m-2 l-2">
                    <div class="logo">
                        <h1 class="logo__heading">
                            <a href="#" >
                                <img src="./img/logo.png" alt="travel ck">
                            </a>
                        </h1>
                    </div>
                </div>
                <div class="col m-6 l-6">
                    <ul class="navbar-list">
                        <li class="navbar-list__item active">
                            <a href="#">Trang chủ</a>
                        </li>
                        <li class="navbar-list__item">
                            <a href="./tour.html">Du lịch <i class="fas fa-caret-down"></i></a>
                            <ul class="sub-nav">
                                <li class="sub-nav__list">
                                    <a href="./tour.html">Du lịch trong nước</a>
                                </li>
                                <li class="sub-nav__list">
                                    <a href="./tour.html">Du lịch ngoài nước</a>
                                </li>
                            </ul>
                        </li>
                        <li class="navbar-list__item">
                            <a href="">Vé máy bay</a>
                        </li>
                        <li class="navbar-list__item">
                            <a href="">Tin tức</a>
                        </li>
                        <li class="navbar-list__item">
                            <a href="./contact.html">Liên hệ</a>
                        </li>
                        <li class="navbar-list__item">
                            <a href="./about.html">Về chúng tôi</a>
                        </li>
                    </ul>
                </div>
                <div class="col m-4 l-4">
                    <div class="login">
                        <div class="socials-wrap">
                            <ul class="socials-list">
                                <li class="socials-list__item">
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </li>
                                <li class="socials-list__item">
                                    <a href=""><i class="fab fa-linkedin"></i></a>
                                </li>
                                <li class="socials-list__item">
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                </li>
                                <li class="socials-list__item">
                                    <a href=""><i class="fab fa-google-plus-g"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="user-wrapper">
                            <i class="far fa-user user-icon"></i>
                            <div class="wrap">
                                <span class="user-header">Tài khoản</span>
                                <i class="fas fa-angle-down user-down"></i>
                                <ul class="user-dropdown">
                                    <li class="btn-login-wrap">
                                        <a href="./admin.html" class="btn-login">Đăng nhập</a>
                                    </li>
                                    <li class="register-text">
                                        Chưa có tài khoản?
                                        <a class="register-link">Đăng ký</a>
                                        ngay!
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>                                          