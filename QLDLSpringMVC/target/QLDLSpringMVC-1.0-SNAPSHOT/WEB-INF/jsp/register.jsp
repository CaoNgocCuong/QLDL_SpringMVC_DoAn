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

<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css"/>

<c:url value="/register" var="action"/>

<c:if test="${errMsg != null}">
    <div class = "alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<%
    Date dNow = new Date();
    SimpleDateFormat ft
            = new SimpleDateFormat("yyyyMMdd");
    out.print("<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
%>

<form:form method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data">
    <form:errors path="*" cssClass="alert alert-danger" element="div" />
    <div class="form-group">
        <label for="fullName">Họ và tên</label>
        <form:input id="fullName" class="form-control" path="fullName" required="true"/>
    </div>
    <div class="form-group">
        <label for="phone">Điện thoại</label>
        <form:input type="tel" pattern="[0-9]{10}" id="phone" class="form-control" path="phone" required="true"/>
        <form:errors path="phone" cssClass="alert alert-danger" element="div" />
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <form:input id="email" class="form-control" path="email" required="true"/>
    </div>
    
    <div class="form-group">
        <label for="add">Địa chỉ</label>
        <form:input id="add" class="form-control" path="address" required="true"/>
    </div>
    
    <div class="form-group">
        <label for="username">Tên đăng nhập</label>
        <form:input id="username" class="form-control" path="username" />
        <form:errors path="username" cssClass="alert alert-danger" element="div" required="true"/>
    </div>
    
    <div class="form-group">
        <label for="password">Mật khẩu</label>
        <form:password  id="password" class="form-control" path="password" required="true"/>
    </div>
    
    <div class="form-group">
        <label for="confirm-password">Xác nhận mật khẩu</label>
        <form:password id="comfirm-password" class="form-control" path="confirmPassword" required="true"/>
    </div>
    
    <div class="form-group">
        <label for="avatar"><b>Ảnh của bạn</b></label>
        <form:input type="file" path="file" accept="image/*" id="avatar" required="true"/>
    </div>
    
    
    <hr id="hr1">
    <p>Bằng cách nhấp vào đăng ký, bạn đồng ý với <a href="#">Chính sách & Ðiều khoản</a> của chúng tôi.</p>

    <button type="submit" class="registerbtn">Ðăng ký</button>
  </div>
  
  <div class="container signin">
      <p>Bạn đã có tài khoản? <a href="<c:url value="/login"/>">Ðăng nhập</a>.</p>
  </div>
</form:form>

