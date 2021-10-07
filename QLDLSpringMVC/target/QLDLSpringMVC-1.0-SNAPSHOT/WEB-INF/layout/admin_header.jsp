<%-- 
    Document   : admin_header
    Created on : Sep 14, 2021, 8:43:32 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <div class="head_inner">
        <div class="left-part">
            <ul>
                <li>
                    <c:forEach var="userAdmin" items="${user}">
                        <div class="profile">
                            <div class="avtar-img">
                                <img src="<c:url value="${userAdmin.avatar}"/>" alt="${userAdmin.fullName}">
                            </div>
                            <div class="avtar-name">
                                <h3>${userAdmin.fullName}</h3>
                            </div>
                        </div>
                    </c:forEach>
                </li>
                <li class="have_dots">
                    <span><i class="far fa-envelope"></i></span>
                </li>
                <li class="have_dots">
                    <span><i class="far fa-bell"></i></span>
                </li>
                <li>
                    <span class="bar"><i class="fas fa-bars"></i></span>
                </li>
            </ul>
        </div>
    </div>
</header>
