<%-- 
    Document   : body
    Created on : Aug 24, 2021, 8:08:50 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1>Hello main</h1>
<ul>
    <c:forEach var="category" items="${categories}">
        <li>${category.name}</li>
        <li>${category.description}</li>
    </c:forEach>
</ul>