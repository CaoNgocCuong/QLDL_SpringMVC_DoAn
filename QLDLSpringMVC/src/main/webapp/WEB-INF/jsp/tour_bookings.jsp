<%-- 
    Document   : tour_bookings
    Created on : Oct 5, 2021, 10:57:50 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="book-tour-wrap">
    <div class="container book-tour">
        <div class="row">
            <div class="col col-lg-5">
                <div class="book-tour__contact">
                    <div class="book-tour__title">
                        <h3>${tourBooking.name}</h3>
                    </div>
                    <div class="book-tour__type">
                        <h2>${tourBooking.tourType}</h2>
                    </div>
                    <ul class="book-tour__list">
                        <li>
                            <a href="mailto:ngoccuong01032000@gmail.com"><i class="fas fa-envelope"></i>ngoccuong01032000@gmail.com</a>
                        </li>
                        <li>
                            <a href="tel:+84337152172"><i class="fas fa-phone-square-alt"></i>0337152172</a>
                        </li>
                    </ul>
                    <div class="book-tour__img">
                        <img src="<c:url value="/img/booktour-bg.jpg" />" alt="book-tour">
                    </div>
                </div>
            </div>
            <div class="col col-lg-7">
                <div class="book-tour__content">
                    <div class="tour-required">
                        <p>Dấu <span class="book-required">*</span> là thông tin bắt buộc</p>
                    </div>
                    <c:forEach items="${user}" var="u">
                        <form class="form-add">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputTourId" class="form-label col-form-label-lg ">Mã tour</label>
                                    <input type="text" class="form-control form-control-lg" id="inputTourId" disabled="true" value="${tourBooking.id}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputName" class="form-label col-form-label-lg ">Họ tên <span class="book-required">*</span></label>
                                    <input type="text" class="form-control form-control-lg" id="inputName" disabled="true" value="${u.fullName}">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail" class="form-label col-form-label-lg ">Email <span class="book-required">*</span></label>
                                    <input type="email" class="form-control form-control-lg" id="inputEmail" disabled="true" value="${u.email}">
                                </div> 
                                <div class="form-group col-md-6">
                                    <label for="inputPhone" class="form-label col-form-label-lg ">Số điện thoại <span class="book-required">*</span></label>
                                    <input type="number" class="form-control form-control-lg" id="inputPhone" disabled="true" value="${u.phone}">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputMale" class="form-label col-form-label-lg">Số người lớn <span class="book-required">*</span></label>
                                    <input type="number" class="form-control form-control-lg" id="inputMale" value="0" min="0">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputFemale" class="form-label col-form-label-lg">Số người trẻ em <span class="book-required">*</span></label>
                                    <input type="number" class="form-control form-control-lg" id="inputFemale" value="0" min="0">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputPriceAdult" class="form-label col-form-label-lg">Giá người lớn</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="inputPriceAdult" aria-label="Dollar amount (with dot and two decimal places)" value="0" min="0">
                                        <span class="input-group-text">$</span>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPriceChild" class="form-label col-form-label-lg">Giá trẻ em</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="inputPriceChild" aria-label="Dollar amount (with dot and two decimal places)" value="0" min="0">
                                        <span class="input-group-text">$</span>
                                        </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputTimeStart" class="form-label col-form-label-lg">Ngày bắt đầu</label>
                                    <input type="datetime" class="form-control form-control-lg" id="inputTimeStart" disabled="true" value="${tourBooking.startDate}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputTimeEnd" class="form-label col-form-label-lg">Ngày kết thúc</label>
                                    <input type="datetime" class="form-control form-control-lg" id="inputTimeEnd" disabled="true" value="${tourBooking.endDate}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="summernote" class="form-label col-form-label-lg">Ghi chú</label>
                                <textarea class="form-control" name="editordata" rows="3"></textarea>
                            </div>
                            <div class="wrap-submit">
                                <div class="book-tour-total">Tổng thanh toán: <span>1.200.200</span>VNĐ</div>
                                <button type="submit" class="btn btn-lg">Đặt vé</button>
                            </div>
                        </form>
                    </c:forEach>

                </div>
            </div>
        </div>
    </div>
</div>
