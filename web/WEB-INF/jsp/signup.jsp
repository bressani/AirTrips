<%-- 
    Document   : cadastro
    Created on : 19/06/2016, 18:14:43
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">

        <title>AirTrips</title>

        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="${pageContext.request.contextPath}/resources/bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet">

        <!-- Custom menu style -->
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet">

    </head>

    <div id="navbarFloater">
    </div>

    <!-- start of signup
           ================================================== -->
    <div class="container">

        <div class="row">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                <form action="${pageContext.request.contextPath}/redirect.htm?page=signup-result" method="post" >
                    <h2>Cadastre-se <small>Airtrips.</small></h2>
                    <hr class="colorgraph">
                    <input type="hidden" name="acao" value="preenche" >
                    <input type="hidden" name="classe" value="User" >     
                    <div class="form-group">
                        <input type="text" name="nome" id="last_name" class="form-control input-lg" placeholder="Nome completo" tabindex="2">
                    </div>
                    <div class="form-group">
                        <input type="text" name="RG" id="display_name" class="form-control input-lg" placeholder="RG" tabindex="3">
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email" class="form-control input-lg" placeholder="Endereço de e-mail" tabindex="4">
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="cpf" id="cpf" class="form-control input-lg" placeholder="CPF" tabindex="5">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="data_nascimento" id="data_nascimento" class="form-control input-lg" placeholder="Nascido em AAAA-MM-DD" tabindex="6">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <input type="text" name="cidade" id="cidade" class="form-control input-lg" placeholder="Cidade" tabindex="7">
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="text" name="cep" id="cep" class="form-control input-lg" placeholder="CEP" tabindex="8">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-3 col-md-3">
                            <div class="form-group">
                                <select id="uf" name="uf" class="form-control input-lg" placeholder="UF" tabindex="9">
                                    <option value="">UF</option>
                                    <option value="AC">AC</option>
                                    <option value="AL">AL</option>
                                    <option value="AP">AP</option>
                                    <option value="AM">AM</option>
                                    <option value="BA">BA</option>
                                    <option value="CE">CE</option>
                                    <option value="DF">DF</option>
                                    <option value="ES">ES</option>
                                    <option value="GO">GO</option>
                                    <option value="MA">MA</option>
                                    <option value="MT">MT</option>
                                    <option value="MS">MS</option>
                                    <option value="MG">MG</option>
                                    <option value="PA">PA</option>
                                    <option value="PB">PB</option>
                                    <option value="PR">PR</option>
                                    <option value="PE">PE</option>
                                    <option value="PI">PI</option>
                                    <option value="RJ">RJ</option>
                                    <option value="RN">RN</option>
                                    <option value="RS">RS</option>
                                    <option value="RO">RO</option>
                                    <option value="RR">RR</option>
                                    <option value="SC">SC</option>
                                    <option value="SP">SP</option>
                                    <option value="SE">SE</option>
                                    <option value="TO">TO</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-6 col-sm-3 col-md-3">
                            <div class="form-group">
                                <input type="text" name="numero_endereco" id="numero_endereco" class="form-control input-lg" placeholder="No. | Lt." tabindex="10">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" name="endereco" id="endereco" class="form-control input-lg" placeholder="Endereco" tabindex="11">
                    </div>
                    <div class="form-group">
                        <input type="text" name="telefone_contato" id="telefone_contato" class="form-control input-lg" placeholder="Telefone" tabindex="12">
                    </div>
                    <div class="form-group">
                        <input type="text" name="celular" id="celular" class="form-control input-lg" placeholder="Celular" tabindex="13">
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Senha" tabindex="14">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="form-group">
                                <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirmação de senha" tabindex="14">
                            </div>
                        </div>
                    </div>
                    <!-- Multiple Radios -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="radios">Sexo</label>
                        <div class="col-md-4">
                            <div class="radio">
                                <label for="radios-0">
                                    <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
                                    Masculino
                                </label>
                            </div>
                            <div class="radio">
                                <label for="radios-1">
                                    <input type="radio" name="radios" id="radios-1" value="2">
                                    Feminino
                                </label>
                            </div>
                        </div>
                    </div>

                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-12 col-md-6"><input type="submit" value="Registrar" class="btn btn-primary btn-block btn-lg" tabindex="15"></div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myModalLabel"><h2>TERMS AND CONDITIONS</h2></h4>
                    </div>
                    <div class="modal-body">                            
                        <p>Welcome to the registration term of FooGames site and its related services. You may access many areas of our website without registering your details with us. Certain areas are only open to you if you register. This term apply to conditions which govern material submitted by you to us and your use of this website (including all branded microsites and any email bulletins) .</p>
                        <ul>
                            <li>
                                <span class="index">1.</span>
                                Registration
                                <ul>
                                    <li>
                                        <span class="index">1.1</span>
                                        By registering here and creating your profile, you can access different services that are offered by us without having to register for each service separately. If a service you wish to subscribe to has additional terms and conditions, you will be asked to accept these separately.
                                    </li>
                                    <li>
                                        <span class="index">1.2</span>
                                        You agree that:
                                        <ul>
                                            <li>
                                                <span class="index">(1)</span>
                                                you will keep your username and password safe, and won't share them with anyone.
                                            </li>
                                            <li>
                                                <span class="index">(2)</span>
                                                you will not pass yourself off as someone else or create multiple, false accounts.
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span class="index">2.</span>
                                Term
                                <ul>
                                    <li>
                                        <span class="index">2.1</span>
                                        If you breach these or any of our other terms and conditions we reserve the right to close your account, if we do so, we may close all accounts you have open in your name.
                                    </li>
                                    <li>
                                        <span class="index">2.2</span>
                                        To deactivate your account please contact our customer services department; their details can be found under "contact us" on our home page.
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span class="index">3.</span>
                                Administration
                                <ul>
                                    <li>
                                        <span class="index">3.1</span>
                                        You can update your personal details (including your account and marketing preferences) by accessing your account at your Profile page and making any necessary changes; this will update your details across all services that you have subscribed to.
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span class="index">4.</span>
                                Data
                                <ul>
                                    <li>
                                        <span class="index">4.1</span>
                                        You agree that all data by you submitted is licensed to use by Foogames and it's branches. 
                                        By using our site you agree with our cookies policy.
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span class="index">5.</span>
                                General
                                <ul>
                                    <li>
                                        <span class="index">5.1</span>
                                        No waiver by us of any breach of these terms shall constitute a waiver of any other prior or subsequent breach and we shall not be affected by any delay, failure or omission to enforce or express forbearance granted in respect of any of your obligations.
                                    </li>
                                    <li>
                                        <span class="index">5.2</span>
                                        The rights and remedies of is under these terms are independent, cumulative and without prejudice to its rights under the law.
                                    </li>
                                    <li>
                                        <span class="index">5.3</span>
                                        These terms are not intended to create and shall not create any rights, entitlements, claims or benefits enforceable by any third party by virtue of the Contracts (Rights of Third Parties) Act 1999.
                                    </li>
                                    <li>
                                        <span class="index">5.4</span>
                                        These terms and/or your use of the website shall be governed by and construed in accordance with English law and the English Courts shall have exclusive jurisdiction over any dispute which may arise.
                                    </li>
                                </ul>
                            </li>
                        </ul>  
                    </div>                       
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </div>
    <!-- End of signup
       ================================================== -->


    <!-- Bootstrap core JavaScript
       ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/bootstrap/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.contextPath}/resources/bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
    <!-- Script load menu -->
    <script src="${pageContext.request.contextPath}/resources/js/insertMenu.js" type="text/javascript"></script> 
    <!-- Signup data validation script-->
    <script src="${pageContext.request.contextPath}/resources/js/signup.js"></script>

</body>

</html>
