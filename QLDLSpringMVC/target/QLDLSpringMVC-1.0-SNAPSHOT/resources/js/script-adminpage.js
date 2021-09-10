var $ = document.querySelector.bind(document)

var bar = $('.bar')

bar.onclick = function () {
    $('.side-bar').classList.toggle('hide')
    $('header').classList.toggle('slide-left')
    $('.main-content').classList.toggle('slide-left')
}