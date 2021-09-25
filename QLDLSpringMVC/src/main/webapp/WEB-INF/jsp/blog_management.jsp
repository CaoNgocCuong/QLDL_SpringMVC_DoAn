<%-- 
    Document   : blog_management
    Created on : Sep 25, 2021, 10:21:49 AM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Main - content start -->
<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex justify-content-between">
            <h2 class="col-12 col-md-6">Danh sách bài viết</h2>
            <form action="" class="col-12 col-md-6 form-search justify-content-between">
                <input type="text" placeholder="Tìm kiếm..." required="">
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
                    <tr>
                        <td>0001</td>
                        <td>0101</td>
                        <td>Cao Ngọc Cường</td>
                        <td>Thanh niên bỏ game để theo đuổi đam mê lập trình</td>
                        <td>12/01/2021</td>
                        <td><a href="#" class="btn active">True</a></td>
                        <td>
                            <a class="user-edit" href="#"><i class="fas fa-user-edit"></i></a>
                            <a class="user-delete" href="#"><i class="fas fa-user-slash"></i></a>
                        </td>   
                    </tr>
                    <tr>
                        <td>0002</td>
                        <td>0101</td>
                        <td>Cao Ngọc Cường</td>
                        <td>Cuộc sống không như là mơ</td>
                        <td>12/01/2021</td>
                        <td><a href="#" class="btn active">True</a></td>
                        <td>
                            <a class="user-edit" href="#"><i class="fas fa-user-edit"></i></a>
                            <a class="user-delete" href="#"><i class="fas fa-user-slash"></i></a>
                        </td>   
                    </tr>
                    <tr>
                        <td>0003</td>
                        <td>0102</td>
                        <td>Cao Ngọc Cường</td>
                        <td>Ai rồi cũng qua môn thôi</td>
                        <td>12/01/2021</td>
                        <td><a href="#" class="btn active">True</a></td>
                        <td>
                            <a class="user-edit" href="#"><i class="fas fa-user-edit"></i></a>
                            <a class="user-delete" href="#"><i class="fas fa-user-slash"></i></a>
                        </td>   
                    </tr>
                    <tr>
                        <td>0004</td>
                        <td>0103</td>
                        <td>Cao Ngọc Cường</td>
                        <td>Thanh niên bỏ game để theo đuổi đam mê lập trình</td>
                        <td>12/01/2021</td>
                        <td><a href="#" class="btn active">True</a></td>
                        <td>
                            <a class="user-edit" href="#"><i class="fas fa-user-edit"></i></a>
                            <a class="user-delete" href="#"><i class="fas fa-user-slash"></i></a>
                        </td>   
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container-fluid main-table">
        <div class="main-title">
            <h2><i class="fas fa-user-plus mr-2"></i>Thêm bài viết</h2>
        </div>
        <form class="form-add">
            <div class="form-row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputAuthor" class="form-label col-form-label-lg">Tên tác giả</label>
                        <input type="email" class="form-control form-control-lg" id="inputAuthor">
                    </div>
                </div> 
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="inputCate" class="form-label col-form-label-lg">Mã danh mục</label>
                        <select id="inputCate" class="form-control">
                            <option selected disabled>Chọn danh mục</option>
                            <option>00001</option>
                            <option>00002</option>
                        </select>
                    </div>
                </div> 
            </div>
            <div class="form-group">
                <label for="inputTitle" class="form-label col-form-label-lg">Tiêu đề bài viết</label>
                <input type="email" class="form-control form-control-lg" id="inputTitle">
            </div>
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="inputAvatar" class="form-label col-form-label-lg">Ảnh bài viết</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text">Thêm ảnh</span>
                        </div>
                        <div class="custom-file">
                          <input type="file" class="custom-file-input" id="inputAvatar">
                          <label class="custom-file-label" for="inputAvatar">Chọn ảnh bài viết</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="summernoteContent" class="form-label col-form-label-lg">Nội dung</label>
                <textarea class="form-control" id="summernoteContent" name="editordata" rows="3"></textarea>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="activeCheck" checked="true">
                <label class="form-check-label" for="activeCheck">
                    Active
                </label>
            </div>
            <div class="form-group btn-wrapper">
                <button type="submit" class="btn btn-lg">Thêm bài</button>
            </div>
        </form>
    </div>
</div>
<!-- Main - content end -->
