<%-- 
    Document   : contact
    Created on : Sep 13, 2021, 3:00:29 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:url value="/contact" var="action" />

<div id="main">
    <!-- -------- brad-cam start ----------- -->
    <div class="bradcam bradcam-img">
        <div class="grid wide">
            <div class="row">
                <div class="col l-12">
                    <div class="bradcam-text">
                        <h3>Kết nối</h3>
                        <p>Liên hệ với CK Travel</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- -------- brad-cam end ----------- -->

    <div class="travel-main contact-section">
        <div class="grid wide">
            <div class="row">
                <div class="col l-12">
                    <div id="map">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col l-12">
                    <div class="contact-heading">
                        <h3>Liên hệ với chúng tôi</h3>
                    </div>
                </div>
                <div class="col l-8">
                    <form action="" method="post">
                        <div class="row">
                            <div class="col l-12">
                                <div class="form-group">
                                    <textarea name="" id="" cols="30" rows="10" class="form-control" placeholder="Nhập lời gửi..."></textarea>
                                </div>
                            </div>
                            <div class="col l-6">
                                <div class="form-group">
                                    <input type="text" name="" id="" class="form-control" placeholder="Nhập tên của bạn...">
                                </div>
                            </div>
                            <div class="col l-6">
                                <div class="form-group">
                                    <input type="email" name="" id="" class="form-control" placeholder="Nhập email của bạn...">
                                </div>
                            </div>
                            <div class="col l-12">
                                <div class="form-group">
                                    <input type="text" name="" id="" class="form-control" placeholder="Nhập chủ đề...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col l-12">
                                <div class="form-btn">
                                    <button type="submit" class="btn">Gửi</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col l-3 l-o-1">
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="fas fa-home"></i></span>
                        <div class="media-body">
                            <h3>191/12 Phạm Huy Thông</h3>
                            <p>Phường 6, quận Gò Vấp</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon phone"><i class="fas fa-mobile-alt"></i></span>
                        <div class="media-body">
                            <h3><a href="tel:0337152172">0337152172</a></h3>
                            <p>Thứ 2 đến thứ 6, 8h - 16h</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="fas fa-envelope"></i></span>
                        <div class="media-body">
                            <h3>
                                <a href="mailto:khangbum970@gmail.com">khangbum970@gmail.com</a>
                            </h3>
                            <p>Gửi cho chúng tôi câu hỏi của bạn bất cứ lúc nào!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function initMap() {
        var location = {lat: 10.833791, lng: 106.683372}
        var map = new google.maps.Map(document.getElementById("map"), {
            zoom: 18,
            center: location
        })

        var marker = new google.maps.Marker({
            position: location,
            map: map
        })
    }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAjCwFvVD_a2cmMG5orpYS4LlOaqxNkfJc&callback=initMap"></script>