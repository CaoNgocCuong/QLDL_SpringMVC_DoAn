<%-- 
    Document   : user_management
    Created on : Sep 15, 2021, 3:50:43 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!-- Script -->
<script src="<c:url value="/js/script-adminpage.js"/>"></script>
<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex justify-content-between">
            <h2 class="col-12 col-md-6">Người dùng trong hệ thống</h2>
            <form action="" class="col-12 col-md-6 form-search justify-content-between">
                <input type="text" placeholder="Tìm kiếm..." required="">
                <button><i class="fas fa-search"></i></button>
            </form>
        </div>   
        <div class="user-table">
            <table>
                <thead>
                    <tr>
                        <td>Mã nhân viên</td>
                        <td>Họ tên nhân viên</td>
                        <td>Số điện thoại</td>
                        <td>Email</td>
                        <td>Địa chỉ</td>
                        <td>Ngày tạo</td>
                        <td>Vai trò</td>
                        <td>Trạng thái</td>
                        <td>Hành động</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.fullName}</td>
                            <td>${user.phone}</td>
                            <td>${user.email}</td>
                            <td>${user.address}</td>
                            <td><fmt:formatDate pattern="dd-MM-yyyy" value="${user.createdDate}"/></td>
                            <c:set var="userRole" value="${user.userRole}"/>
                            <c:if test="${fn:endsWith(userRole, 'USER')}">
                                <td>Khách</td>
                            </c:if>
                            <c:if test="${fn:endsWith(userRole, 'EMPLOYEE')}">
                                <td>Nhân viên</td>
                            </c:if>
                            <c:if test="${fn:endsWith(userRole, 'ADMIN')}">
                                <td>Admin</td>
                            </c:if>
                            <td><a href="#" class="btn active">${user.active}</a></td>
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
            <h2><i class="fas fa-user-plus mr-2"></i>Thêm người dùng</h2>
        </div>
        <form:form class="form-add" modelAttribute="user" enctype="multipart/form-data">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputName" class="form-label col-form-label-lg ">Tên đầy đủ</label>
                    <input type="text" name="fullName" path="fullName" class="form-control form-control-lg" id="inputName" placeholder="VD: Cao Ngoc Cuong">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputState" class="form-label col-form-label-lg">Vai trò</label>
                        <select id="inputState" class="form-control">
                            <option selected disabled>Chọn vai trò</option>
                            <option>Nhân viên</option>
                        </select>
                    </div>
                </div> 
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail" class="form-label col-form-label-lg">Email</label>
                    <input type="email" name="email" path="email" class="form-control form-control-lg" id="inputEmail" placeholder="VD: cuong123@gmail.com">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputUsername" class="form-label col-form-label-lg">Tài khoản</label>
                    <input type="text" name="username" path="username" id="inputUsername" class="form-control form-control-lg" placeholder="VD: anhquanvjppro">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputPassword" class="form-label col-form-label-lg">Mật khẩu</label>
                    <input type="password" name="password" path="password" class="form-control form-control-lg" id="inputPassword" placeholder="Nhập mật khẩu...">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputConfirmPas" class="form-label col-form-label-lg">Xác nhận mật khẩu</label>
                    <input type="password" name="confirmPassword" path="confirmPassword" class="form-control form-control-lg" id="inputConfirmPas" placeholder="Xác nhận mật khẩu...">
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress" class="form-label col-form-label-lg">Địa chỉ</label>
                <input type="text" name="address" path="address" class="form-control form-control-lg" id="inputAddress" placeholder="191/12 Phạm Huy Thông, phường 6, quận Gò Vấp">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputAvatar" class="form-label col-form-label-lg">Ảnh cá nhân</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">Thêm ảnh</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" name="file" path="file" class="custom-file-input" id="inputAvatar" accept="image/*">
                          <label class="custom-file-label" for="inputAvatar">Chọn ảnh cá nhân</label>
                        </div>
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <label for="inputNumber" class="form-label col-form-label-lg">Số điện thoại</label>
                    <input type="number" name="phone" path="phone" class="form-control form-control-lg" id="inputNumber" placeholder="VD: 0337152172">
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
    </div>
</div>
