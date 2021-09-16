<%-- 
    Document   : header
    Created on : Aug 7, 2021, 9:07:26 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
            <![endif]-->

        <!-- header-start -->

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
                            <a href="<c:url value="/"/>">Trang chủ</a>
                        </li>
                        <li class="navbar-list__item">
                            <a href="./tour.html">Du lịch <i class="fas fa-caret-down"></i></a>
                            <ul class="sub-nav">
                                <li class="sub-nav__list">
                                    <a href="<c:url value="/tours"/>">Du lịch trong nước</a>
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
                            <a href="<c:url value="/blog"/>">Tin tức</a>
                        </li>
                        <li class="navbar-list__item">
                            <a href="<c:url value="/contact"/>">Liên hệ</a>
                        </li>
                        <li class="navbar-list__item">
                            <a href="<c:url value="/about"/>">Về chúng tôi</a>
                        </li>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                            <li class="navbar-list__item">
                                <a href="<c:url value="/admin"/>">Admin</a>
                            </li>
                        </sec:authorize>
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
                            <c:if test="${pageContext.request.userPrincipal.name == null}">
                                <div class="wrap">
                                    <span class="user-header">Tài khoản</span>
                                    <i class="fas fa-angle-down user-down"></i>
                                    <ul class="user-dropdown">
                                        <li class="btn-login-wrap">
                                            <a href="<c:url value="/login"/>" class="btn-login">Đăng nhập</a>
                                        </li>
                                        <li class="register-text">
                                            Chưa có tài khoản?
                                            <a href="<c:url value="/register"/>" class="register-link">Đăng ký</a>
                                            ngay!
                                        </li>
                                    </ul>
                                </div>
                            </c:if>      
                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <div class="wrap">
                                    <span class="user-header">
                                        <a href="#">${pageContext.request.userPrincipal.name}</a>
                                        <a href="<c:url value="/logout"/>">(Đăng xuất)</a>
                                    </span>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>                                          