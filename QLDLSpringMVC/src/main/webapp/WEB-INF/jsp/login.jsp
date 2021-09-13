<%-- 
    Document   : login
    Created on : Sep 4, 2021, 2:02:57 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1>Đăng nhập</h1>
<h1>Đăng nhập</h1><h1>Đăng nhập</h1><h1>Đăng nhập</h1><h1>Đăng nhập</h1><h1>Đăng nhập</h1><h1>Đăng nhập</h1>

<c:if test="${param.error != null}">
    <div>
        Đã có lỗi xảy ra, vui lòng quay lại sau!
    </div>
</c:if>

<c:url value="/login" var="action" />

<form method="post" action="${action}">
    <div>
        <label for="username">Tên đăng nhập</label>
        <input id="username" name="username"/>
    </div>
    <div>
        <label for="password">Mật khẩu</label>
        <input type="password" id="password" name="password"/>
    </div>
    <div>
        <input type="submit" value="Đăng nhập"/>
    </div>
</form>
