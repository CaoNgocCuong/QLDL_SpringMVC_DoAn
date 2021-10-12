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
                        <td>Hành động</td>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td  class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
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
                        <td class="booking-tour-tbody">
                            <a href="#" class="btn denied">Hủy vé</a>
                            <a href="#" class="btn active">Chuyển trạng thái</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div
</div>
