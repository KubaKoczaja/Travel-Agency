<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf" %>


<body class="profile-page sidebar-collapse">
<!-- Navbar -->
<%@include file="./dynamic/navigation.jspf" %>
<!-- End Navbar -->
<form>
    <div class="page-header page-header-xs" data-parallax="true"
         style="background-image: url('<c:url
                 value="/resources/img/fabio-mangione.jpg"/>'); justify-content: flex-start;">

        <div class="filter"></div>
        <div class="col-lg-12" style="margin-top: 170px;">
            <center>
                <div class="card text-center  opacity col-lg-6">

                    <div class="form-row justify-content-center text-left m-1">

                        <div class="form-group col-md-3">
                            <label for="inputDestination">
                                <h6>Kierunek/Hotel</h6>
                            </label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-map-marker"></i></span>
                                        </span>
                                </div>
                                <input type="text" class="form-control" id="inputDestination" placeholder="Dowolnie"/>
                            </div>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="startDate">
                                <h6>Wyjazd od</h6>
                            </label>
                            <div class="input-group date" id="startDate">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i
                                                    class="fa fa-calendar"></i></span>
                                        </span>
                                </div>
                                <input type="date" class="form-control" placeholder="${now}"/>
                            </div>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="backDate">
                                <h6>Powrót do</h6>
                            </label>
                            <div class="input-group date" id="backDate">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-calendar"
                                                                                          aria-hidden="true"></i></span>
                                        </span>
                                </div>
                                <input type="date" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="startAirport">
                                <h6>Wyjazd z</h6>
                            </label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i
                                                    class="fa fa-plane"></i></span>
                                        </span>
                                </div>
                                <input type="text" class="form-control" id="startAirport" placeholder="Dowolnie"/>
                            </div>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputPassengers">
                                <h6>Uczestnicy</h6>
                            </label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                        </span>
                                </div>
                                <input type="text" class="form-control" id="inputPassengers" placeholder="1 dorosły"/>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Szukaj</button>
                    </div>

                </div>
            </center>
        </div>
    </div>

    <div class="container">
        <div class="col-lg-12">
            <h1 class="mb-5">Wycieczki</h1>
            <div class="row">

                <div class="col-lg-3">

                    <div class="border-bottom">
                        <h6 class="pb-1 pt-2">Filtrowanie</h6>
                    </div>
                    <div class="border-bottom">
                        <h6 class="pb-1 pt-2">Długość pobytu</h6>
                        <div>
                            <span class="mr-5">od:</span>
                            <span class="ml-5">do:</span>
                            <div class="form-group row">
                                <div class="ml-3 mr-2" style="width: 110px">
                                    <input type="number" class="form-control" id="tripLengthFrom" min="2" max="28">
                                </div>

                                <div style="width: 110px">
                                    <input type="number" class="form-control" id="tripLengthTo" min="2" max="28">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="border-bottom">
                        <h6 class="pb-1 pt-2">Wyżywienie</h6>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value=""> All inclusive
                                <span class="form-check-sign"></span>
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value=""> BB - śniadania
                                <span class="form-check-sign"></span>
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value=""> HB - śniadania i obiadokolacje
                                <span class="form-check-sign"></span>
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value=""> FB - 3 posiłki
                                <span class="form-check-sign"></span>
                            </label>
                        </div>

                    </div>
                    <div class="border-bottom">
                        <h6 class="pb-1 pt-2">Standard hotelu</h6>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <input name="standard" class="form-check-input" type="radio" id="anyStandard" value="option1"> Dowolny
                                <span class="form-check-sign"></span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label for class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                    class="fa fa-star"></i><i class="fa fa-star"></i>
                                <input name="standard" class="form-check-input" type="radio" id="fiveStars" value="option2">
                                <span class="form-check-sign"></span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                    class="fa fa-star"></i><i class="fa fa-star-o"></i>
                                <input name="standard" class="form-check-input" type="radio" id="fourStars" value="option2">
                                <span class="form-check-sign"> (i więcej)</span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                    class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                <input name="standard" class="form-check-input" type="radio" id="threeStars" value="option2">
                                <span class="form-check-sign"> (i więcej)</span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i
                                    class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                <input name="standard" class="form-check-input" type="radio" id="twoStars" value="option2">
                                <span class="form-check-sign"> (i więcej)</span>
                            </label>
                        </div>
                    </div>
                    <div class="border-bottom">
                        <h6 class="pb-1 pt-2">Cena</h6>
                        <div>
                            <span class="mr-5">od:</span>
                            <span class="ml-5">do:</span>
                            <div class="form-group row">
                                <div class="ml-3 mr-2" style="width: 110px">
                                    <input type="number" class="form-control" id="priceFrom" min="0">
                                </div>

                                <div style="width: 110px">
                                    <input type="number" class="form-control" id="priceTo" min="0">
                                </div>
                            </div>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" id="priceForPerson" value="option2">
                                <span class="form-check-sign">Cena za osobę</span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" id="priceForWhole" value="option2">
                                <span class="form-check-sign">Cena za wszystkich</span>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col-lg-9">
                    <c:forEach items="${trips}" var="trip">
                        <a href='<c:url value="/hotelView/${trip.id}"/>' class="row rounded-right border" style="margin-bottom: 25px;">
                            <div class="col-lg-4" style="padding: 0;">
                                <img src="<c:url value='https://i.wakacje.pl/no-index/hotel/polska/lenart-obiekt-budynek-glowny-828628360-295-267.jpg'/>"
                                     class="img-rounded img-no-padding img-responsive" alt="Hotel">
                            </div>
                            <div class="col-lg-5" style="color: #000000">
                                <p class="pt-1" style="font-size: 12px;">
                                        ${trip.hotel.city.country.countryName}/${trip.hotel.city.cityName}
                                </p>
                                <p style="font-size: 24px; font-weight: 800; margin-bottom: 0;">
                                    <b>${trip.hotel.hotelName}</b>
                                </p>
                                <span style="color: #FFCC00; font-size: 20px;">${trip.hotel.stars} <i
                                        class="fa fa-star"></i></span>
                                <p style="font-size: 16px; padding-top: 15px">
                                    <i class="fa fa-calendar"></i>
                                    Data od <fmt:formatDate value="${trip.departureDate}" pattern="dd-MM-yyyy"/> - do
                                    <fmt:formatDate value="${trip.returnDate}" pattern="dd-MM-yyyy"/>
                                </p>
                                <p style="font-size: 16px;">
                                    <i class="fa fa-clock-o"></i>
                                        ${trip.numberOfDays} dni
                                </p>
                                <p style="font-size: 16px;">
                                    <i class="fa fa-plane"></i>
                                    Wylot z ${trip.startAirport.airportName}
                                </p>
                                <p style="font-size: 16px;">
                                    <i class="fa fa-cutlery" aria-hidden="true"></i>
                                    Wyżywienie ${trip.catering}
                                </p>
                            </div>
                            <div class=" col-lg-3 border-left">
                                <div>
                                    <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px; text-align: right">
                                        Cena</h6>
                                    <p style="color: black; font-size: 12px; text-align: right"><b><fmt:formatNumber
                                            maxFractionDigits="0" value="${trip.adultPrice}"/></b> złotych za osobę</p>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>

    </div>
</form>
<%@include file="dynamic/footer.jspf" %>
<%@include file="dynamic/js.jspf" %>
</body>
</html>
