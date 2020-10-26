<!--
=========================================================
 Paper Kit 2 - v2.2.0
=========================================================

 Product Page: https://www.creative-tim.com/product/paper-kit-2
 Copyright 2019 Creative Tim (https://www.creative-tim.com)
 Licensed under MIT (https://github.com/creativetimofficial/paper-kit-2/blob/master/LICENSE.md)

 Coded by Creative Tim

=========================================================

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img//apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img//favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>
        Paper Kit by Creative Tim
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
          name='viewport'/>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../assets/css/paper-kit.css?v=2.2.0" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/demo/demo.css" rel="stylesheet"/>
    <!-- Control Center for Paper Kit: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/paper-kit.js?v=2.2.0" type="text/javascript"></script>

    <style>
        /* Chrome, Safari, Edge, Opera */
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        input[type=number] {
            -moz-appearance: textfield;
        }
    </style>
</head>

<body class="landing-page sidebar-collapse">
<!-- Navbar -->
<%@include file="./dynamic/navigation.jspf"%>
<!-- End Navbar -->
<div class="page-header" style="background-image: url('../assets/img/daniel-olahh.jpg');">
    <div class="filter"></div>
    <div class="container-fluid ">
        <center>
            <div class="card col-lg-10">
                <div class="card-header text-danger">
                    <h3>Dodaj Hotel</h3>
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group row">
                            <label for="inputHotelName" class="col-sm-2 col-form-label">Nazwa hotelu</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="inputHotelName" placeholder="Nazwa hotelu">
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
                                <select id="inputCity" class="form-control">
                                    <option selected>Wybierz miasto</option>
                                    <option>...</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputDescription" class="col-sm-2 col-form-label">Opis hotelu</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" id="inputDescription" rows="3"
                                          placeholder="Opis hotelu"></textarea>
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
                                                <input class="form-check-input" type="radio" name="exampleRadios"
                                                       id="oneStar" value="option1">
                                                <span class="form-check-sign"></span>
                                            </label>
                                        </div>
                                        <div class="form-check-radio form-check-inline">
                                            <label class="form-check-label">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                    class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i
                                                    class="fa fa-star-o"></i>
                                                <input class="form-check-input" type="radio" name="exampleRadios"
                                                       id="twoStar" value="option2">
                                                <span class="form-check-sign"></span>
                                            </label>
                                        </div>
                                        <div class="form-check-radio form-check-inline">
                                            <label class="form-check-label">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                    class="fa fa-star"></i><i class="fa fa-star-o"></i><i
                                                    class="fa fa-star-o"></i>
                                                <input class="form-check-input" type="radio" name="exampleRadios"
                                                       id="threeStar" value="option3">
                                                <span class="form-check-sign"></span>
                                            </label>
                                        </div>
                                        <div class="form-check-radio form-check-inline">
                                            <label class="form-check-label">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                    class="fa fa-star-o"></i>
                                                <input class="form-check-input" type="radio" name="exampleRadios"
                                                       id="fourStar" value="option4">
                                                <span class="form-check-sign"></span>
                                            </label>
                                        </div>
                                        <div class="form-check-radio form-check-inline">
                                            <label class="form-check-label">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                    class="fa fa-star"></i>
                                                <input class="form-check-input" type="radio" name="exampleRadios"
                                                       id="fiveStar" value="option5">
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
                                <label for="inputDescription" class="col-sm-2 col-form-label">Dodaj zdjecie</label>
                                <form class="was-validated col-sm-4">
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="validatedCustomFile" required>
                                        <label class="custom-file-label" for="validatedCustomFile">Wybierz
                                            plik...</label>
                                    </div>
                                </form>
                            </div>
                        </fieldset>
                        <div class="form-group row">
                            <button type="button" class="btn btn-danger btn-lg btn-block">Dodaj Hotel</button>
                        </div>
                    </form>
                </div>
            </div>
        </center>
    </div>
</div>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="../assets/js/plugins/moment.min.js"></script>
<script src="../assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Paper Kit: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/paper-kit.js?v=2.2.0" type="text/javascript"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
</body>

</html>
