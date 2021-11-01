<%-- 
    Document   : bookingtour-management
    Created on : Oct 12, 2021, 9:17:47 AM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex justify-content-between">
            <h2 class="col-12 col-md-6">Danh sách đặt vé</h2>
            <form action="" class="col-12 col-md-6 form-search justify-content-between">
                <input type="text" name="bookingId" placeholder="Tìm kiếm..." required="">
                <button><i class="fas fa-search"></i></button>
            </form>
        </div>    
        
        <div class="user-table booking-tour">
            <c:if test="${!bookings.isEmpty()}">
            <table>
                <thead>
                    <tr>
                        <td>Mã booking</td>
                        <td>Mã chuyến đi</td>
                        <td>Tên khách hàng</td>
                        <td>Số người lớn</td>
                        <td>Số trẻ em</td>
                        <td>Tổng tiền</td>
                        <td>Trạng thái thanh toán</td>
                        <td>Hành động</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="b" items="${bookings}">
                        <tr>
                            <td>${b.id}</td>
                            <td>${b.tour.id}</td>
                            <td>${b.user.fullName}</td>
                            <td>${b.adults}</td>
                            <td>${b.children}</td>
                            <td>${b.adults * b.tour.adultsPrice + b.children * b.tour.childrenPrice} VNĐ</td>
                            <td>
                                <c:if test="${b.status == 0}">
                                    <a href="#" class="btn denied">Chưa thanh toán</a>
                                </c:if>
                                <c:if test="${b.status == 1}">
                                    <a href="#" class="btn active">Đã thanh toán</a>
                                </c:if>
                                <c:if test="${b.status == 2}">
                                    <a href="#" class="btn active">Đã hủy</a>
                                </c:if>
                            </td>
                            <td class="booking-tour-tbody">
                                <c:if test="${b.status == 0}">
                                <a href="<c:url value="/admin/bookingtour-management/cancel-ticket/${b.id}" />" class="btn denied">Hủy vé</a>
                                <a href="javascript:;" onclick="addBill(${b.id})" class="btn active">Chuyển trạng thái</a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </c:if>
            <c:if test="${bookings.isEmpty()}">
                <h1 class="text-danger">Chưa có booking nào chưa thanh toán.</h1>
            </c:if>
        </div>
    </div
</div>
<script src="<c:url value="/js/script.js" />"></script>