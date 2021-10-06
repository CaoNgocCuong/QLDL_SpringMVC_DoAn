<%-- 
    Document   : blogspage
    Created on : Sep 22, 2021, 12:02:11 AM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Section Blog start -->
<section class="travel-main blog">
    <div class="container">
        <div class="row">
            <div class="col col-lg-8">
                <div class="blog__left-sidebar">
                    <c:if test="${posts.size() == 0}">
                       <h3>Hiện không có bài viết nào!!!</h3>
                    </c:if>
                    <c:forEach var="post" items="${posts}">
                        <article class="blog-item">
                            <div class="blog-item__img">
                                <img src="${post.photo}" alt="${post.title}">
                                <a href="<c:url value="/blogs/${post.id}" />" class="blog-item__date">
                                    <h3><fmt:formatDate pattern="dd" value="${post.date}" /></h3>
                                    <p>Tháng <fmt:formatDate pattern="MM" value="${post.date}" /></p>
                                    <h3><fmt:formatDate pattern="yyyy" value="${post.date}" /></h3>
                                </a>
                            </div>
                            <div class="blog-item__content">
                                <h3 class="blog-item__content-title">
                                    <a href="<c:url value="/blogs/${post.id}"/>">${post.title}</a>
                                </h3>
                                <p>${post.description}</p>
                                <div class="blog-item__wrap">
                                    <ul class="blog-item__info">
                                        <li>
                                            <a href="#"><i class="fas fa-user"></i>${post.author}</a>
                                        </li>
<!--                                        <li>
                                                <a href="#"><i class="fas fa-comments"></i>4 bình luận</a>
                                        </li>-->
                                    </ul>
                                    <div class="read-more">
                                        <a href="<c:url value="/blogs/${post.id}" />" class="read-more-btn">Xem thêm <i class="fas fa-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </c:forEach>
                    
                    
                                        
                    <div class="popular-place-pagi">
                        <ul>
                            <li class="arrow disabled"><i class="fas fa-chevron-left"></i></li>
                            <c:forEach begin="1" end="${Math.ceil(counter/5)}" var="page">
                                <li class="num active">
                                    <a href="<c:url value="/blogs/"/>?page=${page}">
                                        ${page}
                                    </a>
                                </li>
                            </c:forEach>
                            <li class="arrow"><i class="fas fa-chevron-right"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col col-lg-4">
                <div class="blog__right-sidebar">
                    <aside class="single-sidebar-widget search-widget">
                        <form action="">
                            <div class="form-group">
                                <input required="" type="text" name="title" id="" placeholder="Nhập từ khóa...">
                                <div class="input-group-append">
                                    <button class="input-btn">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="form-btn">
                                <button class="btn-sidebar">Tìm kiếm</button>
                            </div>
                        </form>
                    </aside>
                    <aside class="single-sidebar-widget cate-widget">
                        <h4 class="widget-title">
                            Danh mục
                        </h4>
                        <ul class="cate-list">
                            <c:forEach var="category" items="${counterPostsInCate}">
                                <li class="cate-list__item">
                                    <a href="<c:url value="/blogs/"/>?title=${category[0]}">
                                        <p>${category[0]}</p>
                                        <p>( ${category[1]} )</p>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </aside>
                    <aside class="single-sidebar-widget recent-post">
                        <h4 class="widget-title">
                            Bài viết gần đây
                        </h4>
                        <c:forEach items="${postsDateDes}" var="postDateDes">
                            <div class="media post-item">
                                <div class="post-item__img">
                                    <a href="<c:url value="/blogs/${postDateDes.id}/" />">
                                        <img src="<c:url value="${postDateDes.photo}" />" alt="${postDateDes.title}">
                                    </a>
                                </div>
                                <div class="post-item__body">
                                    <h4>
                                        <a href="<c:url value="/blogs/${postDateDes.id}/" />">${postDateDes.title}</a>
                                    </h4>
                                    <p>${postDateDes.date}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </aside>
                    <aside class="single-sidebar-widget tag">
                        <h4 class="widget-title">
                            Tag
                        </h4>
                        <ul class="tag-list">
                            <c:forEach var="tag" items="${tags}">
                                <li class="tag-list_item">
                                    <a href="<c:url value="/blogs/?title=${tag.name}" />">${tag.name}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </aside>
                    <aside class="single-sidebar-widget instagram-feed">
                        <h4 class="widget-title">
                            Instagram Feed
                        </h4>
                        <ul class="instagram-list clear">
                            <li class="instagram-list__item">
                                <a href="#">
                                    <img src="<c:url value="/img/instagram-sidebar/post_10.png" />" alt="instagram">
                                </a>
                            </li>
                            <li class="instagram-list__item">
                                <a href="#">
                                    <img src="<c:url value="/img/instagram-sidebar/post_5.png" />" alt="instagram">
                                </a>
                            </li>
                            <li class="instagram-list__item">
                                <a href="#">
                                    <img src="<c:url value="/img/instagram-sidebar/post_6.png" />" alt="instagram">
                                </a>
                            </li>
                            <li class="instagram-list__item">
                                <a href="#">
                                    <img src="<c:url value="/img/instagram-sidebar/post_7.png" />" alt="instagram">
                                </a>
                            </li>
                            <li class="instagram-list__item">
                                <a href="#">
                                    <img src="<c:url value="/img/instagram-sidebar/post_9.png" />" alt="instagram">
                                </a>
                            </li>
                            <li class="instagram-list__item">
                                <a href="#">
                                    <img src="<c:url value="/img/instagram-sidebar/post_8.png" />" alt="instagram">
                                </a>
                            </li>
                        </ul>
                    </aside>
                    <aside class="single-sidebar-widget newsletter">
                        <h4 class="widget-title">
                            Đăng kí nhận tin mới nhất
                        </h4>
                        <form action="">
                            <div class="form-group">
                                <input type="text" name="" id="" required="" class="form-control" placeholder="Nhập email của bạn...">
                            </div>
                            <div class="form-btn">
                                <button class="btn-sidebar">Gửi</button>
                            </div>
                        </form>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Section Blog end -->
