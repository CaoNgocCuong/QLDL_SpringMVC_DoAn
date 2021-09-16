<%-- 
    Document   : register
    Created on : Aug 27, 2021, 4:45:57 PM
    Author     : Admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://cloudinary.com/jsp/taglib" prefix="cl" %>
<%--<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>

<c:url value="/register" var="action"/>

<c:if test="${errMsg != null}">
    <div class = "alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<div class="main">

    <form:form action="${action}" method="post" class="form" id="form-1" modelAttribute="user" enctype="multipart/form-data">
      <h3 class="heading">Thành viên đăng ký</h3>
      <p class="desc">Cùng trải nghiệm với chúng tôi trong những hành trình tuyệt vời nhất ❤️</p>

      <form:errors path="*" cssClass="alert alert-danger" element="div" />
      
      <div class="spacer"></div>
      <div class="form-group">
        <label for="fullName" class="form-label">Tên đầy đủ</label>
        <input id="fullName" name="fullName" type="text" placeholder="VD: Cường Ngọc" path="fullName" required="true" class="form-control">
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="email" class="form-label">Email</label>
        <input id="email" name="email" type="email" placeholder="VD: email@domain.com" path="email" required="true" class="form-control">
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="username" class="form-label">Tài khoản</label>
        <input id="username" name="username" type="text" placeholder="VD: ngoccuong0103" path="username" required="true" class="form-control">
        <form:errors path="username" cssClass="form-message" element="span" required="true"/>
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="password" class="form-label">Mật khẩu</label>
        <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" path="password" required="true" class="form-control">
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="confirm-password" class="form-label">Nhập lại mật khẩu</label>
        <input id="confirm-password" name="confirmPassword" placeholder="Nhập lại mật khẩu" type="password" path="confirmPassword" required="true" class="form-control">
        <span class="form-message"></span>
      </div>

      <button id="custom-upload-btn">Chọn ảnh đại diện</button>
      <div class="img-wrapper">
        <div class="image">
          <img src="" alt="">
        </div>
        <div class="upload-content">
          <div class="upload-icon">
            <i class="fas fa-cloud-upload-alt"></i>
          </div>
          <div class="upload-text">Chưa có file được chọn!</div>
        </div>
        <div id="cancel-btn"><i class="fas fa-times"></i></div>
        <div class="file-name">Đường dẫn</div>
      </div>
      <input type="file" name="file" id="file-upload-btn" path="file" hidden accept="image/*" required="true">

      <button class="form-submit">Đăng ký</button>
      <div class="form-extends">
        <p>Bạn đã có tài khoản? <a href="./login.html">Đăng nhập</a> tại đây!</p>
      </div>

    </form:form>    
  </div>

  <script src="./js/login-register.js"></script>