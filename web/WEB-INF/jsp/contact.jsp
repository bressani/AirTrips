<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AirTrip</title>

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
                    <li class="active"><a href="redirect.htm?page=index">Página Inicial</a></li>
                    <li><a href="redirect.htm?page=about">Sobre nós</a></li>
                    <li><a href="redirect.htm?page=contact">Fale Conosco</a></li>
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
                        </ul>
                    </li>
                </ul>

                <!-- Sign in Sign On -->
                <div id="signin"></div>
                <!-- end of sign in sign on -->

            </div><!--/.nav-collapse -->
        </div>
    </nav>

    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form id="form1" role="form" data-toggle="validator">
                <h2>Por favor, preencha este formulário com seus dados para que um dos nossos funcionários
                    entre em contato com você.</h2>
                <hr class="colorgraph">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="Nome" tabindex="1" required>
                            <!-- No campo Nome foi colocado apenas um atributo required. Isso é padrão do HTML5 e a lib
                            usa automaticamente para formatar o visual de erro.-->
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Sobrenome" tabindex="2" required>
                            <!-- No campo Nome foi colocado apenas um atributo required. Isso é padrão do HTML5 e a lib
                           usa automaticamente para formatar o visual de erro.-->
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <input type="text" name="telefone" id="telefone"  class="form-control input-lg" placeholder="(11)1111-1111" tabindex="3" data-error="Por favor, informe um telefone." required 
                           onKeyPress="MascaraTelefone(this, '## ####-####')" maxlength="12"> 


                    <!-- No campo Nome foi colocado apenas um atributo required. Isso é padrão do HTML5 e a lib
                           usa automaticamente para formatar o visual de erro.-->
                </div>
                <div class="form-group">
                    <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Digite seu email..." tabindex="4" data-error="Por favor, informe um endereço de email." required>
                </div>
                <div class="form-group">
                    <input type="text" name="Assunto" id="assunto" class="form-control input-lg" placeholder="assunto" tabindex="4">
                </div>
                <div class="form-group">
                    <textarea type="text" name="Mensagem" id="mensagem" class="form-control input-lg" placeholder="Digite sua mensagem..." tabindex="4"></textarea>
                </div>
                <div class="row">                            
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <div class="col-xs-12 col-md-6">
                                <input type="submit" value="Enviar" class="btn btn-primary btn-block btn-lg" tabindex="7">
                            </div>
                        </div>
                    </div>

                </div>

                <h2>
                    Atenciosamente,<br>
                    <small>Equipe AirTrips</small></h2>
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
