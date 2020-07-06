<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioCadastro.aspx.cs" Inherits="StudioWebSite.Adm.FormularioCadastro" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Orestes Tattoo </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="Principal.aspx" class="site_title">
                            <img src="imagens/caveira.png" style="width: 40px; height: 40px;" />
                            <span>&nbsp; Orestes Tattoo</span></a>
                    </div>

                    <div class="clearfix"></div>

                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                        <div class="profile_pic">
                            <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                        </div>
                         <div class="profile_info">
                            <span>Bem vindo,</span><br />
                            <asp:Label ID="lblBemVindo" runat="server" Text="" style="color:white; font-size:12px;"></asp:Label>
                        </div>
                    </div>
                    <!-- /menu profile quick info -->

                    <br />

                    <!-- #include file="MenuLateral.html -->
                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <nav>
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">

                    <div class="clearfix"></div>
                    <div class="row">
                        <%--Cadastro cliente--%>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadCliente" style="display:none" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Cadastro Cliente</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                                Nome completo <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="nomeCompletoCliente" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <%--<div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">CPF</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="cpfCliente" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Telefone</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="telefoneCliente" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                                Endereço <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="endercoCliente" name="endereco" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Bairro</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="bairroCliente" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">CEP</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="cepCliente" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div id="SexoGCliente" class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="sexoCliente" value="M">
                                                        &nbsp; Masculino &nbsp;
                           
                                                    </label>
                                                    <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="sexoCliente" value="F">
                                                        Feminino
                           
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                                Data de Nascimento <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="datanascimentoCliente" class="date-picker form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Foto</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="fotoCliente" class="form-control col-md-7 col-xs-12 " type="file">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Observações do cliente</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--<input id="infcliente" class="form-control col-md-7 col-xs-12" type="text" name="bairro">--%>
                                                <%--<textarea id="infoCliente" class="form-control" name="message"
                                                    data-parsley-trigger="keyup"
                                                    data-parsley-minlength="20"
                                                    data-parsley-maxlength="100"
                                                    data-parsley-minlength-message="Come on! You need to enter at least a 20 caracters long comment.."
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>--%>
                                        <%--<div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Observações gerais</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea id="infoGeral" class="form-control" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 caracters long comment.."
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>--%>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <button class="btn btn-primary" type="button">Cancelar</button>
                                                <button class="btn btn-primary" type="reset">Limpar</button>
                                                <button type="submit" class="btn btn-success" onclick="GravarCliente();">Gravar</button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        <%--Cadastro usuario--%>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadUsuario" style="display:none" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Cadastro Usuário</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="cadUsuario" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                                Nome completo <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12"> <%--required="required"--%>
                                                <input type="text" id="txtnomeCompleto"  class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">CPF</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtCpfUser" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                                Login <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="txtLogin" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Senha</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtsenha" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">ConfirmarSenha</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtConfSenha" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div id="sexoUserGroup" class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="gender" value="M">
                                                        &nbsp; Masculino &nbsp;
                           
                                                    </label>
                                                    <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="gender" value="F">
                                                        Feminino
                           
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <%--<div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Foto</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="fotouser" class="form-control col-md-7 col-xs-12 " type="file">
                                            </div>
                                        </div>--%>

                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <button class="btn btn-primary" type="button">Cancelar</button>
                                                <button class="btn btn-primary" type="reset">Limpar</button>
                                                <button class="btn btn-success" type="submit" onClick="GravaUsuario();">Gravar</button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /page content -->

            <!-- footer content -->
            <footer>
                <div class="pull-right">
                
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="../vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="../vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="../vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="../vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

    <script>
        function GravaUsuario() {
            var nomecompleto = $('#txtnomeCompleto').val();
            var CPFUser = $('#txtCpfUser').val();
            var Login = $('#txtLogin').val();
            var PWD = $('#txtsenha').val();
            var ConfPWD = $('#txtConfSenha').val();
            //var Sexo = $('#gender').val();
            var Sexo = $("input[name='gender']:checked").val()

            var obj = new Object();
            obj.nomeCompleto = nomecompleto;
            obj.cpf = CPFUser;
            obj.login = Login;
            obj.senha = PWD;
            obj.confsenha = ConfPWD;
            obj.sexo = Sexo;

            var parametros = JSON.stringify(obj);

            $.ajax({
                type: "POST",
                url: "FormularioCadastro.aspx/GravaUser",
                contentType: "application/json; charset=utf-8",
                data: parametros,
                dataType: "json",
                success: function(resposta){
                    alert("Usuario gravado com sucesso!");
                },
                failure: function(erro){
                    alert("Ocorreu um erro!");
                }
            });
        }
    </script>

</body>
</html>

