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

// slide testimonial 
var btnTestimonial = document.querySelectorAll(".btn-testimonial")
var slide = document.getElementById("slide-testimonial")

btnTestimonial[0].onclick = function() {
    slide.style.transform = "translateX(0px)"

    for (let i = 0; i < 4; i++) {
        btnTestimonial[i].classList.remove("active")
    }
    this.classList.add("active")
}

btnTestimonial[1].onclick = function() {
    slide.style.transform = "translateX(-800px)"
    for (let i = 0; i < 4; i++) {
        btnTestimonial[i].classList.remove("active")
    }
    this.classList.add("active")
}

btnTestimonial[2].onclick = function() {
    slide.style.transform = "translateX(-1600px)"
    for (let i = 0; i < 4; i++) {
        btnTestimonial[i].classList.remove("active")
    }
    this.classList.add("active")
}

btnTestimonial[3].onclick = function() {
    slide.style.transform = "translateX(-2400px)"
    for (let i = 0; i < 4; i++) {
        btnTestimonial[i].classList.remove("active")
    }
    this.classList.add("active")
}
