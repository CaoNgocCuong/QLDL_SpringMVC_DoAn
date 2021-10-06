<%-- 
    Document   : blogs
    Created on : Sep 21, 2021, 6:05:40 PM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Trip start -->
<section class="travel-main trip">
    <div class="container">
        <div class="row align-item">
            <div class="col col-lg-6">
                <div class="section-title">
                    <h3>Bản tin gần đây</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${postsDateDes}" var="postDateDes">
                <div class="col col-lg-4">
                    <div class="single-trip">
                        <div class="single-trip__img">
                            <a href="<c:url value="/blogs/${postDateDes.id}/" />">
                                <img src="<c:url value="${postDateDes.photo}" />" alt="trip1">
                            </a>
                        </div>
                        <div class="single-trip__info">
                            <div class="single-trip__date">
                                <span>${postDateDes.date}</span>
                            </div>
                                <a href="<c:url value="/blogs/${postDateDes.id}/" />">
                                <h3>${postDateDes.title}</h3>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Trip end -->
