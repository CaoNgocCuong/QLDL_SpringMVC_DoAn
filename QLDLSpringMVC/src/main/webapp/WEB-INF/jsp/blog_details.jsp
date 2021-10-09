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
                                        <a href="#"><i class="fas fa-comments"></i>${countCommentsPost} bình luận</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="blog-item__content-detail">
                                ${blog.content}
                            </div>
                            <div class="blog-tag">
                                Tag:
                                <c:forEach var="tag" items="${blog.tags}">
                                    <a href="<c:url value="/blogs/"/>?tag=${tag.name}">${tag.name}</a>,
                                </c:forEach>
                            </div>
                            <div class="blog-cate">
                                Danh mục:
                                <a href="#">${blog.category.name}</a>
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
                        <c:forEach items="${postsDateDes}" var="postDateDes">
                            <li class="related-blog__item">
                                <a href="<c:url value="/blogs/${postDateDes.id}/" />">
                                    <img src="<c:url value="${postDateDes.photo}" />" alt="${postDateDes.title}">
                                </a>
                                <h3>
                                    <a href="<c:url value="/blogs/${postDateDes.id}/" />">${postDateDes.title}</a>
                                </h3>
                            </li>
                        </c:forEach>
                    </ul>
                    <div id="commentPost-area" class="comments-area">
                        <h4><c:url value="${countCommentsPost}" /> bình luận</h4>
                        <div class="comments-list" id="commentsPost-list">
                            <c:forEach items="${commentsPost}" var="comment">
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
                            <c:if test="${countCommentsPost == 0}">
                                <div class="single-comment">
                                    <h4>Bài viết này hiện chưa có bình luận nào!!!</h4>
                                </div>
                            </c:if>
                        </div>
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                              <c:forEach end="${Math.ceil(countCommentsPost / 7)}" begin="1" var="counter">
                                  <li class="page-item"><a class="page-link" href="<c:url value="/blogs/${blog.id}/" />?page=${counter}#commentPost-area">${counter}</a></li>
                              </c:forEach>
                            </ul>
                        </nav>
                    </div>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <div class="comment-box">
                            <div class="user-thumb">
                                <img src="<c:url value="/img/avtar/avatar-anony.png" />" alt="user">
                            </div>
                            <div class="user-comment">
                                <textarea name="" id="commentPost-area" cols="5" rows="1" placeholder="Viết bình luận của bạn..."></textarea>
                                <div class="user-action">
                                    <button class="user-btn back">Hủy</button>
                                    <button class="user-btn disabled submit">Bình luận</button>
                                </div>
                            </div>
                        </div>
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
                                    <a href="<c:url value="/blogs/"/>?title=${tag.name}">${tag.name}</a>
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