/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
if (window.history.replaceState)
    window.history.replaceState( null, null, window.location.href );
function deletePhoto(id){
    if (confirm("Bạn chắc chắn xóa ảnh có mã số " + id + " không?") == true) { 
        fetch(`/QLDLSpringMVC/api/admin/tour-photo-management/${id}`, {
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

function deleteTourDetail(id){
    if (confirm("Bạn chắc chắn xóa chi tiết tour có mã số " + id + " không?") == true) { 
        fetch(`/QLDLSpringMVC/api/admin/tour-detail-management/${id}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                if (window.history.replaceState)
                    window.history.replaceState( null, null, window.location.href );
                alert("Xóa thành công!");
                location.reload();
            } else 
                alert("Đã có lỗi xảy ra!!!");
        })
    }
}

function deleteTour(id){
    if (confirm("Bạn chắc chắn xóa tour có mã số " + id + " không?") == true) { 
        fetch(`/QLDLSpringMVC/api/admin/tour-management/${id}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                if (window.history.replaceState)
                    window.history.replaceState( null, null, window.location.href );
                alert("Xóa thành công!");
                location.reload();
            } else 
                alert("Đã có lỗi xảy ra!!!");
        })
    }
}

function getTourDetails(){
    var t = document.getElementById("listTour").value;
    document.getElementById("inputSearch").value = t;
    $("#btnSearch").click();
}
if (window.history.replaceState)
    window.history.replaceState( null, null, window.location.href );
function summernote(id, placeholder) {
    $(id).summernote({
        placeholder: placeholder,
        tabsize: 2
    });
}

summernote('#summernoteIntro', 'Nhập điểm nhấn hành trình');
summernote('#summernoteService', 'Nhập dịch vụ chuyến đi');
summernote('#summernoteNote', 'Nhập ghi chú chuyến đi');

//format dd/MM/yyyy to yyyy-MM-dd
function formatDate(str){
    let day = str.slice(0, 2);
    let month = str.slice(3, 5);
    let year = str.slice(6, 10)
    str = year + '-' + month + '-' + day;
    return str;
}

function getTourInfo(id){
    var tourId = document.getElementById("tourId" + id).innerText;
    var name = document.getElementById("tourName" + id).innerText;
    var type = document.getElementById("tourType" + id).innerText;
    var country = document.getElementById("country" + id).innerText;
    var time = document.getElementById("time" + id).innerText;
    var days = time.slice(0, time.indexOf('/'));
    var nights = time.slice(time.indexOf('/') + 1, time.length);
    var minCus = document.getElementById("minCus" + id).innerText;
    var maxCus = document.getElementById("maxCus" + id).innerText;
    var price = document.getElementById("price" + id).innerText;
    var adultPrice = price.slice(0, price.indexOf('/'));
    var childPrice = price.slice(price.indexOf('/') + 1, price.length);
    var intro = document.getElementById("intro" + id).innerHTML;
    var service = document.getElementById("service" + id).innerHTML;
    var note = document.getElementById("note" + id).innerHTML;
    var contentSummernote = [];
    let noteEditors = document.querySelectorAll('.note-editable.card-block');
    let notePlaceHolder = document.querySelectorAll('.note-placeholder');
    var date = document.getElementById("date" + id).innerText;
    var from = date.slice(0, date.indexOf('-'));
    var to = date.slice(date.indexOf('-') + 1, date.length).trim();
    let summernoteIds = [];
    
    document.getElementById("tourId").value = tourId;
    document.getElementById("inputName").value = name;
    document.getElementById("inputTypeTour").value = type;
    document.getElementById("inputCountry").value = country;
    

    document.getElementById("inputDay").value = days;
    document.getElementById("inputNight").value = nights;
    
    document.getElementById("inputMin").value = minCus;
    document.getElementById("inputMax").value = maxCus;

    document.getElementById("inputPriceAdult").value = adultPrice;
    document.getElementById("inputPriceChild").value = childPrice;
    document.getElementById("inputTimeStart").value = formatDate(from);
    document.getElementById("inputTimeEnd").value = formatDate(to);
    document.getElementById("inputFileTour").required = false;
    document.getElementById("abt").innerText = "Cập nhật";  
    
    contentSummernote.push(intro);
    contentSummernote.push(service);
    contentSummernote.push(note);

    if (noteEditors) {
        summernoteIds.push('summernoteIntro');
        summernoteIds.push('summernoteService');
        summernoteIds.push('summernoteNote');
        for(let i = 0; i < noteEditors.length; i++) {
            notePlaceHolder[i].innerText = '';
            noteEditors[i].innerHTML = contentSummernote[i];
            document.getElementById(summernoteIds[i]).value = contentSummernote[i];
        }
    }
}

function getTourDetailInfo(id){
    var dep = document.getElementById('departure' + id).innerText;
    var des = document.getElementById('destination' + id).innerText;
    var startDate = document.getElementById('startDate' + id).innerText;
    var endDate = document.getElementById('endDate' + id).innerText;
    var content = document.getElementById('content' + id).innerHTML;
    var tourId = document.getElementById('tourId' + id).innerText;
    var tourDetailId = document.getElementById('tourDetailId' + id).innerText;
    let noteEditor = document.querySelector('.note-editable.card-block');
    let notePlaceHolder = document.querySelector('.note-placeholder');
    
    document.getElementById('inputDeparture').value = dep;
    document.getElementById('inputDestination').value = des;
    document.getElementById('inputTimeStart').value = formatDate(startDate);
    document.getElementById('inputTimeEnd').value = formatDate(endDate);
    document.getElementById('inputListTour').value = tourId;
    document.getElementById('inputId').value = tourDetailId;
    document.getElementById("abt").innerText = "Cập nhật";
    
    if(noteEditor){
        noteEditor.innerHTML = content;
        notePlaceHolder.innerText = '';
        document.getElementById('summernote').value = content;
    }
    
}

function getTourPhoto(id){
    var tourId = document.getElementById("tourId" + id).innerText;
    
    document.getElementById("inputListTour").value = tourId;
    document.getElementById("inputId").value = id;
    document.getElementById("abt").innerText = "Cập nhật";  
}

function setButton(){
    let noteEditor = document.querySelector('.note-editable.card-block');
    let notePlaceHolder = document.querySelector('.note-placeholder');
    
    notePlaceHolder.innerText = 'Nhập lịch trình chuyến đi';
    noteEditor.innerHTML = '';
    document.getElementById('summernote').value = null;
    document.getElementById("abt").innerText = "Thêm";  
}

function setBtn(){
    let noteEditors = document.querySelectorAll('.note-editable.card-block');
    let notePlaceHolder = document.querySelectorAll('.note-placeholder');
    let placeHolder = [];
    let summernoteIds = [];
    
    placeHolder.push('Nhập điểm nhấn hành trình');
    placeHolder.push('Nhập dịch vụ chuyến đi');
    placeHolder.push('Nhập ghi chú chuyến đi');
    summernoteIds.push('summernoteIntro');
    summernoteIds.push('summernoteService');
    summernoteIds.push('summernoteNote');
    for(let i = 0; i < noteEditors.length; i++) {
        notePlaceHolder[i].innerText = placeHolder[i];
        noteEditors[i].innerHTML = null;
        document.getElementById(summernoteIds[i]).value = null;
    }
    notePlaceHolder.innerText = 'Nhập lịch trình chuyến đi';
    document.getElementById("abt").innerText = "Thêm";  
}

function setPhotoButton(){
    document.getElementById("abt").innerText = "Thêm";  
}