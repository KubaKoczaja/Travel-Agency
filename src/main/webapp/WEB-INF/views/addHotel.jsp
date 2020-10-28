<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf" %>

<body class="landing-page sidebar-collapse">
<!-- Navbar -->
<%@include file="./dynamic/navigation.jspf" %>
<!-- End Navbar -->

<div class="page-header" style="background-image: url('<c:url value="/resources/img/daniel-olahh.jpg"/>')">

        <div class="container-fluid ">
            <center>
                <form name="send" method="post" action='<c:url value="/addHotel"/>'>
                    <div class="card col-lg-10">
                        <div class="card-header text-danger">
                            <h3>Dodaj Hotel</h3>
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="form-group row">
                                    <label for="inputHotelName" class="col-sm-2 col-form-label">Nazwa hotelu</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputHotelName" name="hotelName"
                                               placeholder="Nazwa hotelu">
                                    </div>
                                </div>
                                <div class="row">
                                    <label for="inputHotelName" class="col-sm-2 col-form-label">Miejsce</label>
                                    <div class="form-group col-md-2">
                                        <select id="inputCountry" class="form-control">
                                            <option selected>Wybierz kraj</option>
                                            <option>...</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <select id="inputCity" class="form-control" name="city.id">
                                            <option hidden>wybierz miasto</option>
                                            <c:forEach items="${cities}" var="city">
                                                <option value="${city.id}">${city.cityName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputDescription" class="col-sm-2 col-form-label">Opis hotelu</label>
                                    <div class="col-sm-9">
                                <textarea class="form-control" id="inputDescription" rows="3"
                                          placeholder="Opis hotelu" name="description"></textarea>
                                    </div>
                                </div>
                                <fieldset>
                                    <div class="row pb-1">
                                        <label for="inputDescription" class="col-sm-2 col-form-label pt-0">Liczba
                                            gwiazdek</label>
                                        <div class="form">
                                            <div class="col-sm-12">
                                                <div class="form-check-radio form-check-inline">
                                                    <label class="form-check-label">
                                                        <i class="fa fa-star"></i><i class="fa fa-star-o"></i><i
                                                            class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i
                                                            class="fa fa-star-o"></i>
                                                        <input class="form-check-input" type="radio" name="stars"
                                                               id="oneStar" value="1">
                                                        <span class="form-check-sign"></span>
                                                    </label>
                                                </div>
                                                <div class="form-check-radio form-check-inline">
                                                    <label class="form-check-label">
                                                        <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i
                                                            class="fa fa-star-o"></i>
                                                        <input class="form-check-input" type="radio" name="stars"
                                                               id="twoStar" value="2">
                                                        <span class="form-check-sign"></span>
                                                    </label>
                                                </div>
                                                <div class="form-check-radio form-check-inline">
                                                    <label class="form-check-label">
                                                        <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star-o"></i><i
                                                            class="fa fa-star-o"></i>
                                                        <input class="form-check-input" type="radio" name="stars"
                                                               id="threeStar" value="3">
                                                        <span class="form-check-sign"></span>
                                                    </label>
                                                </div>
                                                <div class="form-check-radio form-check-inline">
                                                    <label class="form-check-label">
                                                        <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star-o"></i>
                                                        <input class="form-check-input" type="radio" name="stars"
                                                               id="fourStar" value="4">
                                                        <span class="form-check-sign"></span>
                                                    </label>
                                                </div>
                                                <div class="form-check-radio form-check-inline">
                                                    <label class="form-check-label">
                                                        <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                            class="fa fa-star"></i>
                                                        <input class="form-check-input" type="radio" name="stars"
                                                               id="fiveStar" value="5">
                                                        <span class="form-check-sign"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="form-group row">
                                    <label for="inputHotelName" class="col-sm-2 col-form-label">Cena za osobę</label>
                                    <div class="col-sm-2">
                                        <input type="number" class="form-control" id="inputAdultPrice" min="0"
                                               placeholder="Osoba dorosła">
                                    </div>
                                    <div class="col-sm-2">
                                        <input type="number" class="form-control" id="inputChildPrice" min="0"
                                               placeholder="Dziecko">
                                    </div>
                                </div>
                                <fieldset class="form-group">
                                    <div class="row">
                                        <label for="inputDescription" class="col-sm-2 col-form-label pt-0">Typ
                                            wyżywienia</label>
                                        <div class="form-check">
                                            <div class="col-sm-12">
                                                <label class="form-check-label form-check-inline">
                                                    <input class="form-check-input" type="checkbox" value="1"> BB
                                                    <span class="form-check-sign"></span>
                                                </label>
                                                <label class="form-check-label form-check-inline">
                                                    <input class="form-check-input" type="checkbox" value="1"> HB
                                                    <span class="form-check-sign"></span>
                                                </label>
                                                <label class="form-check-label form-check-inline">
                                                    <input class="form-check-input" type="checkbox" value="1"> FB
                                                    <span class="form-check-sign"></span>
                                                </label>
                                                <label class="form-check-label form-check-inline">
                                                    <input class="form-check-input" type="checkbox" value="1"> Ai
                                                    <span class="form-check-sign"></span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset class="form-group">
                                    <div class="row">
                                        <label for="inputDescription" class="col-sm-2 col-form-label">Dodaj
                                            zdjecie</label>
                                        <form class="was-validated">
                                            <div class="custom-file col-sm-4">
                                                <input type="file" class="custom-file-input" id="validatedCustomFile">
                                                <label class="custom-file-label" for="validatedCustomFile">Wybierz
                                                    plik...</label>
                                            </div>
                                        </form>
                                    </div>
                                </fieldset>
                                <div class="form-group row">
                                    <button type="submit" class="btn btn-danger btn-lg btn-block">Dodaj Hotel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </form>
            </center>

    </div>
</div>
<%@include file="dynamic/js.jspf" %>
</body>

</html>
