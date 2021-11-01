<%-- 
    Document   : blog_management
    Created on : Sep 25, 2021, 10:21:49 AM
    Author     : CaoNgocCuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/admin/blog-management" var="action" />

<!-- Main - content start -->
<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex justify-content-between">
            <h2 class="col-12 col-md-6">Danh sách bài viết</h2>
            <form action="" class="col-12 col-md-6 form-search justify-content-between">
                <input type="text" name="blogTitle" placeholder="Tìm kiếm..." required="">
                <button><i class="fas fa-search"></i></button>
            </form>
        </div>   
        <div class="user-table">
            <table>
                <thead>
                    <tr>
                        <td>Mã bài viết</td>
                        <td>Mã danh mục</td>
                        <td>Mã tác giả</td>
                        <td>Tiêu đề</td>
                        <td>Ngày đăng</td>
                        <td>Trạng thái</td>
                        <td>Hành động</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="post" items="${posts}">
                        <div class="blog-item__content-detail" id="content${post.id}" hidden="true">
                            ${post.content}
                        </div>
                        <tr>
                            <td>${post.id}</td>
                            <td id="cate${post.id}" hidden="true">${post.category.id}</td>
                            <td>${post.category.name}</td>
                            <td id="author${post.id}">${post.author}</td>
                            <td id="title${post.id}">${post.title}</td>
                            <td id="des${post.id}" hidden="true">${post.description}</td>
                            <td>${post.date}</td>
                            <td><a href="#" class="btn active" id="active${post.id}">${post.active}</a></td>
                            <td>
                                <a class="user-edit" href="javascript:;" onclick="getPostInfo(${post.id})"><i class="fas fa-user-edit"></i></a>
                                <a class="user-delete" href="javascript:;" onclick="deletePost(${post.id})"><i class="fas fa-user-slash"></i></a>
                            </td>   
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container-fluid main-table">
        <div class="main-title">
            <h2><i class="fas fa-user-plus mr-2"></i>Thêm bài viết</h2>
        </div>
        <c:if test="${errMsg != null}">
            <div class="form-group">
                <span class="form-message-login error">
                    ${errMsg}
                </span>
            </div>
        </c:if>
        <c:if test="${successMsg != null}">
            <div class="form-group">
                <span class="form-message-login success">
                    ${successMsg}
                </span>
            </div>
        </c:if>
        <form:form method="post" action="${action}" class="form-add" modelAttribute="addPost" enctype="multipart/form-data">
            <div class="form-row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputAuthor" class="form-label col-form-label-lg">Tên tác giả</label>
                        <input type="text" name="author" path="author" class="form-control form-control-lg" id="inputAuthor">
                        <form:errors path="author" cssClass="text text-danger form-message" element="span" />
                    </div>
                </div> 
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputCate" class="form-label col-form-label-lg">Mã danh mục</label>
                        <select id="inputCate" name="category" path="category" class="form-control">
                            <option selected disabled>Chọn danh mục</option>
                            <c:forEach var="cate" items="${cates}">
                                <option id="category${cate.id}" value="${cate.id}">${cate.name}</option>
                            </c:forEach>
                        </select>
                        <form:errors path="category" cssClass="text text-danger form-message" element="span" />
                    </div>
                </div> 
            </div>
            <div class="form-group">
                <label for="inputTitle" class="form-label col-form-label-lg">Tiêu đề bài viết</label>
                <input type="text" name="title" path="title" class="form-control form-control-lg" id="inputTitle">
                <form:errors path="title" cssClass="text text-danger form-message" element="span" />
            </div>
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="inputAvatar" class="form-label col-form-label-lg">Ảnh bài viết</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">Thêm ảnh</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" name="file" required="true" path="file" accept="image/*" class="custom-file-input" id="inputAvatar">
                          <label class="custom-file-label" for="inputAvatar">Chọn ảnh bài viết</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="textDescription" class="form-label col-form-label-lg">Mô tả</label>
                <textarea class="form-control" name="description" path="description" id="textDescription" rows="5"></textarea>
                <form:errors path="description" cssClass="text text-danger form-message" element="span" />
            </div>
            <div class="form-group">
                <label for="summernoteContent" class="form-label col-form-label-lg">Nội dung</label>
                <textarea class="form-control" name="content" id="summernoteContent" name="editordata" rows="10"></textarea>
                <form:errors path="content" cssClass="text text-danger form-message" element="span" />
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="active" id="activeCheck" checked="true">
                <label class="form-check-label" for="activeCheck">
                    Active
                </label>
            </div>
            <input type="text" id="inputId" name="id" hidden="true" value="0">
            <div class="form-group btn-wrapper">
                <button type="submit" class="btn btn-lg" id="abt">Thêm bài</button>
                <button type="reset" class="btn btn-lg" onclick="setButton()">Làm mới</button>
            </div>
        </form:form>
    </div>
</div>
<!-- Main - content end -->
<script src="<c:url value="/js/blog.js" />"></sript>