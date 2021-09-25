var $ = document.querySelector.bind(document)
var $$ = document.querySelectorAll.bind(document)

var bar = $('.bar')
var subNav = $$('.side-bar-nav ul li div.link-wrapper')

bar.onclick = function () {
    $('.side-bar').classList.toggle('hide')
    $('header').classList.toggle('slide-left')
    $('.main-content').classList.toggle('slide-left')
}

subNav.forEach(sub => {
    sub.onclick = function () {
        sub.classList.toggle('active')
    }
});

