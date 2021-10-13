// ---------------------------- Moment JS -------------------------------
var dateItems = document.querySelectorAll('.single-comment__des .comment-user p');

window.onload = function() {
    for(let i = 0; i < dateItems.length; i++) {
        let date = dateItems[i];
        date.innerText = moment(date.innerText).fromNow();
    }
};

// --------------------------------- Comment area -----------------------------

let commentArea = document.getElementById("comment-area");
let commentPostArea = document.getElementById("commentPost-area");
let btnsCancel = document.querySelectorAll(".comment-box .user-comment .user-action .user-btn");
let btnsSubmit = document.querySelectorAll(".comment-box .user-comment .user-action .user-btn.disabled.submit");
let linkCommentTour = document.getElementById("link-comment-tour");

let count = 1;
if (linkCommentTour) {
    linkCommentTour.onclick = (event) => {
        linkCommentTour.href = `${linkCommentTour.href}${++count}`;
        console.log(count);
    };
};

btnsSubmit.forEach(btnSubmit => {
    console.log(btnSubmit);
    btnSubmit.addEventListener("click", function() {
        alert("Quý khách vui lòng Đăng nhập để sử dụng tính năng này ♥♥♥");
    });
});

function addCommentTour(tourId, user) {
    fetch("/QLDLSpringMVC/api/add-commentTour", {
        method: 'post',
        body: JSON.stringify({
            "content": commentArea.value,
            "tourId": tourId,
            "username": user
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function(res) {
        return res.json();
    }).then(function(data) {
        let commentListArea = document.getElementById("comments-list-area");
        
        commentListArea.innerHTML =  `
            <div class="single-comment">
                <div class="single-comment__thumb">
                    <img src="https://ngoccuongou.github.io/WebTravel/img/user/comment_2.png" />" alt="user-1">
                </div>
                <div class="single-comment__des">
                    <p class="single-comment__content">${data.comment}</p>
                    <div class="comment-user">
                        <h5><a href="#"></a></h5>
                        <p class="date">${moment(data.date).fromNow()}</p>
                    </div>
                </div>
            </div>
        ` +  commentListArea.innerHTML;
        location.reload();
   });
}

function addCommentPost(postId, user) {
    console.log("hello");
    fetch("/QLDLSpringMVC/api/add-commentPost", {
        method: 'post',
        body: JSON.stringify({
            "content": commentPostArea.value,
            "postId": postId,
            "username": user
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function(res) {
        return res.json();
    }).then(function(data) {
        let commentPostListArea = document.getElementById("commentsPost-list");
        
        commentPostListArea.innerHTML =  `
            <div class="single-comment">
                <div class="single-comment__thumb">
                    <img src="https://ngoccuongou.github.io/WebTravel/img/user/comment_2.png" />" alt="user-1">
                </div>
                <div class="single-comment__des">
                    <p class="single-comment__content">${data.comment}</p>
                    <div class="comment-user">
                        <h5><a href="#"></a></h5>
                        <p class="date">${moment(data.ratingDate).fromNow()}</p>
                    </div>
                </div>
            </div>
        ` +  commentPostListArea.innerHTML;
        location.reload();
   });
}

//if (btnsCancel) {
//    btnsCancel.forEach(btnCancel => {
//        btnCancel.onclick = () => {
//            if (commentArea) {
//                commentArea.value = "";
//            }
//            if (commentPostArea) {
//                commentPostArea.value = "";
//            }
//        };
//    });
//};

// Slider automatic start
function slider(counter, ms, type) {
    let isForward = true;
    setInterval(() => {
        if (document.getElementById(type + counter)) {
            document.getElementById(type + counter).checked = true;
        }

        if (isForward) {
            counter++;
        }

        if (!isForward) {
            counter--;
        }

        if (counter > 4) {
            counter = counter - 1;
            isForward = false;
        }

        if (counter < 1) {
            isForward = true;
            counter = 1;
        }
    }, ms);
}

slider(1, 4000, "radio");
slider(1, 2000, "testimonial-radio");

// Slider automatic ends

// ----------------------- overrite carousel of bootstrap 4 --------------
var carouselItems = document.querySelectorAll('.carousel-item');
var carouselItem = document.querySelector('.carousel-item');
var carouselIndicatorList = document.querySelectorAll('.carousel-indicators li');

carouselItems.forEach(carousel => {
    carousel.classList.remove('active');
});

if (carouselItem) {
    carouselItem.classList.add('active');
}

// ------------------------- Tour -------------------------
var popularSearchItems = document.querySelectorAll('.popular-place__list .popular-place__item');

popularSearchItems.forEach(item => {
    item.onclick = () => {
        item.classList.toggle('hide');
    };
});

var toursBox = document.querySelectorAll('.tour-box-index ul li');

toursBox.forEach(tour => {
    tour.onclick = () => {
        toursBox.forEach(tour => {
            tour.classList.remove('active');
        });
        tour.classList.add('active');
    };
});

//-------------------------------------------- booking ------------------------
let inputCountAdults = document.getElementById("inputCountAdults");
let inputCountChildren = document.getElementById("inputCountChildren");
let priceOfTour = document.getElementById("price-of-tour");
let inputPriceAdult = document.getElementById("inputPriceAdult");
let inputPriceChild = document.getElementById("inputPriceChild");
let countPriceOfTour = 0;
if (priceOfTour) {
    priceOfTour.innerText = countPriceOfTour;
}
console.log(inputCountAdults);
//let switchPrice =  true;
if (inputCountAdults) {
    inputCountAdults.onkeyup = () => {
        countPriceOfTour += inputCountAdults.value * inputPriceAdult.value;
        priceOfTour.innerText = countPriceOfTour;
    };
}

if (inputCountChildren) {
    inputCountChildren.onkeyup = () => {
        if(inputPriceChild === null){
            inputCountChildren.value = 0;
        }
        countPriceOfTour += inputCountChildren.value * inputPriceChild.value;
        priceOfTour.innerText = countPriceOfTour;
    };
}

let barsTop = document.querySelector(".bars-top");
if (barsTop) {
    barsTop.onclick = function() {
        barsTop.classList.toggle("active");
    };
}