<%-- 
    Document   : header
    Created on : Aug 7, 2021, 9:07:26 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  

<header id="header">
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col col-lg-12">
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
    <div class="container no-gutters-mobile">
        <div class="row header">
            <div class="col col-lg-2 hide-on-tablet">
                <div class="logo">
                    <h1 class="logo__heading">
                        <a href="#" >
                            <img src="<c:url value="/img/logo.png" />" alt="travel ck">
                        </a>
                    </h1>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12  col-md-10 col-lg-8">        
                <div class="bars-top">
                    <i class="fas fa-bars"></i>
                </div>
                <ul class="navbar-list">
                    <li class="navbar-list__item">
                        <a href="<c:url value="/" />" >Trang chủ</a>
                    </li>
                    <li class="navbar-list__item">
                        <a href="#">Du lịch <i class="fas fa-caret-down"></i></a>
                        <ul class="sub-nav">
                            <li class="sub-nav__list">
                                <a href="<c:url value="/tours/" />" >Du lịch trong nước</a>
                            </li>
                            <li class="sub-nav__list">
                                <a href="#">Du lịch ngoài nước</a>
                            </li>
                        </ul>
                    </li>
                    <li class="navbar-list__item">
                        <a href="">Vé máy bay</a>
                    </li>
                    <li class="navbar-list__item">
                        <a href="<c:url value="/blogs/" />">Tin tức</a>
                    </li>
                    <li class="navbar-list__item">
                        <a href="<c:url value="/contact/" />">Liên hệ</a>
                    </li>
                    <li class="navbar-list__item">
                        <a href="<c:url value="/about/" />" >Về chúng tôi</a>
                    </li>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <li class="navbar-list__item">
                            <a href="<c:url value="/admin" />" >Admin</a>
                        </li>
                    </sec:authorize>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
                <div class="login">
                    <div class="socials-wrap">
                        <ul class="socials-list">
                            <li class="socials-list__item">
                                <a href=""><i class="fab fa-instagram"></i></a>
                            </li>
                            <li class="socials-list__item">
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <li class="socials-list__item">
                                <a href=""><i class="fab fa-instagram"></i></a>
                            </li>
                            <li class="socials-list__item">
                                <a href=""><i class="fab fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="user-wrapper">
                        <i class="far fa-user user-icon"></i>
                        <!-- Login not yet! -->
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <div class="wrap">
                                <span class="user-header">Tài khoản</span>
                                <i class="fas fa-angle-down user-down"></i>
                                <ul class="user-dropdown">
                                    <li class="btn-login-wrap">
                                        <a href="<c:url value="/login" />" class="btn-login">Đăng nhập</a>
                                    </li>
                                    <li class="register-text">
                                        Chưa có tài khoản?
                                        <a href="<c:url value="/register" />" class="register-link">Đăng ký</a>
                                        ngay!
                                    </li>
                                </ul>
                            </div>
                        </c:if>
                         
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <!-- Logined -->
                            <div class="wrap">
                                <span class="user-header">${pageContext.request.userPrincipal.name}</span>
                                <i class="fas fa-angle-down user-down"></i>
                                <ul class="user-dropdown">
                                    <li class="register-text user-manage__text">
                                        <a href="#" class="user-manage">Quản lý tài khoản</a>
                                    </li>
                                    <li class="btn-login-wrap">
                                        <a href="<c:url value="/logout"/>" class="btn-login btn-logout">Đăng xuất</a>
                                    </li>
                                </ul>
                            </div>
                        </c:if>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>