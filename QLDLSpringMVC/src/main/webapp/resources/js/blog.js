/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
if (window.history.replaceState)
    window.history.replaceState( null, null, window.location.href );// cái này để khi post nó ko bị lặp dữ liệu

function deletePost(id){
    if (confirm("Bạn chắc chắn xóa tin tức số " + id + " không?") == true) { 
        fetch(`/QLDLSpringMVC/api/admin/blog-management/${id}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                alert("Xóa thành công!");
                location.reload();
            } else 
                alert("Đã có lỗi xảy ra!!!");
        })
    }
}

function summernote(id, placeholder) {
    $(id).summernote({
        placeholder: placeholder,
        tabsize: 2
    });
}

summernote('#summernoteContent', 'Nhập nội dung bài viết');

function getPostInfo(id){
    var author = document.getElementById("author" + id).innerText;
    var cate = document.getElementById("cate" + id).innerText;
    var title = document.getElementById("title" + id).innerText;
    var des = document.getElementById("des" + id).innerText;
    var content = document.getElementById("content" + id).innerHTML;
    var active = document.getElementById("active" + id).innerText;
    let noteEditor = document.querySelector('.note-editable.card-block');
    let notePlaceHolder = document.querySelector('.note-placeholder');
    
    document.getElementById("inputAuthor").value = author;
    document.getElementById("inputCate").value = cate;
    document.getElementById("inputTitle").value = title;
    document.getElementById("textDescription").value = des;
    document.getElementById("inputId").value = id;
    document.getElementById("abt").innerText = "Cập nhật";
    document.getElementById("inputAvatar").required = false;
    if(active == "false")
       document.getElementById("activeCheck").checked = false;
    else
       document.getElementById("activeCheck").checked = true;

    if(noteEditor){
        noteEditor.innerHTML = content;
        notePlaceHolder.innerText = '';
        document.getElementById('summernoteContent').value = content;
    }
}

function setButton(){
    document.getElementById('summernoteContent').value = '';
    document.getElementById("abt").innerText = "Thêm bài";
    document.getElementById("inputAvatar").required = true;
}

