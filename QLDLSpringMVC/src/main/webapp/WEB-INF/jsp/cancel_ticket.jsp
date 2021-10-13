<%-- 
    Document   : cancel_ticket
    Created on : Oct 13, 2021, 7:45:41 PM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-content">
    <div class="container-fluid main-table">
        <div class="main-title">
            <h2><i class="fas fa-strikethrough mr-2"></i>Hủy vé</h2>
        </div>
        <c:if test="${errMsg != null}">
            <div class="form-group">
                <span class="form-message-login error">
                    ${errMsg}
                </span>
            </div>
        </c:if>
        <c:if test="${successMsg != null}">
            <div class="form-group">
                <span class="form-message-login success">
                    ${successMsg}
                </span>
            </div>
        </c:if>
        <form method="post" action="" class="form-add" enctype="multipart/form-data">
            <div class="form-group">
                <label for="inputTour" class="form-label col-form-label-lg">Mã chuyến đi</label>
                <input type="text" name="" class="form-control form-control-lg" id="inputTour" readonly="true" value="011">
                <%--<form:errors path="title" cssClass="text text-danger form-message" element="span" />--%>
            </div>
            <div class="form-group">
                <label for="inputBooking" class="form-label col-form-label-lg">Mã đặt vé</label>
                <input type="text" name="" class="form-control form-control-lg" id="inputBooking" readonly="true" value="011">
                <%--<form:errors path="title" cssClass="text text-danger form-message" element="span" />--%>
            </div>
            <div class="form-group">
                <label for="inputReasons" class="form-label col-form-label-lg">Lý do hủy vé</label>
                <textarea class="form-control" name="" id="inputReasons" rows="5"></textarea>
            </div>
            <div class="form-group btn-wrapper">
                <button type="submit" class="btn btn-lg">Thêm</button>
            </div>
        </form>
    </div>
</div>
