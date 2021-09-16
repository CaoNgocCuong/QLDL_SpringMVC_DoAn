<%-- 
    Document   : blog
    Created on : Sep 11, 2021, 6:58:30 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="main">
    <!-- -------- brad-cam start ----------- -->
    <div class="bradcam bradcam-img">
        <div class="container">
            <div class="row">
                <div class="col col-lg-12">
                    <div class="bradcam-text">
                        <h3>Tin tức</h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quis, inventore!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- -------- brad-cam end ----------- -->

    <!-- Section Blog start -->
    <section class="travel-main blog">
        <div class="container">
            <div class="row">
                <div class="col col-lg-8">
                    <div class="blog__left-sidebar">
                        <c:forEach var="post" items="${posts}">
                            <article class="blog-item">
                                <div class="blog-item__img">
                                    <img src="${post.photo}" alt="blog 2">
                                    <a href="#" class="blog-item__date">
                                        <h3><fmt:formatDate pattern="dd" value="${post.date}"/></h3>
                                        <p>Tháng <fmt:formatDate pattern="MM" value="${post.date}"/></p>
                                        <h3><fmt:formatDate pattern="yyyy" value="${post.date}"/></h3>
                                    </a>
                                </div>
                                <div class="blog-item__content">
                                    <h3 class="blog-item__content-title">
                                        <a href="<c:url value="/blog/blog_details"/>">${post.title}</a>
                                    </h3>
                                    <p>${post.content}</p>
                                    <div class="blog-item__wrap">
                                        <ul class="blog-item__info">
                                            <li>
                                                <a href="#"><i class="fas fa-user"></i>Cao Ngọc Cường</a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fas fa-comments"></i>03 comments</a>
                                            </li>
                                        </ul>
                                        <div class="read-more">
                                            <a href="./blog-detail.html" class="read-more-btn">Xem thêm <i class="fas fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </c:forEach>
                        <div class="popular-place-pagi">
                            <ul>
                                <li class="arrow disabled"><i class="fas fa-chevron-left"></i></li>
                                <c:forEach begin="1" end="${Math.ceil(counter/15)}" var="page">
                                    <li class="num active">
                                        <a href="<c:url value="/blog"/>?page=${page}">
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
                                    <input required="" type="text" name="" id="" placeholder="Nhập từ khóa...">
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
                                <c:forEach var="cate" items="${categories}">
                                    <li class="cate-list__item">
                                        <a href="#">
                                            <p>${cate.name}</p>
                                            <p>(3)</p>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </aside>
                        <aside class="single-sidebar-widget recent-post">
                            <h4 class="widget-title">
                                Bài viết gần đây
                            </h4>
                            <div class="media post-item">
                                <div class="post-item__img">
                                    <img src="./img/post-sidebar/post_2.png" alt="post-1">
                                </div>
                                <div class="post-item__body">
                                    <h4>
                                        <a href="#">Bí kíp tán gái thất truyền của nhà họ Cao</a>
                                    </h4>
                                    <p>01 tháng 3 năm 2021</p>
                                </div>
                            </div>
                            <div class="media post-item">
                                <div class="post-item__img">
                                    <img src="./img/post-sidebar/post_3.png" alt="post-1">
                                </div>
                                <div class="post-item__body">
                                    <h4>
                                        <a href="#">Bí kíp tán gái thất truyền của nhà họ Cao</a>
                                    </h4>
                                    <p>01 tháng 3 năm 2021</p>
                                </div>
                            </div>
                            <div class="media post-item">
                                <div class="post-item__img">
                                    <img src="./img/post-sidebar/post_1.png" alt="post-1">
                                </div>
                                <div class="post-item__body">
                                    <h4>
                                        <a href="#">Bí kíp tán gái thất truyền của nhà họ Cao</a>
                                    </h4>
                                    <p>01 tháng 3 năm 2021</p>
                                </div>
                            </div>
                            <div class="media post-item">
                                <div class="post-item__img">
                                    <img src="./img/post-sidebar/post_4.png" alt="post-1">
                                </div>
                                <div class="post-item__body">
                                    <h4>
                                        <a href="#">Bí kíp tán gái thất truyền của nhà họ Cao</a>
                                    </h4>
                                    <p>01 tháng 3 năm 2021</p>
                                </div>
                            </div>
                        </aside>
                        <aside class="single-sidebar-widget tag">
                            <h4 class="widget-title">
                                Tag
                            </h4>
                            <ul class="tag-list">
                                <li class="tag-list_item">
                                    <a href="#">love</a>
                                </li>
                                <li class="tag-list_item">
                                    <a href="#">travel</a>
                                </li>
                                <li class="tag-list_item">
                                    <a href="#">skincare</a>
                                </li>
                                <li class="tag-list_item">
                                    <a href="#">life style</a>
                                </li>
                                <li class="tag-list_item">
                                    <a href="#">technology</a>
                                </li>
                                <li class="tag-list_item">
                                    <a href="#">healthy</a>
                                </li>
                                <li class="tag-list_item">
                                    <a href="#">food</a>
                                </li>
                                <li class="tag-list_item">
                                    <a href="#">picture</a>
                                </li>
                            </ul>
                        </aside>
                        <aside class="single-sidebar-widget instagram-feed">
                            <h4 class="widget-title">
                                Instagram Feed
                            </h4>
                            <ul class="instagram-list clear">
                                <li class="instagram-list__item">
                                    <a href="#">
                                        <img src="./img/instagram-sidebar/post_10.png" alt="instagram">
                                    </a>
                                </li>
                                <li class="instagram-list__item">
                                    <a href="#">
                                        <img src="./img/instagram-sidebar/post_5.png" alt="instagram">
                                    </a>
                                </li>
                                <li class="instagram-list__item">
                                    <a href="#">
                                        <img src="./img/instagram-sidebar/post_6.png" alt="instagram">
                                    </a>
                                </li>
                                <li class="instagram-list__item">
                                    <a href="#">
                                        <img src="./img/instagram-sidebar/post_7.png" alt="instagram">
                                    </a>
                                </li>
                                <li class="instagram-list__item">
                                    <a href="#">
                                        <img src="./img/instagram-sidebar/post_9.png" alt="instagram">
                                    </a>
                                </li>
                                <li class="instagram-list__item">
                                    <a href="#">
                                        <img src="./img/instagram-sidebar/post_8.png" alt="instagram">
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
</div>