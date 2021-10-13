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
    <div class="main-table">
        <div class="row main-title d-flex justify-content-between">
            <h2 class="col-12 col-md-6">Danh sách đặt vé</h2>
            <form action="" class="col-12 col-md-6 form-search justify-content-between">
                <input type="text" name="tourName" placeholder="Tìm kiếm..." required="">
                <button><i class="fas fa-search"></i></button>
            </form>
        </div>    
        <div class="user-table booking-tour">
            <table>
                <thead>
                    <tr>
                        <td>Mã chuyến đi</td>
                        <td>Tên chuyến đi</td>
                        <td>Tên khách hàng</td>
                        <td>Số người lớn</td>
                        <td>Số trẻ em</td>
                        <td>Tổng tiền</td>
                        <td>Trạng thái thanh toán</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                    <tr>
                        <td>001</td>
                        <td>Du lịch Hà Nội</td>
                        <td>Cao Ngọc Cường</td>
                        <td>3</td>
                        <td>2</td>
                        <td>11.000.000 VNĐ</td>
                        <td>
                            <a href="#" class="btn denied">Chưa thanh toán</a>
                            <a href="#" class="btn active">Đã thanh toán</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div
    <hr />
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
                <label for="inputListTour" class="form-label col-form-label-lg">Mã chuyến đi<span class="book-required">*</span></label>
                <select id="inputListTour" name="" class="form-control form-control-lg">
                    <option selected disabled>Chọn mã tour</option>
                    <option value="001">001</option>
                    <option value="002">002</option>
                </select>
            </div>
            <div class="form-group">
                <label for="inputListTicket" class="form-label col-form-label-lg">Mã vé đã đặt<span class="book-required">*</span></label>
                <select id="inputListTicket" name=""  class="form-control form-control-lg">
                    <option selected disabled>Chọn mã vé đã đặt</option>
                    <option value="001">001</option>
                    <option value="002">002</option>
                </select>
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
