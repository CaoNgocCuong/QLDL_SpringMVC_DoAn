<%-- 
    Document   : tour_management
    Created on : Sep 14, 2021, 8:53:30 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/admin/tour-management" var="action"/>

<!-- Main - content start -->
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
                        <td>Số ngày</td>
                        <td>Số đêm</td>
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
                        <td>${tour.tourDays}</td>
                        <td>${tour.tourNights}</td>
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
            <h2><i class="fas fa-plus mr-2"></i></i>Thêm chuyến đi</h2>
        </div>
        <c:if test="${errMsg != null}">
            <div class = "alert alert-danger">
                ${errMsg}
            </div>
        </c:if>
        <form:form action="${action}" class="form-add" modelAttribute="tour" enctype="multipart/form-data">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputName" class="form-label col-form-label-lg ">Tên chuyến đi</label>
                    <input type="text" name="name" path="name" class="form-control form-control-lg" id="inputName" placeholder="VD: Du lịch biển đảo">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputTypeTour" class="form-label col-form-label-lg">Loại chuyến đi</label>
                        <select id="inputTypeTour" name="tourType" path="tourType" class="form-control">
                            <option selected disabled>Chọn loại</option>
                            <option value="Du lịch trong nước">Du lịch trong nước</option>
                            <option value="Du lịch nước ngoài">Du lịch nước ngoài</option>
                        </select>
                    </div>
                </div>  
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputDay" class="form-label col-form-label-lg">Số ngày</label>
                    <input type="number" name="tourDays" path="tourDays" class="form-control form-control-lg" id="inputDay" value="0" min="0">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputNight" class="form-label col-form-label-lg">Số đêm</label>
                    <input type="number" name="tourNights" path="tourNights" class="form-control form-control-lg" id="inputNight" value="0" min="0">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputPriceAdult" class="form-label col-form-label-lg">Giá người lớn</label>
                    <div class="input-group">
                        <input type="number" name="adultsPrice" path="adultsPrice" class="form-control" id="inputPriceAdult" aria-label="Dollar amount (with dot and two decimal places)" value="0" min="0">
                        <span class="input-group-text">$</span>
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPriceChild" class="form-label col-form-label-lg">Giá trẻ em</label>
                    <div class="input-group">
                        <input type="number" name="childrenPrice" path="childrenPrice" class="form-control" id="inputPriceChild" aria-label="Dollar amount (with dot and two decimal places)" value="0" min="0">
                        <span class="input-group-text">$</span>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputTimeStart" class="form-label col-form-label-lg">Ngày bắt đầu</label>
                    <input type="date" name="startDate" path="startDate" class="form-control form-control-lg" id="inputTimeStart">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputTimeEnd" class="form-label col-form-label-lg">Ngày kết thúc</label>
                    <input type="date" name="endDate" path="endDate" class="form-control form-control-lg" id="inputTimeEnd">
                </div>
            </div>
            <div class="form-group">
                <label for="inputFileTour" class="form-label col-form-label-lg">Ảnh chuyến đi</label>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                    <span class="input-group-text">Thêm ảnh</span>
                    </div>
                    <div class="custom-file">
                        <input type="file" accept="image/*" name="file" path="file" class="custom-file-input" id="inputFileTour">
                    <label class="custom-file-label" for="inputFileTour">Chọn ảnh</label>
                </div>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="activeCheck" checked="true">
                <label class="form-check-label" for="activeCheck">
                    Active
                </label>
            </div>
            <div class="form-group btn-wrapper">
                <button type="submit" class="btn btn-lg">Thêm</button>
            </div>
        </form:form>
        <hr class="m-5" />
    </div>
</div>
<!-- Main - content end -->
</div>


<!-- Script -->
<script>
$('#summernote').summernote({
  placeholder: 'Nhập nội dung chuyến đi',
  tabsize: 2,
  height: 100,
});
</script>
