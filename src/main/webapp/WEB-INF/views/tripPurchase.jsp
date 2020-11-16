<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf" %>


<body class="profile-page sidebar-collapse">
<!-- Navbar -->
<%@include file="./dynamic/navigation.jspf" %>
<!-- End Navbar -->
<div class="page-header page-header-xs" data-parallax="true"
     style="background-image: url('/resources/img/fabio-mangione.jpg'); justify-content: flex-start;">
</div>
<!-- <div class="section profile-content"> -->
<div class="container">
    <div style="color: black; margin-top: 8px">
        <p style="font-size: 50px; font-weight: 800; margin-bottom: 0;">
            <b>${tripPurchase.trip.hotel.hotelName}</b>
        </p>
        <span style="color: #FFCC00; font-size: 18px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
    </div>
    <div class="col-lg-12 mt-4">
        <div class="row justify-content-center">
            <div class="col-lg-4 card pt-3 border">
                <div class="input-group pt-2" id="startdate">
                    <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-calendar"></i></span>
                                </span>
                    </div>

                    <input name="CalculatorDays" readonly="" unselectable="on" class="form-control"
                           value="<fmt:formatDate value="${tripPurchase.trip.departureDate}" pattern="dd-MM-yyyy"/> - <fmt:formatDate value="${tripPurchase.trip.returnDate}" pattern="dd-MM-yyyy"/>">
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
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-map-marker"></i></span>
                                </span>
                    </div>
                    <input name="CalculatorDeparture" readonly="" unselectable="on" class="form-control"
                           value="${tripPurchase.trip.startCity.cityName}">
                </div>
                <div class="input-group pt-2">
                    <div class="input-group-prepend">
                                <span class="input-group-text">

                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-cutlery"
                                                                                  aria-hidden="true"></i></span>
                                </span>
                    </div>
                    <input name="CalculatorService" disabled="" readonly="" unselectable="on"
                           class="form-control" value="${tripPurchase.trip.catering}">
                </div>
                <div class="text-center">
                    <div class="mt-2">
                        <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px;">Cena
                            całkowita
                        </h6>
                        <p style="color: black; font-size: 12px; ">${tripPurchase.totalPrice}</p>
                    </div>
                </div>
            </div>
        </div>
        <form name="sendAdult" method="post" action='<c:url value="/tripPurchase/addParticipants"/>'>
            <div class="row justify-content-center">
                <c:forEach begin="1" end="${tripPurchase.numberOfAdultParticipants}" varStatus="loop">
                    <div class="col-lg-4 card pt-3 border">


                        Dorosły uczestnik nr ${loop.index}
                        <input type="hidden" name="isAdult" value="1">
                        <input type="hidden" name="tripPurchase.id" value="${tripPurchase.id}">
                        <div class="input-group mt-2">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                </span>
                            </div>
                            <input type="text" name="firstname" class="form-control"
                                   placeholder="Imię"/>
                        </div>
                        <div class="input-group mt-2">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                </span>
                            </div>
                            <input name="lastname" class="form-control"
                                   placeholder="Nazwisko"/>
                        </div>
                        <div class="input-group mt-2 mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                </span>
                            </div>
                            <input name="passportNumber" class="form-control"
                                   placeholder="Numer paszportu"/>
                        </div>

                    </div>

                </c:forEach>
            </div>
            <div class="row justify-content-center">
                <c:forEach begin="1" end="${tripPurchase.numberOfChildParticipants}" varStatus="loop">

                    <div class="col-lg-4 card pt-3 border">

                        Niepełnoletni uczestnik nr ${loop.index}
                        <input type="hidden" name="isAdult" value="0">
                        <input type="hidden" name="tripPurchase.id" value="${tripPurchase.id}">
                        <div class="input-group mt-2">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                </span>
                            </div>
                            <input type="text" name="firstname" class="form-control"
                                   placeholder="Imię"/>
                        </div>
                        <div class="input-group mt-2">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                </span>
                            </div>
                            <input name="lastname" class="form-control"
                                   placeholder="Nazwisko"/>
                        </div>
                        <div class="input-group mt-2 mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                </span>
                            </div>
                            <input name="passportNumber" class="form-control"
                                   placeholder="Numer paszportu"/>
                        </div>


                    </div>

                </c:forEach>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 card pt-3 border">
                    <input type="submit" class="btn btn-warning btn-round mt-2 mb-3" value="Zarezerwuj">

        </form>
    </div>

</div>

</div>

</div>

<!-- </div> -->
</div>
<%@include file="dynamic/footer.jspf" %>
<%@include file="dynamic/js.jspf" %>
</body>
</html>