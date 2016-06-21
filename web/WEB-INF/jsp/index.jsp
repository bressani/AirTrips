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

                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="redirect.htm?page=cart" class="button"> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 2 Itens
                                    </a>
                                </li>
                            </ul>
                            
                            <!--  ====================================== 
                                ======================Sign in Sign On ===== -->
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="redirect.htm?page=signup" onclick="">Cadastre-se</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Entrar 
                                            <img src="${pageContext.request.contextPath}/resources/images/menu/logIn.png" alt="login" width="10px" height="10px">
                                        </a>
                                        <ul id="signInOutDropdown" class="dropdown-menu" >
                                            <li>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                                            <div class="form-group">
                                                                <label class="sr-only" for="exampleInputEmail2">Endereço de e-mail</label>
                                                                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Endereço de e-mail" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="sr-only" for="exampleInputPassword2">Senha</label>
                                                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Senha" required>
                                                            </div>
                                                            <div class="checkbox">
                                                                <label>
                                                                    <input type="checkbox"> Lembrar Senha
                                                                </label>
                                                            </div>
                                                            <div class="form-group">
                                                                <button type="submit" class="btn btn-success btn-block">Entrar</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </li>

                                        </ul>
                                    </li>
                                </ul>
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
                            <form  action="${pageContext.request.contextPath}/redirect.htm?page=ponte-result" method="post"  role="form">  
                                <input type="hidden" name="acao" value="calcula" >
                                <input type="hidden" name="classe" value="PonteAerea" >   
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <!--<br>Origem<br>-->
                                        <select id="origem" name="origem" class="form-control input-lg" placeholder="Origem" required>
                                            <option value="" disabled selected hidden>Origem</caption>

                                                <!-- NÃO ALTERAR OS VALORES
                                                    00-Bogotá 
                                                   01-Quito
                                                   02-Lima
                                                   03-Santiago
                                                   04-Buenos Aires
                                                   05-Rio de Janeiro
                                                   06-Brasilia 
                                                   07-São Paulo
                                                   08-Caracas
                                                   09-La Paz                                              
                                                
                                                -->
                                                <option value=0>Bogotá</option>
                                                <option value=6>Brasília</option>
                                                <option value=4>Buenos Aires</option>
                                                <option value=8>Caracas</option>
                                                <option value=9>La Paz</option>
                                                <option value=2>Lima</option>
                                                <option value=1>Quito</option>
                                                <option value=5>Rio de Janeiro</option>
                                                <option value=3>Santiago</option>
                                                <option value=7>São Paulo</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <!--<br>Destino<br>-->
                                            <select id="destino" name="destino" class="form-control input-lg" placeholder="Destino" required>
                                                <option value="" disabled selected hidden>Destino</option>
                                                <option value=0>Bogotá</option>
                                                <option value=6>Brasília</option>
                                                <option value=4>Buenos Aires</option>
                                                <option value=8>Caracas</option>
                                                <option value=9>La Paz</option>
                                                <option value=2>Lima</option>
                                                <option value=1>Quito</option>
                                                <option value=5>Rio de Janeiro</option>
                                                <option value=3>Santiago</option>
                                                <option value=7>São Paulo</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <button type="submit" class="btn btn-default btn-lg">
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
