<%-- 
    Document   : admin_sidebar_tourmanagement
    Created on : Sep 25, 2021, 10:00:36 AM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Side bar start -->
<div class="side-bar">
    <div class="logo">
        <a href="#"><img src="<c:url value="/img/logo.png" />" alt="travelCK"></a>
    </div>
    <div class="avtar">
        <div class="avtar-img">
            <img src="<c:url value="/img/avtar/avtar.jpg" />" alt="avtar">
        </div>
        <div class="name-pos">
            <h3>Cao Ngọc Cường</h3>
            <h5>Admin</h5>
        </div>
    </div>
    <div class="side-bar-nav">
        <ul>
            <li>
                <a href="<c:url value="/admin" />" class="link-wrapper">
                    <span><i class="fas fa-home"></i></span>
                    <span class="nav-link">Bảng điều khiển</span>
                </a>        
            </li>
            <li>
                <a href="<c:url value="/admin/user-management" />" class="link-wrapper">
                    <span><i class="fas fa-users"></i></span>
                    <span class="nav-link">Quản lý người dùng</span>
                </a>
            </li>
            <li>
                <div class="link-wrapper active">
                    <span><i class="fas fa-route"></i></span>
                    <span class="nav-link">
                        Quản lý du lịch
                    </span>
                    <span class="ml-5"><i class="fas fa-angle-down"></i></span>
                </div>
                <ul class="side-bar-subnav">
                    <li class="page-1">
                        <a href="<c:url value="/admin/tour-management" />">
                            <i class="fas fa-plus mr-2"></i>
                            <span class="hide-nav">Thêm chuyến đi</span>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/tour-detail-management" />"><i class="fas fa-plus mr-2"></i>
                            <span class="hide-nav">Thêm chi tiết chuyến đi</span>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/tour-photo-management" />"><i class="fas fa-images mr-2"></i>
                            <span class="hide-nav">Thêm ảnh cho chuyến đi</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="<c:url value="/admin/blog-management" />" class="link-wrapper">
                    <span><i class="fas fa-newspaper"></i></span>
                    <span class="nav-link">Quản lý tin tức</span>
                </a>
            </li>
            <li>
                <a href="#" class="link-wrapper">
                    <span><i class="fas fa-chart-bar"></i></span>
                    <span class="nav-link">Thống kê</span>
                </a>
            </li>
            <li> 
                <a href="<c:url value="/logout" />" class="link-wrapper">
                    <span><i class="fas fa-sign-out-alt"></i></span>
                    <span class="nav-link">Đăng xuất</span>
                </a>
            </li>
        </ul>
    </div>
</div>
<!-- Side bar end -->
