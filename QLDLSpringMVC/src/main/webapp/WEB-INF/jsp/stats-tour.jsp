<%-- 
    Document   : stats-tour
    Created on : Oct 9, 2021, 12:10:11 AM
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
                <h2 class="heading-stats">Thống kê doanh thu của chuyến đi</h2>
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
                        <td>Mã chuyến đi</td>
                        <td>Tên chuyến đi</td>
                        <td>Doanh thu</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="t" items="${tourStats}">
                        <tr>
                            <td>${t[0]}</td>
                            <td>
                                <a href="<c:url value="/tours/${t[0]}/" />" class="text-secondary" target="_blank">
                                    ${t[1]}
                                </a>
                            </td>
                            <td><fmt:formatNumber type="number" value="${t[2]}" /> (VNĐ)</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col col-md-12">
            <h2 class="heading-canvas">Biểu đồ thống kê doanh thu</h2>    
        </div>
    </div>
    <div class="row d-flex justify-content-center">
        <div class="col col-md-5 ">
            <canvas id="myTourStats"></canvas>
        </div>
    </div>
    
</div>

<script>
    
    let toursLabel = [];
    let toursInfo = [];
    
    <c:forEach var="t" items="${tourStats}">
        toursLabel.push('${t[1]}');
        toursInfo.push(${t[2]});
    </c:forEach>
    
    window.onload = function () {
        tourStatsChart("myTourStats", toursLabel, toursInfo);
    };
</script>
