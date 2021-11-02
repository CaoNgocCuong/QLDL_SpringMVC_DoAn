document.cookie = "promo_shown=1; Max-Age=2600000; Secure";
var bar = document.querySelector('.bar');
var subNav = document.querySelectorAll('.side-bar-nav ul li .link-wrapper');

if (bar) {
    bar.onclick = function () {
        document.querySelector('.side-bar').classList.toggle('hide');
        document.querySelector('header').classList.toggle('slide-left');
        document.querySelector('.main-content').classList.toggle('slide-left');
        console.log('hello bar');
    };
}
console.log(bar);
subNav.forEach(sub => {
    sub.onclick = function (e) {
        sub.classList.toggle('active');
//        e.preventDefault();
        console.log(sub);
    };
});


// ---------------------------- Chart tour stats ------------------------------

function generateColors() {
    let r = parseInt(Math.random() * 255);
    let g = parseInt(Math.random() * 255);
    let b = parseInt(Math.random() * 255);
    
    return `rgb(${r}, ${g}, ${b})`;
}


function tourStatsChart(idEle, toursLabel=[], toursInfo=[]) {
    
    let colors = [];
    
    for (let i = 0; i < toursLabel.length; i++) {
        colors.push(generateColors());
    }
    console.log(colors);
    
    const data = {
        labels: toursLabel,
        datasets: [{
          label: 'Thống kê doanh thu theo từng chuyến đi',
          data: toursInfo,
          backgroundColor: colors,
          borderColor: colors,
          borderWidth: 1,
          hoverOffset: 4
        }]
    };
    
    const config = {
        type: 'pie',
        data: data
    };
    
    let ctx = document.getElementById(idEle).getContext("2d");
    new Chart(ctx, config);
}

function tourMonthStatsChart(idEle, toursLabel=[], toursInfo=[]) {
    
    let colors = [];
    
    for (let i = 0; i < toursLabel.length; i++) {
        colors.push(generateColors());
    }
    console.log(colors);
    
    const data = {
        labels: toursLabel,
        datasets: [{
          label: 'Thống kê doanh thu chuyến đi theo tháng',
          data: toursInfo,
          backgroundColor: colors,
          borderColor: colors,
          borderWidth: 1
        }]
    };
    
    const config = {
        type: 'bar',
        data: data,
        options: {
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }
    };
    
    let ctx = document.getElementById(idEle).getContext("2d");
    new Chart(ctx, config);
}

function tourQuarterStatsChart(idEle, toursLabel = [], toursInfo = []) {
    let colors = [];
    
    for (let i = 0; i < toursLabel.length; i++) {
        colors.push(generateColors());
    }
    
     const data = {
        labels: toursLabel,
        datasets: [{
          label: 'Thống kê doanh thu chuyến đi theo quý',
          data: toursInfo,
          backgroundColor: colors,
          hoverOffset: 4
        }]
    };
    
    const config = {
        type: 'doughnut',
        data: data
    };
    
    let ctx = document.getElementById(idEle).getContext("2d");
    new Chart(ctx, config);
};

function tourYearStatsChart(idEle, toursLabel=[], toursInfo=[]) {
    
    let colors = [];
    
    for (let i = 0; i < toursLabel.length; i++) {
        colors.push(generateColors());
    }
    console.log(colors);
    
    const data = {
        labels: toursLabel,
        datasets: [{
            label: 'Thống kê doanh thu chuyến đi theo năm',
            data: toursInfo,
            backgroundColor: colors,
            borderColor: colors,
            borderWidth: 1,
            fill: false,
            tension: 0.1
        }]
    };
    
    const config = {
        type: 'line',
        data: data,
        options: {
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }
    };
    
    let ctx = document.getElementById(idEle).getContext("2d");
    new Chart(ctx, config);
}


