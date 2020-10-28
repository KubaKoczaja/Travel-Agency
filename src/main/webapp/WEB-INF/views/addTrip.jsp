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

        <div class="container-fluid mt-4">
            <center>
                <div class="card col-lg-10">
                    <div class="card-header text-danger">
                        <h3>Dodaj Wycieczkę</h3>
                    </div>
                    <div class="card-body">
                        <form>

                            <div class="row">
                                <label class="col-sm-2 col-form-label">Odlot z</label>
                                <div class="form-group col-md-2">
                                    <select id="inputCityFrom" class="form-control">
                                        <option selected>Wybierz miasto</option>
                                        <option>...</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <select id="inputAirportFrom" class="form-control">
                                        <option selected>Wybierz lotnisko</option>
                                        <option>...</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <label class="col-sm-2 col-form-label">Podróż do</label>
                                <div class="form-group col-md-2">
                                    <select id="inputCityTo" class="form-control">
                                        <option selected>Wybierz miasto</option>
                                        <option>...</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <select id="inputAirportTo" class="form-control">
                                        <option selected>Wybierz lotnisko</option>
                                        <option>...</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <select id="inputHotel" class="form-control">
                                        <option selected>Wybierz hotel</option>
                                        <option>...</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="inputNumberOfDays" class="col-sm-2 col-form-label">Ilość dni</label>
                                <div class="col-sm-2">
                                    <input type="number" class="form-control" id="inputNumberOfDays"
                                           placeholder="Ilość dni">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="inputStartDate" class="col-sm-2 col-form-label">Start</label>
                                <div class="col-sm-2">
                                    <input type="date" min="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/>" class="form-control" id="inputStartDate" placeholder="">
                                </div>
                                <label for="inputEndDate" class="col-sm-2 col-form-label">Koniec</label>
                                <div class="col-sm-2">
                                    <input type="date" class="form-control" id="inputEndDate" placeholder="">
                                </div>
                            </div>

                            <fieldset class="form-group">
                                <div class="row">
                                    <label class="col-sm-2 col-form-label pt-0">Typ wyżywienia</label>
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
                                                <input class="form-check-input" type="checkbox" value="1"> AI
                                                <span class="form-check-sign"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                            <div class="form-group row">
                                <label for="inputAdultPrice" class="col-sm-2 col-form-label">Cena</label>
                                <div class="col-sm-2">
                                    <input type="number" class="form-control" id="inputAdultPrice" min="0"
                                           placeholder="Osoba dorosła">
                                </div>
                                <div class="col-sm-2">
                                    <input type="number" class="form-control" id="inputChildPrice" min="0"
                                           placeholder="Dziecko">
                                </div>
                            </div>

                            <!-- boolean czy promowane dodać -->
                            <fieldset>
                                <div class="row pb-1">
                                    <label class="col-sm-2 col-form-label pt-0">Czy jest promowana?</label>
                                    <div class="form">
                                        <div class="col-sm-12">
                                            <div class="form-check-radio form-check-inline">
                                                <label class="form-check-label">Tak
                                                    <input class="form-check-input" type="radio" name="exampleRadios"
                                                           id="promoted"
                                                           value="1">
                                                    <span class="form-check-sign"></span>
                                                </label>
                                            </div>
                                            <div class="form-check-radio form-check-inline">
                                                <label class="form-check-label">Nie
                                                    <input class="form-check-input" type="radio" name="exampleRadios"
                                                           id="notPromoted"
                                                           value="0">
                                                    <span class="form-check-sign"></span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                            <div class="form-group row">
                                <label for="inputNumberOfAdults" class="col-sm-2 col-form-label">Ilość miejść</label>
                                <div class="col-sm-2">
                                    <input type="number" class="form-control" id="inputNumberOfAdults" min="0"
                                           placeholder="Dla dorosłych">
                                </div>
                                <div class="col-sm-2">
                                    <input type="number" class="form-control" id="inputNumberOfChildren" min="0"
                                           placeholder="Dla dzieci">
                                </div>
                            </div>

                            <div class="form-group row">
                                <button type="submit" class="btn btn-danger btn-lg btn-block">Dodaj ofertę wycieczki
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </center>
        </div>

</div>
<%@include file="dynamic/js.jspf" %>
</body>

</html>