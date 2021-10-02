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
                                <a href="#">life style</a>,
                                <a href="#">travel</a>,
                                <a href="#">coder</a>
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
                        <div class="comments-list">
                            <div class="single-comment">
                                <div class="single-comment__thumb">
                                    <img src="<c:url value="/img/user/comment_1.png" />" alt="user-1">
                                </div>
                                <div class="single-comment__des">
                                    <p class="single-comment__content">Cho em hỏi mấy anh chị đã ra trường ở OU hiện đã làm công việc gì vậy ạ. Anh chị có xin việc dễ dàng ko. Vì em thấy có nhìu doanh nghiệp ưu tiên bằng ĐH của những trường top.</p>
                                    <div class="comment-user">
                                        <h5><a href="#">Cao Ngọc Cường</a></h5>
                                        <p class="date">01 Tháng 03 2021</p>
                                    </div>
                                </div>
                            </div>
                            <div class="single-comment">
                                <div class="single-comment__thumb">
                                    <img src="<c:url value="/img/user/comment_2.png" />" alt="user-1">
                                </div>
                                <div class="single-comment__des">
                                    <p class="single-comment__content">Một bài viết thực sự củm động :((</p>
                                    <div class="comment-user">
                                        <h5><a href="#">Trần Vũ Khang</a></h5>
                                        <p class="date">02 Tháng 03 2021</p>
                                    </div>
                                </div>
                            </div>
                            <div class="single-comment">
                                <div class="single-comment__thumb">
                                    <img src="<c:url value="/img/user/comment_3.png" />" alt="user-1">
                                </div>
                                <div class="single-comment__des">
                                    <p class="single-comment__content">học trường nào cũng được, quan trọng là giá trị bản thân có được đánh bóng bởi chính mình hay là không, mới quan trọng. Ví dụ như mấy cuộc thi của L'Oreal, hay Nestlé đâu có cần xem bằng cấp gì, quan trọng là năng lực bản thân mình thể hiện thôi. Nên nếu các bạn đã tin tưởng chọn Ou làm nơi để các bạn trau dồi thì chắc chắn một điều là các bạn đã không có điểm số cao để vào các trường Top lớn. Vì thế, việc bây giờ là các bạn phải cố gắng trau dồi hết mức có thể để bản thân mình có đủ skill, đừng tự ti vì mình học trường thấp hơn mà hãy suy nghĩ rằng mình sẽ giỏi như họ vào một thời điểm trong tương lai, đến lúc đó vững vàng mà chọn doanh nghiệp lớn để vào. dè deeee~</p>
                                    <div class="comment-user">
                                        <h5><a href="#">Cao Ngọc Cường</a></h5>
                                        <p class="date">01 Tháng 03 2021</p>
                                    </div>
                                </div>
                            </div>
                            <div class="single-comment">
                                <div class="single-comment__thumb">
                                    <img src="<c:url value="/img/user/comment_1.png" />" alt="user-1">
                                </div>
                                <div class="single-comment__des">
                                    <p class="single-comment__content">Bài viết rất xuất sắc</p>
                                    <div class="comment-user">
                                        <h5><a href="#">Cao Ngọc Cường</a></h5>
                                        <p class="date">01 Tháng 03 2021</p>
                                    </div>
                                </div>
                            </div>
                            <div class="single-comment">
                                <div class="single-comment__thumb">
                                    <img src="<c:url value="/img/user/comment_3.png" />" alt="user-1">
                                </div>
                                <div class="single-comment__des">
                                    <p class="single-comment__content">Bài viết rất xuất sắc</p>
                                    <div class="comment-user">
                                        <h5><a href="#">Cao Ngọc Cường</a></h5>
                                        <p class="date">01 Tháng 03 2021</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comment-box">
                        <div class="user-thumb">
                            <img src="<c:url value="/img/avtar/avtar.jpg" />" alt="user">
                        </div>
                        <div class="user-comment">
                            <textarea name="" id="" cols="5" rows="2" placeholder="Viết bình luận của bạn..."></textarea>
                            <div class="user-action">
                                <button class="user-btn back">Hủy</button>
                                <button class="user-btn submit">Bình luận</button>
                            </div>
                        </div>
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
                            <li class="cate-list__item">
                                <a href="#">
                                    <p>Thực phẩm nhà hàng</p>
                                    <p>(3)</p>
                                </a>
                            </li>
                            <li class="cate-list__item">
                                <a href="#">
                                    <p>Tin tức du lịch</p>
                                    <p>(10)</p>
                                </a>
                            </li>
                            <li class="cate-list__item">
                                <a href="#">
                                    <p>Sản phẩm công nghệ</p>
                                    <p>(7)</p>
                                </a>
                            </li>
                            <li class="cate-list__item">
                                <a href="#">
                                    <p>Chăm sóc sức khỏe</p>
                                    <p>(50)</p>
                                </a>
                            </li>
                            <li class="cate-list__item">
                                <a href="#">
                                    <p>Chuyến tham quan thú vị</p>
                                    <p>(12)</p>
                                </a>
                            </li>
                            <li class="cate-list__item">
                                <a href="#">
                                    <p>Tình yêu du lịch</p>
                                    <p>(8)</p>
                                </a>
                            </li>
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