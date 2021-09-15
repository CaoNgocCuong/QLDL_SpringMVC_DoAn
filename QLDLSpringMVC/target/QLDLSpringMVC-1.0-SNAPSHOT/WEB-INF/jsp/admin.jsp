<%-- 
    Document   : admin
    Created on : Sep 14, 2021, 12:47:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <div class="main-content">
    <div class="info-card">
        <div class="card">
            <div class="card-icon">
                <span><i class="fas fa-layer-group"></i></span>
            </div>
            <div class="card-detail">
                <h4>Tổng số cổ phần</h4>
                <h2>$100,000</h2>
            </div>
            <p>Tăng lên 60%</p>
        </div>
        <div class="card">
            <div class="card-icon">
                <span><i class="fas fa-money-check-alt"></i></span>
            </div>
            <div class="card-detail">
                <h4>Tổng lợi nhuận</h4>
                <h2>$150,000</h2>
            </div>
            <p>Tăng lên 30%</p>
        </div>
        <div class="card">
            <div class="card-icon">
                <span><i class="fas fa-male"></i></span>
            </div>
            <div class="card-detail">
                <h4>Khách tham quan</h4>
                <h2>$120,000</h2>
            </div>
            <p>Tăng lên 90%</p>
        </div>
    </div>
    <div class="main-table">
        <div class="main-title">
            <h2>Người dùng trong hệ thống</h2>
        </div>
        <div class="user-table">
            <table>
                <thead>
                    <tr>
                        <td>Mã nhân viên</td>
                        <td>Họ tên nhân viên</td>
                        <td>Số điện thoại</td>
                        <td>Email</td>
                        <td>Địa chỉ</td>
                        <td>Ngày tạo</td>
                        <td>Vai trò</td>
                        <td>Trạng thái</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.fullName}</td>
                            <td>${user.phone}</td>
                            <td>${user.email}</td>
                            <td>${user.address}</td>
                            <td><fmt:formatDate pattern="dd-MM-yyyy" value="${user.createdDate}"/></td>
                            <c:set var="userRole" value="${user.userRole}"/>
                            <c:if test="${fn:endsWith(userRole, 'USER')}">
                                <td>Khách</td>
                            </c:if>
                            <c:if test="${fn:endsWith(userRole, 'EMPLOYEE')}">
                                <td>Nhân viên</td>
                            </c:if>
                            <c:if test="${fn:endsWith(userRole, 'ADMIN')}">
                                <td>Admin</td>
                            </c:if>
                            <td><a href="#" class="btn active">${user.active}</a></td>
                        </tr>
                    </c:forEach>                   
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="./js/script-adminpage.js"></script>