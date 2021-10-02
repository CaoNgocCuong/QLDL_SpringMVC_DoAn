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

