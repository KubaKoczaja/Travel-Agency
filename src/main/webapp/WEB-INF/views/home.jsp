<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/css.jspf"%>

<body class="index-page sidebar-collapse">
    <!-- Navbar -->
    <%@include file="./dynamic/navigation.jspf"%>
    <!-- End Navbar -->
    <div class="page-header section-dark" style="background-image: url('<c:url value="/resources/img/antoine-barres.jpg"/>')">
        <div class="container-fluid">
            <div class="content-center">
                <center>
                    <div class="card text-center opacity col-lg-7">
                        <form class="m-4 ">
                            <div class="form-row justify-content-center text-left">

                                <div class="form-group col-md-3">
                                    <label for="hotel">
                                        <h6>Kierunek/Hotel</h6>
                                    </label>
                                    <div class="input-group">
                                    <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i class="fa fa-map-marker"></i></span>
                                            </span>
                                        </div>
                                    <input type="email" class="form-control" id="hotel" placeholder="Dowolnie" />
                                    </div>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="startDate">
                                        <h6>Wyjazd od</h6>
                                    </label>
                                    <div class="input-group date" id="startDate">
                                       <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i class="fa fa-calendar"></i></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control datetimepicker" placeholder="27/03/2019" />
                                    </div>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="backDate">
                                        <h6>Powrót do</h6>
                                    </label>
                                    <div class="input-group date" id="backDate">
                                       <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                            </span>
                                        </div>
                                        <input type="text" class="form-control datetimepicker" />
                                    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="startFrom">
                                        <h6>Wyjazd z</h6>
                                    </label>
                                    <div class="input-group">
                                    <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i class="fa fa-plane"></i></span>
                                            </span>
                                        </div>
                                    <input type="email" class="form-control" id="startFrom" placeholder="Dowolnie" />
                                    </div>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="member">
                                        <h6>Uczestnicy</h6>
                                    </label>
                                    <div class="input-group">
                                    <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <span class="glyphicon glyphicon-calendar"><i class="fa fa-user"></i></span>
                                            </span>
                                        </div>
                                    <input type="email" class="form-control" id="member" placeholder="1 dorosły" />
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Szukaj</button>
                            </div>
                        </form>
                    </div>
                </center>
                <div class="fog-low">
                    <img src='<c:url value="/resources/img/fog-low.png"/>' alt="">
                </div>
                <div class="fog-low right">
                    <img src='<c:url value="/resources/img/fog-low.png"/>' alt="">
                </div>
                <h2 class="presentation-subtitle text-center">Wybierz swój wymarzony cel podróży! </h2>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="container">
            <h2>
                Proponowane wycieczki
            </h2>
            <div class="mt-3 pt-o" id="carousel">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 ml-auto mr-auto">
                            <div class="card page-carousel">
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner" role="listbox">
                                        <div class="carousel-item active">
                                            <img class="d-block img-fluid" src="./assets/img/soroush-karimi.jpg" alt="First slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Somewhere</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block img-fluid" src="./assets/img/federico-beccari.jpg" alt="Second slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Somewhere else</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block img-fluid" src="./assets/img/joshua-stannard.jpg" alt="Third slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Here it is</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="left carousel-control carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="fa fa-angle-left"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="fa fa-angle-right"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h2>
                Najczęściej wybierane
            </h2>
            <div class="mt-3 pt-o" id="carousel2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 ml-auto mr-auto">
                            <div class="card page-carousel">
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner" role="listbox">
                                        <div class="carousel-item active">
                                            <img class="d-block img-fluid" src="./assets/img/soroush-karimi.jpg" alt="First slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Somewhere</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block img-fluid" src="./assets/img/federico-beccari.jpg" alt="Second slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Somewhere else</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block img-fluid" src="./assets/img/joshua-stannard.jpg" alt="Third slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Here it is</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="left carousel-control carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="fa fa-angle-left"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="fa fa-angle-right"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h2>
                Losowe
            </h2>
            <div class="mt-3 pt-o" id="carousel3">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 ml-auto mr-auto">
                            <div class="card page-carousel">
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner" role="listbox">
                                        <div class="carousel-item active">
                                            <img class="d-block img-fluid" src="./assets/img/soroush-karimi.jpg" alt="First slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Somewhere</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block img-fluid" src="./assets/img/federico-beccari.jpg" alt="Second slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Somewhere else</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block img-fluid" src="./assets/img/joshua-stannard.jpg" alt="Third slide">
                                            <div class="carousel-caption d-none d-md-block">
                                                <p>Here it is</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="left carousel-control carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="fa fa-angle-left"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="fa fa-angle-right"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="dynamic/footer.jspf"%>
    <%@include file="dynamic/js.jspf"%>
</body></html>
