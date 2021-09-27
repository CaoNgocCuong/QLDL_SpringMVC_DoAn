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

// ------------------------- Tour -------------------------
var popularSearchItems = document.querySelectorAll('.popular-place__list .popular-place__item')

popularSearchItems.forEach(item => {
    item.onclick = () => {
        item.classList.toggle('hide')
    }
})

// ------------------------------ Modal -----------------------
// var btnLogin = document.querySelector('.user-dropdown .btn-login-wrap .btn-login')
// var modal = document.querySelector('.modal-form')
// var overlay = document.querySelector('.modal-form__overlay')
// var formLogin = document.querySelector('.modal__content-login')
// var btnInnerRegister = document.querySelector('.register-inner-form')
// var btnInnerLogin = document.querySelector('.login-inner-form')
// var btnCloses = document.querySelectorAll('.form .icon-close')
// var navRegister = document.querySelector('.register-link')

// function modalFade(eleAddEvent, eleAddHide, eleAddClasForm) {
//     eleAddEvent.addEventListener('click', function(event) {
//         event.preventDefault()
//         eleAddHide.classList.toggle('hide')
//         eleAddClasForm.classList.add('show')
//     })
// }

// modalFade(btnLogin, modal, formLogin)
// modalFade(overlay, modal, formLogin)

// btnCloses.forEach(btn => {
//     btn.addEventListener('click', function() {
//         modal.classList.add('hide')
//     })
// })

// navRegister.addEventListener('click', function(event) {
//     event.preventDefault()
//     formLogin.classList.remove('show')
//     modal.classList.toggle('hide')
// })


// btnInnerRegister.addEventListener('click', function(event) {
//     event.preventDefault()

//     formLogin.classList.remove('show')
// })

// btnInnerLogin.addEventListener('click', function(event) {
//     event.preventDefault()

//     formLogin.classList.add('show')
// })

