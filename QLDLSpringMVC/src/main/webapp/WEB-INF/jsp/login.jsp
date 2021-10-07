<%-- 
    Document   : login
    Created on : Sep 24, 2021, 8:51:34 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/login" var="action" />
<div class="book-tour-wrap">
    <div class="container book-tour">
        <div class="row">
            <div class="col col-sm-12 col-lg-5">
                <div class="book-tour__contact">
                    <div class="book-tour__title">
                        <h3>Cùng trải nghiệm với chúng tôi trong những hành trình tuyệt vời nhất ❤️</h3>
                    </div>
                    <div class="book-tour__type">
                        <h2>Đăng nhập</h2>
                    </div>
                    <ul class="book-tour__list">
                        <li>
                            <a href="mailto:ngoccuong01032000@gmail.com"><i class="fas fa-envelope"></i>ngoccuong01032000@gmail.com</a>
                        </li>
                        <li>
                            <a href="tel:+84337152172"><i class="fas fa-phone-square-alt"></i>0337152172</a>
                        </li>
                    </ul>
                    <div class="book-tour__img">
                        <img src="<c:url value="/img/booktour-bg.jpg" />" alt="book-tour">
                    </div>
                </div>
            </div>
            <div class="col col-sm-12 col-lg-7">
                <div class="book-tour__content auth__content">
                    <div class="tour-required">
                        <p>Dấu <span class="book-required">*</span> là thông tin bắt buộc</p>
                    </div>
                    <form action="${action}" method="POST" class="form" id="form-2">
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
                        <c:if test="${param.error != null}">
                            <div class="form-group">
                                <span class="form-message-login">Tài khoản hoặc mật khẩu của bạn không chính xác!</span>
                            </div>
                        </c:if>
                        <div class="form-group">
                          <label for="username" class="form-label">Tài khoản</label>
                          <input id="username" name="username" path="username" type="text" placeholder="VD: ngoccuong123" class="form-control">
                          <span class="form-message"></span>
                        </div>

                        <div class="form-group">
                          <label for="password" class="form-label">Mật khẩu</label>
                          <input id="password" name="password" path="password"  type="password" placeholder="Nhập mật khẩu" class="form-control">
                          <span class="form-message"></span>
                        </div>
                        <div class="forgot-password">
                          <a href="./management.html">Quên mật khẩu?</a>
                        </div>
                        <button type="submit" class="form-submit">Đăng nhập</button>
                        <div class="form-extends">
                            <p>Bạn chưa có tài khoản? Hãy <a href="<c:url value="/register" />">đăng ký</a> ngay!</p>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>
</div>
