<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadProduto.aspx.cs" Inherits="StudioWebSite.Adm.FormCadProduto" %>

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
                        
                        <%--Cadastro Produto--%>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadProd" style="display:block" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Cadastro de produto na loja</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="cadProduot" data-parsley-validate class="form-horizontal form-label-left" runat="server">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                                Titulo 
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--required="required"--%>
                                                <input type="hidden" id="txtCodProd" runat="server">
                                                <input type="text" id="txtTitulo" class="form-control col-md-7 col-xs-12" runat="server">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Descrição</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea id="txtDescricao" name="obsCliente" class="form-control col-md-7 col-xs-12" type="text" runat="server"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                                Valor 
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="valor" class="form-control col-md-7 col-xs-12" runat="server" onkeyup="formatarMoeda();"/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                                Em estoque
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select id="lblEstoque" name="lblEstoque" class="form-control" required runat="server">
                                                    <option value="">Selecione</option>
                                                    <option value="Sim">Sim</option>
                                                    <option value="Não">Não</option>
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        

                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Foto</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--<input id="fotouser" class="form-control col-md-7 col-xs-12 " type="file" runat="server">--%>
                                                <asp:FileUpload ID="fotoProduto" class="form-control col-md-7 col-xs-12" runat="server"/>
                                            </div>
                                        </div>


                                        <div class="ln_solid"></div>
                                        <div class="form-group" id="divGravaProd" runat="server" style="display:none;">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <button class="btn btn-primary" type="button">Cancelar</button>
                                                <button class="btn btn-primary" type="reset">Limpar</button>
                                                <%--<button class="btn btn-success" type="submit" onclick="GravaUsuario();">Gravar</button>--%>
                                                <asp:Button ID="btnGravaProduto" runat="server" class="btn btn-success"  OnClick="btnGravaProduto_Click" Text="Gravar Produto" />
                                            </div>
                                        </div>
                                        <div class="form-group" id="divAltProd" runat="server" style="display:none;">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <button class="btn btn-primary" type="button">Cancelar</button>
                                                <button class="btn btn-primary" type="reset">Limpar</button>
                                                <%--<button class="btn btn-success" type="submit" onclick="GravaUsuario();">Gravar</button>--%>
                                                <asp:Button ID="bnAlteraProduto" runat="server" class="btn btn-success" onclick="bnAlteraProduto_Click" Text="Gravar Produto" />
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

            var cpf = document.getElementById('txtCpfUser').value;
            cpf = cpf.replace(/[^0-9]+/g, '');


            if (valida_cpf(cpf)) {
                var nomecompleto = $('#txtnomeCompleto').val();
                var CPFUser = $('#txtCpfUser').val();
                var Login = $('#txtLogin').val();
                var PWD = $('#txtsenha').val();
                var ConfPWD = $('#txtConfSenha').val();
                var Sexo = $("input[name='gender']:checked").val()
                var foto = $('#fotouser').val();
                var ativo = $("input[name='chkAtivo").val();

                //Valida Senha
                if (PWD != ConfPWD) {
                    alert("Os campos de senha, são diferentes");
                    $('txtConfSenha').focus();
                    return false;
                }


                var obj = new Object();
                obj.nomeCompleto = nomecompleto;
                obj.cpf = CPFUser;
                obj.login = Login;
                obj.senha = PWD;
                obj.confsenha = ConfPWD;
                obj.sexo = Sexo;
                obj.foto = foto;
                obj.ativo = ativo;

                var parametros = JSON.stringify(obj);

                $.ajax({
                    type: "POST",
                    url: "FormularioCadastro.aspx/GravaUser",
                    contentType: "application/json; charset=utf-8",
                    data: parametros,
                    dataType: "json",
                    success: function (resposta) {
                        alert("Usuario gravado com sucesso!");
                    },
                    failure: function (erro) {
                        alert("Ocorreu um erro!");
                    }
                });
            }else {
                alert("Por favor, digite um CPF válido!");
                document.getElementById('txtCpfUser').focus();
                return false;
            }
        }

        function fMasc(objeto, mascara) {
            obj = objeto
            masc = mascara
            setTimeout("fMascEx()", 1)
        }
        function fMascEx() {
            obj.value = masc(obj.value)
        }

        function mCPF(cpf) {
            cpf = cpf.replace(/\D/g, "")
            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
            cpf = cpf.replace(/(\d{3})(\d{1,2})$/, "$1-$2")
            return cpf
        }

        $('#radioBtn a').on('click', function () {
            var sel = $(this).data('title');
            var tog = $(this).data('toggle');
            $('#' + tog).prop('value', sel);

            $('a[data-toggle="' + tog + '"]').not('[data-title="' + sel + '"]').removeClass('active').addClass('notActive');
            $('a[data-toggle="' + tog + '"][data-title="' + sel + '"]').removeClass('notActive').addClass('active');
        })


        function valida_cpf(cpf) {
            var numeros, digitos, soma, i, resultado, digitos_iguais;
            digitos_iguais = 1;

            if (cpf.length < 11)
                return false;

            for (i = 0; i < cpf.length - 1; i++)
                if (cpf.charAt(i) != cpf.charAt(i + 1)) {
                    digitos_iguais = 0;
                    break;
                }
            if (!digitos_iguais) {
                numeros = cpf.substring(0, 9);
                digitos = cpf.substring(9);
                soma = 0;

                for (i = 10; i > 1; i--)
                    soma += numeros.charAt(10 - i) * i;
                resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;

                if (resultado != digitos.charAt(0))
                    return false;
                numeros = cpf.substring(0, 10);
                soma = 0;

                for (i = 11; i > 1; i--)
                    soma += numeros.charAt(11 - i) * i;
                resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;

                if (resultado != digitos.charAt(1))
                    return false;
                return true;
            }
            else
                return false;
        }


        function formatarMoeda() {
            var elemento = document.getElementById('valor');
            var valor = elemento.value;

            valor = valor + '';
            valor = parseInt(valor.replace(/[\D]+/g, ''));
            valor = valor + '';
            valor = valor.replace(/([0-9]{2})$/g, ",$1");

            if (valor.length > 6) {
                valor = valor.replace(/([0-9]{3}),([0-9]{2}$)/g, ".$1,$2");
            }

            elemento.value = valor;
        }

    </script>

</body>
</html>


