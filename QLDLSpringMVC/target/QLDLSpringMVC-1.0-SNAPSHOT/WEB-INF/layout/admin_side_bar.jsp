<%-- 
    Document   : admin_side_bar
    Created on : Sep 14, 2021, 8:48:51 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="side-bar">
    <div class="logo">
        <a href="#"><img src="./img/logo.png" alt="travelCK"></a>
    </div>
    <div class="avtar">
        <div class="avtar-img">
            <img src="./img/avtar/avtar.jpg" alt="avtar">
        </div>
        <div class="name-pos">
            <h3>Cao Ngọc Cường</h3>
            <h5>Admin</h5>
        </div>
    </div>
    <div class="side-bar-nav">
        <ul>
            <li>
                <a href="<c:url value="/admin"/>" class="link-wrapper">
                    <span><i class="fas fa-home"></i></span>
                    <span class="nav-link">Bảng điều khiển</span>
                </a>        
            </li>
            <li>
                <a href="<c:url value="/admin/user_management"/>" class="link-wrapper">
                    <span><i class="fas fa-users"></i></span>
                    <span class="nav-link">Quản lý người dùng</span>
                </a>
            </li>
            <li>
                <a href="<c:url value="/admin/tour_management"/>" class="link-wrapper active">
                    <span><i class="fas fa-route"></i></span>
                    <span class="nav-link">Quản lý du lịch</span>
                </a>
            </li>
            <li>
                <a href="#" class="link-wrapper">
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
                <a href="#" class="link-wrapper">
                    <span><i class="fas fa-sign-out-alt"></i></span>
                    <span class="nav-link">Đăng xuất</span>
                </a>
            </li>
        </ul>
    </div>
</div>
