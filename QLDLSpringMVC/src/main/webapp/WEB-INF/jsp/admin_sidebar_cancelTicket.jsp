<%-- 
    Document   : admin_sidebar_cancelTicket
    Created on : Oct 13, 2021, 7:44:45 PM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- Side bar start -->
<div class="side-bar">
    <div class="logo">
        <a href="#"><img src="<c:url value="/img/logo.png" />" alt="travelCK"></a>
    </div>
    <c:forEach var="userAdminSide" items="${user}">
        <div class="avtar">
            <div class="avtar-img">
                <img src="<c:url value="${userAdminSide.avatar}" />" alt="${userAdminSide.fullName}">
            </div>
            <c:set value="${userAdminSide.userRole}" var="role" />
            <c:if test="${fn:endsWith(role, 'ADMIN')}">
                <div class="name-pos">
                    <h3>${userAdminSide.fullName}</h3>
                    <h5>Admin</h5>
                </div>
            </c:if>
        </div>
    </c:forEach>
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
                    <span class="nav-link">Quản lý nhân viên</span>
                </a>
            </li>
            <li>
                <div class="link-wrapper">
                    <span><i class="fas fa-route"></i></span>
                    <span class="nav-link">
                        Quản lý du lịch
                    </span>
                    <span class="ml-5"><i class="fas fa-angle-down"></i></span>
                </div>
                <ul class="side-bar-subnav-1">
                    <li>
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
                <div class="link-wrapper active">
                    <span><i class="fas fa-database"></i></span>
                    <span class="nav-link">
                        Quản lý đặt vé
                    </span>
                    <span class="ml-5"><i class="fas fa-angle-down"></i></span>
                </div>
                <ul class="side-bar-subnav-1">
                    <li>
                        <a href="<c:url value="/admin/bookingtour-management/" />">
                            <i class="fas fa-ticket-alt mr-2"></i>
                            <span class="hide-nav">Quản lý trạng thái vé</span>
                        </a>
                    </li>
                    <li class="page-2">
                        <a href="<c:url value="/admin/cancel-ticket/" />">
                            <i class="fas fa-strikethrough mr-2"></i>
                            <span class="hide-nav">Hủy vé</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <div class="link-wrapper">
                    <span><i class="fas fa-database"></i></span>
                    <span class="nav-link">
                        Thống kê doanh thu
                    </span>
                    <span class="ml-5"><i class="fas fa-angle-down"></i></span>
                </div>
                <ul class="side-bar-subnav-2">
                   <li>
                        <a href="<c:url value="/admin/stats-tour" />">
                            <i class="fas fa-chart-pie mr-2"></i>
                            <span class="hide-nav">Thống kê theo chuyến đi</span>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/stats-tour-month" />">
                            <i class="fas fa-chart-bar mr-2"></i>
                            <span class="hide-nav">Thống kê chuyến đi theo tháng</span>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/tour-detail-management" />"><i class="fas fa-chart-line mr-2"></i></i>
                            <span class="hide-nav">Thống kê chuyến đi theo quý</span>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/stats-tour-year" />"><i class="fas fa-chart-line mr-2"></i>
                            <span class="hide-nav">Thống kê chuyến đi theo năm</span>
                        </a>
                    </li>
                </ul >
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
