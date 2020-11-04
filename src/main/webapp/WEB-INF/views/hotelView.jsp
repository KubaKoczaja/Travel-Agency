<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf" %>


<body class="profile-page sidebar-collapse">
<!-- Navbar -->
<%@include file="./dynamic/navigation.jspf" %>
<!-- End Navbar -->
<div class="page-header page-header-xs" data-parallax="true" style="background-image: url('<c:url
        value="/resources/img/fabio-mangione.jpg"/>'); justify-content: flex-start;">
</div>
<div class="section profile-content">
    <div class="container">
        <div style="color: black; margin-top: 8px">
            <p style="font-size: 50px; font-weight: 800; margin-bottom: 0;">
                <b>Nazwa Hotelu</b>
            </p>
            <span style="color: #FFCC00; font-size: 18px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                    class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
        </div>
        <div class="col-lg-12 mt-4">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-12 mb-4">

                            <!--Modal: Name-->
                            <div class="modal fade" id="modal1" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">

                                    <!--Content-->
                                    <div class="modal-content">

                                        <!--Body-->
                                        <div class="modal-body mb-0 p-0">

                                            <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                                                <iframe class="embed-responsive-item"
                                                        src="https://www.youtube.com/embed/A3PDXmYoF5U"
                                                        allowfullscreen></iframe>
                                            </div>

                                        </div>

                                        <!--Footer-->
                                        <div class="modal-footer justify-content-center">


                                            <button type="button"
                                                    class="btn btn-outline-primary btn-rounded btn-md ml-4"
                                                    data-dismiss="modal">Close
                                            </button>

                                        </div>

                                    </div>
                                    <!--/.Content-->

                                </div>
                            </div>
                            <!--Modal: Name-->

                            <a><img class="img-fluid z-depth-1"
                                    src="https://mdbootstrap.com/img/screens/yt/screen-video-1.jpg" alt="video"
                                    data-toggle="modal" data-target="#modal1"></a>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-6 mb-4">

                            <!--Modal: Name-->
                            <div class="modal fade" id="modal6" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">

                                    <!--Content-->
                                    <div class="modal-content">

                                        <!--Body-->
                                        <div class="modal-body mb-0 p-0">

                                            <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                                                <iframe class="embed-responsive-item"
                                                        src="https://www.youtube.com/embed/wTcNtgA6gHs"
                                                        allowfullscreen></iframe>
                                            </div>

                                        </div>

                                        <!--Footer-->
                                        <div class="modal-footer justify-content-center">


                                            <button type="button"
                                                    class="btn btn-outline-primary btn-rounded btn-md ml-4"
                                                    data-dismiss="modal">Close
                                            </button>

                                        </div>

                                    </div>
                                    <!--/.Content-->

                                </div>
                            </div>
                            <!--Modal: Name-->

                            <a><img class="img-fluid z-depth-1"
                                    src="https://mdbootstrap.com/img/screens/yt/screen-video-2.jpg" alt="video"
                                    data-toggle="modal" data-target="#modal6"></a>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-6 mb-4">

                            <!--Modal: Name-->
                            <div class="modal fade" id="modal4" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">

                                    <!--Content-->
                                    <div class="modal-content">

                                        <!--Body-->
                                        <div class="modal-body mb-0 p-0">

                                            <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                                                <iframe class="embed-responsive-item"
                                                        src="<c:url value="https://www.youtube.com/embed/vlDzYIIOYmM"/>"
                                                        allowfullscreen></iframe>
                                            </div>

                                        </div>

                                        <!--Footer-->
                                        <div class="modal-footer justify-content-center">

                                            <button type="button"
                                                    class="btn btn-outline-primary btn-rounded btn-md ml-4"
                                                    data-dismiss="modal">Close
                                            </button>

                                        </div>

                                    </div>
                                    <!--/.Content-->

                                </div>
                            </div>
                            <!--Modal: Name-->

                            <a><img class="img-fluid z-depth-1"
                                    src="<c:url value="https://mdbootstrap.com/img/screens/yt/screen-video-3.jpg"/>" alt="video"
                                    data-toggle="modal" data-target="#modal4"></a>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-12 mb-4">

                            <!--Modal: Name-->
                            <div class="modal fade" id="modal2" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">

                                    <!--Content-->
                                    <div class="modal-content">

                                        <!--Body-->
                                        <div class="modal-body mb-0 p-0">

                                            <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                                                <iframe class="embed-responsive-item"
                                                        src="<c:url value="https://www.youtube.com/embed/GUEZCxBcM78"/>"
                                                        allowfullscreen></iframe>
                                            </div>

                                        </div>

                                        <!--Footer-->
                                        <div class="modal-footer justify-content-center">


                                            <button type="button"
                                                    class="btn btn-outline-primary btn-rounded btn-md ml-4"
                                                    data-dismiss="modal">Close
                                            </button>

                                        </div>

                                    </div>
                                    <!--/.Content-->

                                </div>
                            </div>
                            <!--Modal: Name-->

                            <a><img class="img-fluid z-depth-1"
                                    src="https://mdbootstrap.com/img/screens/yt/screen-video-4.jpg" alt="video"
                                    data-toggle="modal" data-target="#modal2"></a>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-6 mb-4">

                            <!--Modal: Name-->
                            <div class="modal fade" id="modal5" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">

                                    <!--Content-->
                                    <div class="modal-content">

                                        <!--Body-->
                                        <div class="modal-body mb-0 p-0">

                                            <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                                                <iframe class="embed-responsive-item"
                                                        src="<c:url value="https://www.youtube.com/embed/PjGkVCAo8Fw"/>"
                                                        allowfullscreen></iframe>
                                            </div>

                                        </div>

                                        <!--Footer-->
                                        <div class="modal-footer justify-content-center">

                                            <button type="button"
                                                    class="btn btn-outline-primary btn-rounded btn-md ml-4"
                                                    data-dismiss="modal">Close
                                            </button>

                                        </div>

                                    </div>
                                    <!--/.Content-->

                                </div>
                            </div>
                            <!--Modal: Name-->

                            <a><img class="img-fluid z-depth-1"
                                    src="<c:url value="https://mdbootstrap.com/img/screens/yt/screen-video-5.jpg"/>" alt="video"
                                    data-toggle="modal" data-target="#modal5"></a>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-6 mb-4">

                            <!--Modal: Name-->
                            <div class="modal fade" id="modal3" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">

                                    <!--Content-->
                                    <div class="modal-content">

                                        <!--Body-->
                                        <div class="modal-body mb-0 p-0">

                                            <div class="embed-responsive embed-responsive-16by9 z-depth-1-half">
                                                <iframe class="embed-responsive-item"
                                                        src="<c:url value="https://www.youtube.com/embed/gsNY7TV4r1M"/>"
                                                        allowfullscreen></iframe>
                                            </div>

                                        </div>

                                        <!--Footer-->
                                        <div class="modal-footer d-block d-md-flex justify-content-center">


                                            <button type="button"
                                                    class="btn btn-outline-primary btn-rounded btn-md ml-4"
                                                    data-dismiss="modal">Close
                                            </button>

                                        </div>

                                    </div>
                                    <!--/.Content-->

                                </div>
                            </div>
                            <!--Modal: Name-->

                            <a><img class="img-fluid z-depth-1"
                                    src="<c:url value="https://mdbootstrap.com/img/screens/yt/screen-video-6.jpg"/>" alt="video"
                                    data-toggle="modal" data-target="#modal3"></a>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->
                </div>
                <div class="col-lg-4 card pt-3 border">
                    <div class="input-group">
                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i
                                                        class="fa fa-user"></i></span>
                                            </span>
                        </div>
                        <input type="number" name="CalculatorPerson" readonly="" class="form-control"
                               placeholder="Liczba osób"/>
                    </div>
                    <div class="input-group pt-2" id="startdate">
                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i
                                                        class="fa fa-calendar"></i></span>
                                            </span>
                        </div>

                        <input type="type" name="CalculatorDays" readonly="" class="form-control"
                               value="<fmt:formatDate value="${trip.departureDate}" pattern="dd-MM-yyyy"/> - <fmt:formatDate value="${trip.returnDate}" pattern="dd-MM-yyyy"/>">
                    </div>
                    <div class="input-group pt-2">
                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span><i class="fa fa-plane"></i></span>
                                            </span>
                        </div>
                        <input name="CalculatorPlane" disabled="" readonly="" unselectable="on" class="form-control"
                               value="Typ transportu">

                    </div>
                    <div class="input-group pt-2">
                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i
                                                        class="fa fa-map-marker"></i></span>
                                            </span>
                        </div>
                        <input type="text" name="CalculatorDeparture" readonly="" unselectable="on" class="form-control"
                               value="${trip.startAirport.airportName}">
                    </div>
                    <div class="input-group pt-2">
                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                               
                                                <span class="glyphicon glyphicon-calendar"><i class="fa fa-cutlery"
                                                                                              aria-hidden="true"></i></span>
                                            </span>
                        </div>
                        <input name="CalculatorService" disabled="" readonly="" unselectable="on" class="form-control"
                               value="${trip.catering}">
                    </div>
                    <div class="text-center">
                        <div class="mt-2">
                            <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px;">
                                Cena</h6>
                            <p style="color: black; font-size: 12px; "><b><fmt:formatNumber
                                    maxFractionDigits="0" value="${trip.adultPrice}"/></b>za osobę</p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-warning btn-round mt-2 mb-3">Zarezerwuj</button>

                </div>
            </div>
        </div>
        <h2>Opis hotelu</h2>
        <div style="text-align: center">
           ${trip.hotel.description}
        </div>
    </div>
</div>
<%@include file="dynamic/footer.jspf" %>
<%@include file="dynamic/js.jspf" %>
</body>
</html>
