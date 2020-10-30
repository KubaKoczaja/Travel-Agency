
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf"%>


<body class="profile-page sidebar-collapse">
    <!-- Navbar -->
    <%@include file="./dynamic/navigation.jspf"%>
    <!-- End Navbar -->
    <div class="page-header page-header-xs" data-parallax="true" style="background-image: url('<c:url value="/resources/img/fabio-mangione.jpg"/>'); justify-content: flex-start; ju">
        <div class="filter"></div>
        <div class="col-lg-12" style="margin-top: 170px;">
            <center>
                <div class="card text-center  opacity col-lg-6">
                    <form class="m-1">
                        <div class="form-row justify-content-center text-left">

                            <div class="form-group col-md-3">
                                <label for="inputEmail4">
                                    <h6>Kierunek/Hotel</h6>
                                </label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-map-marker"></i></span>
                                        </span>
                                    </div>
                                    <input type="email" class="form-control" id="inputEmail4" placeholder="Dowolnie" />
                                </div>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputPassword4">
                                    <h6>Wyjazd od</h6>
                                </label>
                                <div class="input-group date" id="startdate">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-calendar"></i></span>
                                        </span>
                                    </div>
                                    <input type="date" class="form-control datetimepicker" placeholder="27/03/2019" />
                                </div>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputEmail4">
                                    <h6>Powrót do</h6>
                                </label>
                                <div class="input-group date" id="backdate">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control datetimepicker" />
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="inputPassword4">
                                    <h6>Wyjazd z</h6>
                                </label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-plane"></i></span>
                                        </span>
                                    </div>
                                    <input type="email" class="form-control" id="inputEmail4" placeholder="Dowolnie" />
                                </div>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputPassword4">
                                    <h6>Uczestnicy</h6>
                                </label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                        </span>
                                    </div>
                                    <input type="email" class="form-control" id="inputEmail4" placeholder="1 dorosły" />
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Szukaj</button>
                        </div>
                    </form>
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
                                    <input type="number" class="form-control" id="inputAdultPrice" min="2" max="28">
                                </div>

                                <div style="width: 110px">
                                    <input type="number" class="form-control" id="inputAdultPrice" min="2" max="28">
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
                                <input class="form-check-input" type="checkbox" value=""> HB - śniadania i objadokolacje
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
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1"> Dowolny
                                <span class="form-check-sign"></span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                <input class="form-check-input" type="radio" name="exampleRadios" id="twoStar" value="option2">
                                <span class="form-check-sign"></span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i>
                                <input class="form-check-input" type="radio" name="exampleRadios" id="twoStar" value="option2">
                                <span class="form-check-sign"> (i więcej)</span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                <input class="form-check-input" type="radio" name="exampleRadios" id="twoStar" value="option2">
                                <span class="form-check-sign"> (i więcej)</span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                                <input class="form-check-input" type="radio" name="exampleRadios" id="twoStar" value="option2">
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
                                    <input type="number" class="form-control" id="inputAdultPrice" min="0">
                                </div>

                                <div style="width: 110px">
                                    <input type="number" class="form-control" id="inputAdultPrice" min="0">
                                </div>
                            </div>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="twoStar" value="option2">
                                <span class="form-check-sign">Cena za osobę</span>
                            </label>
                        </div>
                        <div class="form-check-radio">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="twoStar" value="option2">
                                <span class="form-check-sign">Cena za wszystkich</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <a href="#" class="row rounded-right border" style="margin-bottom: 25px;">
                        <div class="col-lg-4" style="padding: 0;">
                            <img src="https://i.wakacje.pl/no-index/hotel/polska/lenart-obiekt-budynek-glowny-828628360-295-267.jpg" class="img-rounded img-no-padding img-responsive">
                        </div>
                        <div class="col-lg-5" style="color: black">
                            <p class="pt-1" style="font-size: 12px;">
                                Kraj/Miejscowość
                            </p>
                            <p style="font-size: 24px; font-weight: 800; margin-bottom: 0;">
                                <b>Nazwa Hotelu</b>
                            </p>
                            <span style="color: #FFCC00; font-size: 20px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
                            <p style="font-size: 16px; padding-top: 15px">
                                <i class="fa fa-calendar"></i>
                                Data od - do
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-clock-o"></i>
                                Ile czasu
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-plane"></i>
                                Wylot z
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-cutlery" aria-hidden="true"></i>
                                Wyżywienie
                            </p>
                        </div>
                        <div class=" col-lg-3 border-left">
                            <div>
                                <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px; text-align: right">Cena</h6>
                                <p style="color: black; font-size: 12px; text-align: right">za osobę</p>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="row rounded-right border" style="margin-bottom: 25px;">
                        <div class="col-lg-4" style="padding: 0;">
                            <img src="https://i.wakacje.pl/no-index/hotel/polska/lenart-obiekt-budynek-glowny-828628360-295-267.jpg" class="img-rounded img-no-padding img-responsive">
                        </div>
                        <div class="col-lg-5" style="color: black">
                            <p class="pt-1" style="font-size: 12px;">
                                Kraj/Miejscowość
                            </p>
                            <p style="font-size: 24px; font-weight: 800; margin-bottom: 0;">
                                <b>Nazwa Hotelu</b>
                            </p>
                            <span style="color: #FFCC00; font-size: 20px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
                            <p style="font-size: 16px; padding-top: 15px">
                                <i class="fa fa-calendar"></i>
                                Data od - do
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-clock-o"></i>
                                Ile czasu
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-plane"></i>
                                Wylot z
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-cutlery" aria-hidden="true"></i>
                                Wyżywienie
                            </p>
                        </div>
                        <div class=" col-lg-3 border-left">
                            <div>
                                <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px; text-align: right">Cena</h6>
                                <p style="color: black; font-size: 12px; text-align: right">za osobę</p>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="row rounded-right border" style="margin-bottom: 25px;">
                        <div class="col-lg-4" style="padding: 0;">
                            <img src="https://i.wakacje.pl/no-index/hotel/polska/lenart-obiekt-budynek-glowny-828628360-295-267.jpg" class="img-rounded img-no-padding img-responsive">
                        </div>
                        <div class="col-lg-5" style="color: black">
                            <p class="pt-1" style="font-size: 12px;">
                                Kraj/Miejscowość
                            </p>
                            <p style="font-size: 24px; font-weight: 800; margin-bottom: 0;">
                                <b>Nazwa Hotelu</b>
                            </p>
                            <span style="color: #FFCC00; font-size: 20px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
                            <p style="font-size: 16px; padding-top: 15px">
                                <i class="fa fa-calendar"></i>
                                Data od - do
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-clock-o"></i>
                                Ile czasu
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-plane"></i>
                                Wylot z
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-cutlery" aria-hidden="true"></i>
                                Wyżywienie
                            </p>
                        </div>
                        <div class=" col-lg-3 border-left">
                            <div>
                                <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px; text-align: right">Cena</h6>
                                <p style="color: black; font-size: 12px; text-align: right">za osobę</p>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="row rounded-right border" style="margin-bottom: 25px;">
                        <div class="col-lg-4" style="padding: 0;">
                            <img src="https://i.wakacje.pl/no-index/hotel/polska/lenart-obiekt-budynek-glowny-828628360-295-267.jpg" class="img-rounded img-no-padding img-responsive">
                        </div>
                        <div class="col-lg-5" style="color: black">
                            <p class="pt-1" style="font-size: 12px;">
                                Kraj/Miejscowość
                            </p>
                            <p style="font-size: 24px; font-weight: 800; margin-bottom: 0;">
                                <b>Nazwa Hotelu</b>
                            </p>
                            <span style="color: #FFCC00; font-size: 20px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
                            <p style="font-size: 16px; padding-top: 15px">
                                <i class="fa fa-calendar"></i>
                                Data od - do
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-clock-o"></i>
                                Ile czasu
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-plane"></i>
                                Wylot z
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-cutlery" aria-hidden="true"></i>
                                Wyżywienie
                            </p>
                        </div>
                        <div class=" col-lg-3 border-left">
                            <div>
                                <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px; text-align: right">Cena</h6>
                                <p style="color: black; font-size: 12px; text-align: right">za osobę</p>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="row rounded-right border" style="margin-bottom: 25px;">
                        <div class="col-lg-4" style="padding: 0;">
                            <img src="https://i.wakacje.pl/no-index/hotel/polska/lenart-obiekt-budynek-glowny-828628360-295-267.jpg" class="img-rounded img-no-padding img-responsive">
                        </div>
                        <div class="col-lg-5" style="color: black">
                            <p class="pt-1" style="font-size: 12px;">
                                Kraj/Miejscowość
                            </p>
                            <p style="font-size: 24px; font-weight: 800; margin-bottom: 0;">
                                <b>Nazwa Hotelu</b>
                            </p>
                            <span style="color: #FFCC00; font-size: 20px;"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
                            <p style="font-size: 16px; padding-top: 15px">
                                <i class="fa fa-calendar"></i>
                                Data od - do
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-clock-o"></i>
                                Ile czasu
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-plane"></i>
                                Wylot z
                            </p>
                            <p style="font-size: 16px;">
                               <i class="fa fa-cutlery" aria-hidden="true"></i>
                                Wyżywienie
                            </p>
                        </div>
                        <div class=" col-lg-3 border-left">
                            <div>
                                <h6 style="color: black; font-size: 22px; padding-bottom: 0px; margin-bottom: 0px; text-align: right">Cena</h6>
                                <p style="color: black; font-size: 12px; text-align: right">za osobę</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <%@include file="dynamic/footer.jspf"%>
    <%@include file="dynamic/js.jspf"%>
</body></html>
