var $ = document.querySelector.bind(document);
var $$ = document.querySelectorAll.bind(document);

var bar = $('.bar');
var subNav = $$('.side-bar-nav ul li div.link-wrapper');

bar.onclick = function () {
    $('.side-bar').classList.toggle('hide');
    $('header').classList.toggle('slide-left');
    $('.main-content').classList.toggle('slide-left');
};

subNav.forEach(sub => {
    sub.onclick = function () {
        sub.classList.toggle('active');
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


