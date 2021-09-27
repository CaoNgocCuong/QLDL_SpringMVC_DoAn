<%-- 
    Document   : tour-photo-management
    Created on : Sep 17, 2021, 11:38:43 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex justify-content-between">
            <h2 class="col-12 col-md-6">Danh sách chuyến đi</h2>
            <form action="" class="col-12 col-md-6 form-search justify-content-between">
                <input type="text" placeholder="Tìm kiếm..." required="">
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
                    <tr>
                        <td>0001</td>
                        <td>Du lịch Miền Trung</td>
                        <td>Du lịch trong nước</td>
                        <td>3</td>
                        <td>2</td>
                        <td>1.200.000</td>
                        <td>800.000</td>
                        <td>12/02/2021</td>
                        <td>12/05/2021</td>
                        <td><a href="#" class="btn active">Đang hoạt động</a></td>
                        <td>
                            <a class="user-edit" href="#"><i class="fas fa-user-edit"></i></a>
                            <a class="user-delete" href="#"><i class="fas fa-user-slash"></i></a>
                        </td>   
                    </tr>                   
                </tbody>
            </table>
        </div>
    </div>
    <div class="container-fluid main-table">
        <div class="main-title">
            <h2><i class="fas fa-images mr-2"></i>Thêm ảnh cho từng chuyến đi</h2>
        </div>
        <form class="form-add">
            <div class="form-group">
                <label for="inputListTour" class="form-label col-form-label-lg">Mã chuyến đi</label>
                <select id="inputListTour" class="form-control form-control-lg">
                    <option selected disabled>Chọn mã</option>
                    <option value="0001">0001</option>
                    <option value="0002">0002</option>
                </select>
            </div>
            <div class="form-group">
                <label for="inputFileTourDetail" class="form-label col-form-label-lg">Ảnh chuyến đi</label>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                    <span class="input-group-text">Thêm ảnh</span>
                    </div>
                    <div class="custom-file">
                    <input type="file" class="custom-file-input" id="inputFileTourDetail">
                    <label class="custom-file-label" for="inputFileTourDetail">Chọn ảnh</label>
                </div>
            </div>
            <div class="form-group btn-wrapper">
                <button type="submit" class="btn btn-lg">Thêm</button>
            </div>
        </form>
    </div>
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
