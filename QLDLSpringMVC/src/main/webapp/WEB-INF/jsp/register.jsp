<%-- 
    Document   : register
    Created on : Sep 24, 2021, 9:10:49 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/register" var="action" />


<div class="book-tour-wrap">
    <div class="container book-tour">
        <div class="row">
            <div class="col col-lg-5">
                <div class="book-tour__contact">
                    <div class="book-tour__title">
                        <h3>Cùng trải nghiệm với chúng tôi trong những hành trình tuyệt vời nhất ❤️</h3>
                    </div>
                    <div class="book-tour__type">
                        <h2>Đăng ký thành viên</h2>
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
                        <img src="<c:url value="/img/booktour-bg.jpg"/>" alt="book-tour">
                    </div>
                </div>
            </div>
            <div class="col col-lg-7">
                <div class="book-tour__content auth__content">
                    <div class="tour-required">
                        <p>Dấu <span class="book-required">*</span> là thông tin bắt buộc</p>
                    </div>
                    <c:if test="${errMsg != null}">
                        <div>
                            <h2>${errMsg}</h2>
                        </div>
                    </c:if>
                    <form:form action="${action}" method="post" class="form" modelAttribute="user" enctype="multipart/form-data">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputName" class="form-label col-form-label-lg ">Họ tên<span class="book-required">*</span></label>
                                <input type="text" name="fullName" path="fullName" class="form-control form-control-lg" id="inputName" placeholder="Tên của bạn...">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputEmail" class="form-label col-form-label-lg ">Email<span class="book-required">*</span></label>
                                <input type="email" name="email" path="email" class="form-control form-control-lg" id="inputEmail" placeholder="Email của bạn...">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputUsername" class="form-label col-form-label-lg ">Tài khoản<span class="book-required">*</span></label>
                            <input type="text" name="username" path="username" class="form-control form-control-lg" id="inputUsername" placeholder="Nhập tài khoản">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="form-label col-form-label-lg ">Mật khẩu<span class="book-required">*</span></label>
                            <input type="password" name="password" path="password" class="form-control form-control-lg" id="inputPassword" placeholder="Nhập mật khẩu của bạn...">
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword" class="form-label col-form-label-lg ">Xác nhận mật khẩu<span class="book-required">*</span></label>
                            <input type="password" name="confirmPassword" path="confirmPassword" class="form-control form-control-lg" id="confirmPassword" placeholder="Nhập lại mật khẩu của bạn...">
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
                        <input type="file" name="file" path="file" id="file-upload-btn" hidden accept="image/*">
                        <div class="wrap-submit">
                            <div class="form-extends">
                                <p>Bạn đã có tài khoản? <a href="./loginPage.html">Đăng nhập</a> tại đây!</p>
                              </div>
                            <button type="submit" class="btn btn-lg">Đăng ký</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
