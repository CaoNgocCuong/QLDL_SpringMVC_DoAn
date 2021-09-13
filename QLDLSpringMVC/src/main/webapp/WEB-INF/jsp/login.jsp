<%-- 
    Document   : login
    Created on : Sep 4, 2021, 2:02:57 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:if test="${param.error != null}">
    <div>
        Đã có lỗi xảy ra, vui lòng quay lại sau!
    </div>
</c:if>

<c:url value="/login" var="action" />

<div class="main">
    <form action="${action}" method="POST" class="form" id="form-2">
      <h3 class="heading">Đăng nhập</h3>
      <p class="desc">Cùng trải nghiệm với chúng tôi trong những hành trình tuyệt vời nhất❤️</p>

      <div class="spacer"></div>
      <div class="login-with-another">
        <div class="google-thumb">
          <a href="#"><img src="./img/google-icon.png" alt="google-icon"></a>
        </div>
        <p><a href="#">Đăng nhập với tài khoản Google</a></p>
      </div>
      <div class="login-with-another">
        <div class="google-thumb">
          <a href="#"><i class="fab fa-facebook"></i></a>
        </div>
        <p><a href="#">Đăng nhập với tài khoản Facebook</a></p>
      </div>
      <div class="space-second">Hoặc</div>
      <div class="form-group">
        <label for="username" class="form-label">Tài khoản</label>
        <input id="username" name="username" type="text" placeholder="VD: ngoccuong123" class="form-control">
        <span class="form-message"></span>
      </div>

      <div class="form-group">
        <label for="password" class="form-label">Mật khẩu</label>
        <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
        <span class="form-message"></span>
      </div>
      <div class="forgot-password">
        <a href="#">Quên mật khẩu?</a>
      </div>
      <button class="form-submit">Đăng nhập</button>
      <div class="form-extends">
        <p>Bạn chưa có tài khoản? Hãy <a href="./register.html">đăng ký</a> ngay!</p>
      </div>
    </form>

  </div>