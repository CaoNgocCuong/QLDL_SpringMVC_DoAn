<%-- 
    Document   : tour_bookings_success
    Created on : Nov 14, 2021, 10:48:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="travel-main travel-main-booking">
    <div class="container">
        <div class="row">
            <div class="col col-xs-12">
                <div class="booking-notify d-flex justify-content-center">
                    <h2 class="heading">Quý khách đã đặt tour thành công, vui lòng thanh toán để chúng tôi cập nhật vé sớm nhất! </h2>
                    <a href="<c:url value="/"/>" class="booking-back">Quay lại trang chủ.</a>
                </div>
            </div>
        </div>
    </div>
</section>
