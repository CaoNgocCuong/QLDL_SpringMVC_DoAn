<%-- 
    Document   : tour-detail-management
    Created on : Sep 17, 2021, 11:30:25 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<c:url value="/admin/tour-detail-management" var="action"/>

<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex justify-content-between">
            <h2 class="col-12 col-md-6">Danh sách chuyến đi</h2>
            <form action="" class="col-12 col-md-6 form-search justify-content-between">
                <input type="text" name="tourName" placeholder="Tìm kiếm..." required="">
                <button><i class="fas fa-search"></i></button>
            </form>
        </div>   
        <div class="user-table">
            <table>
                <thead>
                    <tr>
                        <td>Mã chuyến đi</td>
                        <td>Tên chuyến đi</td>
                        <td>Loại chuyến đi</td>
                        <td>Quốc gia</td>
                        <td>Số ngày</td>
                        <td>Số đêm</td>
                        <td>Số khách tối thiểu</td>
                        <td>Số khách tối đa</td>
                        <td>Vé đã đặt</td>
                        <td>Vé còn lại</td>
                        <td>Giá người lớn</td>
                        <td>Giá trẻ em</td>
                        <td>Ngày bắt đầu</td>
                        <td>Ngày kết thúc</td>
                        <td>Trạng thái</td>
                        <td>Hành động</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tour" items="${tours}">
                    <tr>
                        <td>${tour.id}</td>
                        <td>${tour.name}</td>
                        <td>${tour.tourType}</td>
                        <td>${tour.country}</td>
                        <td>${tour.tourDays}</td>
                        <td>${tour.tourNights}</td>
                        <td>${tour.minCustomer}</td>
                        <td>${tour.maxCustomer}</td>
                        <td>14</td>
                        <td>26</td>
                        <td>${tour.adultsPrice}</td>
                        <td>${tour.childrenPrice}</td>
                        <td><fmt:formatDate pattern="dd-MM-yyyy" value="${tour.startDate}"/></td>
                        <td><fmt:formatDate pattern="dd-MM-yyyy" value="${tour.endDate}"/></td>
                        <c:if test="${tour.active == true}">
                            <td><a href="#" class="btn active">Đang hoạt động</a></td>
                        </c:if>
                        <c:if test="${tour.active != true}">
                            <td><a href="#" class="btn active">Ngưng hoạt động</a></td>
                        </c:if>
                        <td>
                            <a class="user-edit" href="#"><i class="fas fa-user-edit"></i></a>
                            <a class="user-delete" href="#"><i class="fas fa-user-slash"></i></a>
                        </td>   
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container-fluid main-table">
        <div class="main-title">
            <h2><i class="fas fa-plus mr-2"></i></i>Thêm chi tiết chuyến đi</h2>
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
        <form:form class="form-add" method="post" action="${action}" modelAttribute="tourDe" enctype="multipart/form-data">
            <div class="form-group">
                <label for="inputListTour" class="form-label col-form-label-lg">Mã chuyến đi<span class="book-required">*</span></label>
                <select id="inputListTour" name="tour" path="tour" class="form-control form-control-lg">
                    <option selected disabled>Chọn mã tour</option>
                    <c:forEach var="tour" items="${tours}">
                        <option value="${tour.id}">${tour.name}</option>
                    </c:forEach>
                </select>
                <form:errors path="tour" cssClass="text text-danger form-message" element="span" />
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputDeparture" class="form-label col-form-label-lg">Điểm khởi hành<span class="book-required">*</span></label>
                    <input type="text" name="departure" path="departure" class="form-control form-control-lg" id="inputDeparture">
                    <form:errors path="departure" cssClass="text text-danger form-message" element="span" />
                </div>
                <div class="form-group col-md-6">
                    <label for="inputDestination" class="form-label col-form-label-lg">Điểm đến<span class="book-required">*</span></label>
                    <input type="text" name="destination" path="destination" class="form-control form-control-lg" id="inputDestination">
                    <form:errors path="destination" cssClass="text text-danger form-message" element="span" />
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputTimeStart" class="form-label col-form-label-lg">Ngày bắt đầu<span class="book-required">*</span></label>
                    <input type="date" name="startDate" path="startDate" class="form-control form-control-lg" id="inputTimeStart">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputTimeEnd" class="form-label col-form-label-lg">Ngày kết thúc<span class="book-required">*</span></label>
                    <input type="date" name="endDate" path="endDate" class="form-control form-control-lg" id="inputTimeEnd">
                </div>
            </div>
            <div class="form-group">
                <label for="summernote" class="form-label col-form-label-lg">Nội dung<span class="book-required">*</span></label>
                <textarea class="form-control" id="summernote" name="content" path="content" rows="3"></textarea>
                <form:errors path="content" cssClass="text text-danger form-message" element="span" />
            </div>
            <div class="form-group btn-wrapper">
                <button type="submit" class="btn btn-lg">Thêm</button>
            </div>
        </form:form>
    </div>
</div>
<!-- Script -->
<script>
    function summernote(id, placeholder) {
        $(id).summernote({
            placeholder: placeholder,
            tabsize: 2,
            height: 100,
        });
    }
    summernote('#summernote', 'Nhập lịch trình chuyến đi')
</script>