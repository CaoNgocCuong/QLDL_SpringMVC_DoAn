/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
if (window.history.replaceState)
    window.history.replaceState( null, null, window.location.href );
function deleteUser(id){
    if (confirm("Bạn chắc chắn xóa người dùng " + id + " không?") == true) { 
        fetch(`/QLDLSpringMVC/api/admin/user-management/${id}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                location.reload();
                alert("Xóa thành công!");
            } else 
                alert("Something wrong!!!");
        })
    }
}

function getUserInfo(id){
    var fullName = document.getElementById("fullName" + id).innerText;
    document.getElementById("inputName").value = fullName;
    var email = document.getElementById("email" + id).innerText;
    document.getElementById("inputEmail").value = email;
    var phone = document.getElementById("phone" + id).innerText;
    document.getElementById("inputNumber").value = phone;
    var address = document.getElementById("address" + id).innerText;
    document.getElementById("inputAddress").value = address;
    var active = document.getElementById("active" + id).innerText;
    if(active == "false")
       document.getElementById("activeCheck").checked = false;
    else
       document.getElementById("activeCheck").checked = true; 
    var username = document.getElementById("username" + id).innerText;
    document.getElementById("inputUsername").value = username;
    var pass = document.getElementById("password" + id).innerText;
    document.getElementById("inputPassword").value = pass;
    document.getElementById("inputConfirmPas").value = pass;
    document.getElementById("inputId").value = id;
    getButton();
    
}


function getButton(){
    var u = "Cập nhật";
    var a = "Thêm";
    if(document.getElementById("inputId").innerText <= 0){
        document.getElementById("abt").innerText = u;
    }
    else
        document.getElementById("abt").innerText = a;
}
