<%-- 
    Document   : blod_detail
    Created on : Sep 11, 2021, 7:25:48 PM
    Author     : Admin
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
                    <article class="blog-item">
                        <div class="blog-item__img">
                            <img src="<c:url value="${blog.photo}" />" alt="${blog.title}">
                            <a href="#" class="blog-item__date">
                                <h3><fmt:formatDate pattern="dd" value="${blog.date}" /></h3>
                                <p>Tháng <fmt:formatDate pattern="MM" value="${blog.date}" /></p>
                                <h3><fmt:formatDate pattern="yyyy" value="${blog.date}" /></h3>
                            </a>
                        </div>
                        <div class="blog-item__content">
                            <h3 class="blog-item__content-title">
                                <a href="#">${blog.title}</a>
                            </h3>
                            <div class="blog-item__wrap">
                                <ul class="blog-item__info">
                                    <li>
                                        <a href="#"><i class="fas fa-user"></i>${blog.author}</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fas fa-comments"></i>03 comments</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="blog-item__content-detail">
                                ${blog.content}
                            </div>
                            <div class="blog-tag">
                                Tag:
                                <c:forEach var="tag" items="${blog.tags}">
                                    <a href="#">${tag.name}</a>,
                                </c:forEach>
                            </div>
                            <div class="blog-cate">
                                Danh mục:
                                <a href="#">Sản phẩm công nghệ</a>,
                                <a href="#">Đời sống trải nghiệm</a>
                            </div>
                            <div class="blog-item__reaction">
                                <p class="like-info">
                                    <span class="like">
                                        <i class="far fa-heart"></i>
                                        <i class="fas fa-heart"></i>
                                    </span>
                                    Bạn, và 4 người khác
                                </p>
                            </div>
                        </div>
                    </article>
                    <ul class="related-blog">
                        <li class="related-blog__item">
                            <a href="#">
                                <img src="<c:url value="/img/blog/single_blog_1.png" />" alt="blog">
                            </a>
                            <h3>
                                <a href="#">Thay vì học và code hãy đi chơi game đi các bạn</a>
                            </h3>
                        </li>
                        <li class="related-blog__item">
                            <a href="#">
                                <img src="<c:url value="/img/blog/single_blog_2.png" />" alt="blog">
                            </a>
                            <h3>
                                <a href="#">Thay vì học và code hãy đi chơi game đi các bạn</a>
                            </h3>
                        </li>
                        <li class="related-blog__item">
                            <a href="#">
                                <img src="<c:url value="/img/blog/single_blog_4.png" />" alt="blog">
                            </a>
                            <h3>
                                <a href="#">Thay vì học và code hãy đi chơi game đi các bạn</a>
                            </h3>
                        </li>
                        <li class="related-blog__item">
                            <a href="#">
                                <img src="<c:url value="/img/blog/single_blog_3.png" />" alt="blog">
                            </a>
                            <h3>
                                <a href="#">Thay vì học và code hãy đi chơi game đi các bạn</a>
                            </h3>
                        </li>
                    </ul>
                    <div class="comments-area">
                        <h4>05 bình luận</h4>
                        <div class="comments-list" id="commentsPost-list">
                            <c:forEach items="${blog.comments}" var="comment">
                                <div class="single-comment">
                                    <div class="single-comment__thumb">
                                        <img src="<c:url value="${comment.user.avatar}" />" alt="user-1">
                                    </div>
                                    <div class="single-comment__des">
                                        <p class="single-comment__content">${comment.comment}</p>
                                        <div class="comment-user">
                                            <h5><a href="#">${comment.user.fullName}</a></h5>
                                            <p class="date">${comment.date}</p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <div class="comment-box">
                            <div class="user-thumb">
                                <img src="<c:url value="/img/avtar/avtar.jpg" />" alt="user">
                            </div>
                            <div class="user-comment">
                                <textarea name="" id="commentPost-area" cols="5" rows="1" placeholder="Viết bình luận của bạn..."></textarea>
                                <div class="user-action">
                                    <button class="user-btn back">Hủy</button>
                                    <button class="user-btn disabled submit">Bình luận</button>
                                </div>
                            </div>
                        </div>s
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <c:forEach items="${user}" var="u">
                            <div class="comment-box">
                                <div class="user-thumb">
                                    <img src="<c:url value="${u.avatar}" />" alt="${u.fullName}">
                                </div>
                                <div class="user-comment">
                                    <textarea name="" id="commentPost-area" cols="5" rows="1" placeholder="Viết bình luận của bạn..."></textarea>
                                    <div class="user-action">
                                        <button class="user-btn back">Hủy</button>
                                        <button class="user-btn submit" onclick="addCommentPost(${blog.id}, '${u.username}')">Bình luận</button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>         
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
                                <img src="<c:url value="/img/post-sidebar/post_2.png" />" alt="post-1">
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
                                <img src="<c:url value="/img/post-sidebar/post_3.png" />" alt="post-1">
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
                                <img src="<c:url value="/img/post-sidebar/post_1.png" />" alt="post-1">
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
                                <img src="<c:url value="/img/post-sidebar/post_4.png" />" alt="post-1">
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
                            <c:forEach var="tag" items="${tags}">
                                <li class="tag-list_item">
                                    <a href="#">${tag.name}</a>
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
<script>
    // ------------------------ Like comments blog-details ------------------- 
    var likeInfo = document.querySelector('.like-info')
    likeInfo.addEventListener('click', () => {
        likeInfo.classList.toggle('liked')
    })
</script>