<%-- 
    Document   : stats-tour-month
    Created on : Oct 8, 2021, 10:05:01 PM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex align-item-center">
            <div class="col col-md-4 d-flex justify-content-center">
                <h2 class="heading-stats">Thống kê doanh thu chuyến đi theo tháng</h2>
            </div>
            <form action="" class="col col-md-8 ">
                <div class="form-row justify-content-between align-item-center">
                    <div class="form-group">
                        <label class="form-label-lg">Tên chuyến đi</label>
                        <input type="text" class="form-control-lg ml-2 input-form-stats" name="kw" />
                    </div>
                    <div class="form-group">
                        <label class="form-label-lg">Từ thời điểm</label>
                        <input type="date" class="form-control-lg ml-2 input-form-stats" name="fromDate" />
                    </div>
                    <div class="form-group">
                        <label class="form-label-lg">Đến thời điểm</label>
                        <input type="date" class="form-control-lg ml-2 input-form-stats" name="toDate" />
                    </div>
                    <div class="form-group d-flex align-item-center">
                        <input type="submit" class="btn-stats" value="Báo cáo" />
                    </div>
                </div>
            </form>
        </div>   
        <div class="user-table">
            <table>
                <thead>
                    <tr>
                        <td>Tháng/Năm</td>
                        <td>Doanh thu</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="t" items="${tourStatsMonth}">
                        <tr>
                            <td>${t[0]} / ${t[1]}</td>
                            <td><fmt:formatNumber value="${t[2]}" type="number" /> VNĐ</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col col-md-12">
            <h2 class="heading-canvas">Biểu đồ thống kê doanh thu chuyến đi theo tháng</h2>    
        </div>
        <div class="col col-md-12">
            <canvas id="myTourMonthStats"></canvas>
        </div>
    </div>
    
</div>

<script>
    
    let toursLabel = [];
    let toursInfo = [];
    
    <c:forEach var="t" items="${tourStatsMonth}">
        toursLabel.push('${t[0]}/${t[1]}');
        toursInfo.push(${t[2]});
    </c:forEach>
    
    window.onload = function () {
        tourMonthStatsChart("myTourMonthStats", toursLabel, toursInfo);
    };
</script>

