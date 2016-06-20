<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AirTrips</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">

        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="navbar-fixed-top.css" rel="stylesheet">

        <!-- Custom menu style -->
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet">

    </head>

    <body>
        <!-- Fixed navbar -->


        <div id="navbarFloater">    
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">AirTrips</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="redirect.htm?page=index">Página Inicial</a></li>
                            <li><a href="redirect.htm?page=about">Sobre nós</a></li>
                            <li><a href="redirect.htm?page=contact">Fale Conosco</a></li>
                            <!-- Dropdown
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Nav header</li>
                                    <li><a href="#">Separated link</a></li>
                                    <li><a href="#">One more separated link</a></li>
                            -->


                            </nav>
                    </div>
                    <!-- end of navbar -->

                    <!-- 
                    <form>
                    <input type="text" class="form-control" placeholder="Origem" aria-describedby="sizing-addon1">
                    <br>
                    <input type="text" class="form-control" placeholder="Destino" aria-describedby="sizing-addon1">
                    
                    <button type="button" class="btn btn-default btn-lg">
                    <span class="glyphicon glyphicon-plane" aria-hidden="true"></span> Procurar
                    </button>
                    </form>-->

                    <div class="row">
                        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                            <form id="form1" role="form">             
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <!--<br>Origem<br>-->
                                        <select id="origem" name="origem" class="form-control input-lg" placeholder="Origem" required>
                                            <option value="" disabled selected hidden>Origem</caption>
                                            <option value=1>Bogotá</option>
                                            <option value=7>Brasília</option>
                                            <option value=5>Buenos Aires</option>
                                            <option value=9>Caracas</option>
                                            <option value=10>La Pas</option>
                                            <option value=3>Lima</option>
                                            <option value=2>Quito</option>
                                            <option value=6>Rio de Janeiro</option>
                                            <option value=4>Santiago</option>
                                            <option value=8>São Paulo</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <!--<br>Destino<br>-->
                                            <select id="destino" name="destino" class="form-control input-lg" placeholder="Destino" required>
                                                <option value="" disabled selected hidden>Destino</option>
                                                <option value=1>Bogotá</option>
                                                <option value=7>Brasília</option>
                                                <option value=5>Buenos Aires</option>
                                                <option value=9>Caracas</option>
                                                <option value=10>La Pas</option>
                                                <option value=3>Lima</option>
                                                <option value=2>Quito</option>
                                                <option value=6>Rio de Janeiro</option>
                                                <option value=4>Santiago</option>
                                                <option value=8>São Paulo</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <button type="button" class="btn btn-default btn-lg">
                                    <span class="glyphicon glyphicon-plane" aria-hidden="true"></span> Procurar
                                </button>
                            </form>
                        </div>
                    </div>



                    <!-- Bootstrap core JavaScript
                       ================================================== -->
                    <!-- Placed at the end of the document so the pages load faster -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
                    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

                    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
                    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
                    </body>
                    </html>
