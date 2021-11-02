<%-- 
    Document   : stats-tour-quarter
    Created on : Nov 2, 2021, 9:09:25 AM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-content">
    <div class="main-table">
        <div class="row main-title d-flex align-item-center">
            <div class="col col-md-9 d-flex justify-content-center">
                <h2 class="heading-stats">Thống kê doanh thu chuyến đi theo quý</h2>
            </div>
            <form action="" class="col col-md-3 ">
                <div class="form-row">
                    <div class="form-group mr-3">
                        <label class="form-label-lg">Nhập năm</label>
                        <input type="text" class="form-control-lg ml-2 input-form-stats" name="year" />
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn-stats" value="Báo cáo" />
                    </div>
                </div>
            </form>
        </div>   
        <div class="user-table">
            <table>
                <thead>
                    <tr>
                        <td>Quý</td>
                        <td>Năm</td>
                        <td>Doanh thu</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${statsQuarter}" var="sQuarter">
                        <tr>
                            <td>${sQuarter[0]}</td>
                            <td>${sQuarter[2]}</td>
                            <td><fmt:formatNumber type="number" value="${sQuarter[1]}"/> (VNĐ)</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col col-md-12">
            <h2 class="heading-canvas">Biểu đồ thống kê doanh thu chuyến đi theo quý</h2>    
        </div>
    </div>
    
    <div class="row d-flex justify-content-center">
        <div class="col col-md-5">
            <canvas id="myTourQuarterStats"></canvas>
        </div>
    </div>
    
</div>

<script>
    
    let toursLabel = [];
    let toursInfo = [];
    
    <c:forEach var="sQuarter" items="${statsQuarter}">
        toursLabel.push('Quý ${sQuarter[0]} Năm ${sQuarter[2]}');
        toursInfo.push(${sQuarter[1]});
    </c:forEach>
    
    window.onload = function () {
        tourQuarterStatsChart("myTourQuarterStats", toursLabel, toursInfo);
    };
</script>

