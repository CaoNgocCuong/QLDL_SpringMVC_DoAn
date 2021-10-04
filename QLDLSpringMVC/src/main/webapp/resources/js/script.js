// ---------------------------- Moment JS -------------------------------
var dateItems = document.querySelectorAll('.single-comment__des .comment-user p')

window.onload = function() {
    for(let i = 0; i < dateItems.length; i++) {
        let date = dateItems[i]
        date.innerText = moment(date.innerText).fromNow()
    }
}

// --------------------------------- Comment area -----------------------------

let commentArea = document.getElementById("comment-area");
let btnCancel = document.querySelector(".comment-box .user-comment .user-action .user-btn");
let btnSubmit = document.querySelector(".comment-box .user-comment .user-action .user-btn.disabled.submit");

btnSubmit.addEventListener("click", function() {
    alert("Quý khách vui lòng Đăng nhập để sử dụng tính năng này ♥♥♥");
});

function addCommentTour(tourId, user) {
    console.log(user);
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
                        <p class="date">${moment(data.ratingDate).fromNow()}</p>
                    </div>
                </div>
            </div>
        ` +  commentListArea.innerHTML;
        location.reload();
   })
}

btnCancel.onclick = () => {
    commentArea.value = "";
}

// Slider automatic start
function slider(counter, ms, type) {
    let isForward = true
    setInterval(() => {
        document.getElementById(type + counter).checked = true
        
        if (isForward) {
            counter++
        }

        if (!isForward) {
            counter--
        }

        if (counter > 4) {
            counter = counter - 1
            isForward = false
        }

        if (counter < 1) {
            isForward = true
            counter = 1
        }
    }, ms)
}

slider(1, 4000, "radio")
slider(1, 2000, "testimonial-radio")

// Slider automatic ends

// ----------------------- overrite carousel of bootstrap 4 --------------
var carouselItems = document.querySelectorAll('.carousel-item')
var carouselItem = document.querySelector('.carousel-item')
var carouselIndicatorList = document.querySelectorAll('.carousel-indicators li')
carouselItems.forEach(carousel => {
    carousel.classList.remove('active')
})
carouselItem.classList.add('active')

// ------------------------- Tour -------------------------
var popularSearchItems = document.querySelectorAll('.popular-place__list .popular-place__item')

popularSearchItems.forEach(item => {
    item.onclick = () => {
        item.classList.toggle('hide')
    }
})

var toursBox = document.querySelectorAll('.tour-box-index ul li')

toursBox.forEach(tour => {
    tour.onclick = () => {
        toursBox.forEach(tour => {
            tour.classList.remove('active')
        })
        tour.classList.add('active')
    }
})


