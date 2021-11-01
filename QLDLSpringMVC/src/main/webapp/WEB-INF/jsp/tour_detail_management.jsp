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
                <input type="text" id="inputSearch" name="tourId" placeholder="Tìm kiếm..." required="">
                <button id="btnSearch"><i class="fas fa-search"></i></button>
            </form>
            <select id="listTour" class="form-control form-control-lg" onchange="getTourDetails()">
                <option selected disabled>Chọn mã chuyến đi</option>
            <c:forEach var="t" items="${listTour}">
                <option value="${t.id}">${t.id}</option> 
            </c:forEach>
            </select>
        </div>   
        <div class="user-table">
            <table>
                <thead>
                    <tr>
                        <td>Mã chi tiết chuyến đi</td>
                        <td>Tên chuyến đi</td>
                        <td>Điểm bắt đầu</td>
                        <td>Điểm đến</td>
                        <td>Ngày bắt đầu</td>
                        <td>Ngày kết thúc</td>
                        <td>Hành động</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tour" items="${tours}">
                        <c:forEach var="tourDetail" items="${tour.tourDetails}">
                            <tr>
                                <td id="tourDetailId${tourDetail.id}">${tourDetail.id}</td>
                                <td id="tourId${tourDetail.id}" hidden>${tour.id}</td>
                                <td>${tourDetail.tour.name}</td>
                                <td id="departure${tourDetail.id}">${tourDetail.departure}</td>
                                <td id="destination${tourDetail.id}">${tourDetail.destination}</td>
                                <td id="startDate${tourDetail.id}"><fmt:formatDate pattern="dd-MM-yyyy" value="${tourDetail.startDate}"/></td>
                                <td id="endDate${tourDetail.id}"><fmt:formatDate pattern="dd-MM-yyyy" value="${tourDetail.endDate}"/></td>
                                <td>
                                    <a class="user-edit" href="javascript:;" onclick="getTourDetailInfo(${tourDetail.id})"><i class="fas fa-user-edit"></i></a>
                                    <a class="user-delete" href="javascript:;" onclick="deleteTourDetail(${tourDetail.id})"><i class="fas fa-user-slash"></i></a>
                                </td>
                                <td id="content${tourDetail.id}" hidden>${tourDetail.content}</td>
                            </tr>
                        </c:forEach>
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
            <input type="text" name="id" id="inputId" hidden value="0">
            <div class="form-group btn-wrapper">
                <button type="submit" id="abt" class="btn btn-lg">Thêm</button>
                <button type="reset" class="btn btn-lg" onclick="setButton()">Làm mới</button>
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
            height: 300
        });
    }
    summernote('#summernote', 'Nhập lịch trình chuyến đi')
</script>
<script src="<c:url value="/js/tour.js" />"></script>