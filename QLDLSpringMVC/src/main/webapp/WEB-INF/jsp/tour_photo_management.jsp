<%-- 
    Document   : tour-photo-management
    Created on : Sep 17, 2021, 11:38:43 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:url value="/admin/tour-photo-management" var="action" />

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
                        <td>Mã ảnh chuyến đi</td>
                        <td>Tên chuyến đi</td>
                        <td>Ảnh</td>
                        <td>Hành động</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tour" items="${tours}">
                        <c:forEach items="${tour.tourPhotos}" var="image">
                            <tr>
                                <td>${image.id}</td>
                                <td>${image.tour.name}</td>
                                <td>
                                    <a href="${image.photo}" class="img-tour-detail">
                                        <img src="${image.photo}" alt="${image.photo}" class="img-tour-detail__img"/>
                                    </a>
                                </td>
                                <td>
                                    <a class="user-edit" href="#"><i class="fas fa-user-edit"></i></a>
                                    <a class="user-delete" href="#"><i class="fas fa-user-slash"></i></a>
                                </td>   
                            </tr>
                        </c:forEach>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container-fluid main-table">
        <div class="main-title">
            <h2><i class="fas fa-images mr-2"></i>Thêm ảnh cho từng chuyến đi</h2>
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
        <form:form method="post" action="${action}" class="form-add" modelAttribute="photoOfTour" enctype="multipart/form-data">
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
            <div class="form-group">
                <label for="inputFileTourDetail" class="form-label col-form-label-lg">Ảnh chuyến đi<span class="book-required">*</span></label>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Thêm ảnh</span>
                    </div>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="inputFileTourDetail" name="file" path="file" accept="image/*">
                        <label class="custom-file-label" for="inputFileTourDetail">Chọn ảnh</label>
                    </div>
                </div>
                <div class="form-group btn-wrapper">
                    <button type="submit" class="btn btn-lg">Thêm</button>
                </div>
            </div>
        </form:form>
    </div>
<!-- Main - content end -->
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
    summernote('#summernote', 'Nhập điểm nhấn hành trình')
    summernote('#summernote2', 'Nhập lịch trình chuyến đi')
    summernote('#summernote3', 'Nhập dịch vụ chuyến đi')
    summernote('#summernote4', 'Nhập ghi chú chuyến đi')
</script>
