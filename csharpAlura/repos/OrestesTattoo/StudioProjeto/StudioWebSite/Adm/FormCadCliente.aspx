<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadCliente.aspx.cs" Inherits="StudioWebSite.Adm.FormCadCliente" %>

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
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadCliente" style="display:block" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Cadastro Cliente</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form  id="FormCadClientes" name="formCadCliente" runat="server" class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                                Nome completo <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="txtCodCliente" runat="server"  class="form-control col-md-7 col-xs-12" style="display:none;">
                                                <input type="text" id="txtNomeCompletoCliente" runat="server"  class="form-control col-md-7 col-xs-12" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">CPF
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtCpfCliente" runat="server" name="cpfCliente" class="form-control col-md-7 col-xs-12" type="text" onkeydown="javascript: fMasc(this, mCPF );"  maxlength="14" required="required">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Telefone</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtTelefoneCliente" runat="server" class="form-control col-md-7 col-xs-12" type="text" onkeydown="javascript: fMasc(this, mTel );"  maxlength="14">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                                Endereço
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="txtEnderecoCliente" runat="server" name="endereco" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Bairro</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtBairroCliente" runat="server" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">CEP</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtCepCliente" runat="server" class="form-control col-md-7 col-xs-12" type="text" onkeydown="javascript: fMasc(this, mCEP );"  maxlength="10">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div id="sexoUserGroup" class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-default active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="rdSexoCliente" value="M" checked >
                                                        Masculino
                           
                                                    </label>
                                                    <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                        <input type="radio" name="rdSexoCliente" value="F">
                                                        Feminino
                           
                                                    </label>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                                Data de Nascimento 
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12"> 
                                                <input id="txtDtNasc" runat="server" class="date-picker form-control col-md-7 col-xs-12" type="text" name="data" onKeyPress="MascaraData(formCadCliente.data);" onBlur= "ValidaData(formCadCliente.data);" maxlength="10" required="required" >
                                            </div>
                                        </div>
                                        <div class="form-group" id="divFoto" runat="server">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Foto</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--<input id="txtFotoCliente" runat="server" class="form-control col-md-7 col-xs-12 " type="file">--%>
                                                <asp:FileUpload ID="fotoCliente" class="form-control col-md-7 col-xs-12" runat="server"/>
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group" id="divGravaCli" runat="server" style="display:none;">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <asp:Button ID="btnGravaCliente" runat="server" class="btn btn-success" OnClick="btnGravaCliente_Click" Text="Gravar" />
                                            </div>
                                        </div>

                                        <div class="form-group" id="divAlteraCli" runat="server" style="display:none;"> 
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <%--<button type="submit" class="btn btn-success" onclick="AlterarCliente();">Alterar</button>--%>
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
        function GravarCliente() {

            var cpf = document.getElementById('txtCpfCliente').value;
            cpf = cpf.replace(/[^0-9]+/g, '');


            if (valida_cpf(cpf)) {
                var nomecompletoCli = $('#txtNomeCompletoCliente').val();
                var CPFCli = $('#txtCpfCliente').val();
                var Telefone = $('#txtTelefoneCliente').val();
                var Endereco = $('#txtEnderecoCliente').val();
                var Bairro = $('#txtBairroCliente').val();
                var CEP = $('#txtCepCliente').val();
                var Sexo = $("input[name='rdSexoCliente']:checked").val();
                var DtNasc = $('#txtDtNasc').val();
                var Foto = $('#txtFotoCliente').val();

                var obj = new Object();
                obj.nomecompleto = nomecompletoCli;
                obj.cpf = CPFCli;
                obj.telefone = Telefone;
                obj.endereco = Endereco;
                obj.bairro = Bairro;
                obj.cep = CEP;
                obj.sexo = Sexo;
                obj.datanascimento = DtNasc;
                obj.foto = Foto;

                var parametros = JSON.stringify(obj);

                $.ajax({
                    type: "POST",
                    url: "FormCadCliente.aspx/GravaCliente",
                    contentType: "application/json; charset=utf-8",
                    data: parametros,
                    dataType: "json",
                    success: function (resposta) {
                        alert("Cliente gravado com sucesso!");
                    },
                    failure: function (erro) {
                        alert("Ocorreu um erro!");
                    }
                });
            }
            else {
                alert("Por favor, digite um CPF válido!");
                document.getElementById('txtCpfCliente').focus();
                return false;
            }
     
        }


        function AlterarCliente() {

            var cpf = document.getElementById('txtCpfCliente').value;
            cpf = cpf.replace(/[^0-9]+/g, '');


            if (valida_cpf(cpf)) {
                var idCliente = $('#txtCodCliente').val();
                var nomecompletoCli = $('#txtNomeCompletoCliente').val();
                var CPFCli = $('#txtCpfCliente').val();
                var Telefone = $('#txtTelefoneCliente').val();
                var Endereco = $('#txtEnderecoCliente').val();
                var Bairro = $('#txtBairroCliente').val();
                var CEP = $('#txtCepCliente').val();
                var Sexo = $("input[name='rdSexoCliente']:checked").val();
                var DtNasc = $('#txtDtNasc').val();
                var Foto = $('#txtFotoCliente').val();

                var obj = new Object();
                obj.idCliente = idCliente;
                obj.nomecompleto = nomecompletoCli;
                obj.cpf = CPFCli;
                obj.telefone = Telefone;
                obj.endereco = Endereco;
                obj.bairro = Bairro;
                obj.cep = CEP;
                obj.sexo = Sexo;
                obj.datanascimento = DtNasc;
                obj.foto = Foto;

                var parametros = JSON.stringify(obj);

                $.ajax({
                    type: "POST",
                    url: "FormCadCliente.aspx/AlteraCliente",
                    contentType: "application/json; charset=utf-8",
                    data: parametros,
                    dataType: "json",
                    success: function (resposta) {
                        alert("Cliente alterado com sucesso!");
                    },
                    failure: function (erro) {
                        alert("Ocorreu um erro!");
                    }
                });
            }
            else {
                alert("Por favor, digite um CPF válido!");
                document.getElementById('txtCpfCliente').focus();
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

        function mTel(tel) {
            tel = tel.replace(/\D/g, "")
            tel = tel.replace(/^(\d)/, "($1")
            tel = tel.replace(/(.{3})(\d)/, "$1)$2")
            if (tel.length == 9) {
                tel = tel.replace(/(.{1})$/, "-$1")
            } else if (tel.length == 10) {
                tel = tel.replace(/(.{2})$/, "-$1")
            } else if (tel.length == 11) {
                tel = tel.replace(/(.{3})$/, "-$1")
            } else if (tel.length == 12) {
                tel = tel.replace(/(.{4})$/, "-$1")
            } else if (tel.length > 12) {
                tel = tel.replace(/(.{4})$/, "-$1")
            }
            return tel;
        }

        function mCEP(cep) {
            cep = cep.replace(/\D/g, "")
            cep = cep.replace(/^(\d{2})(\d)/, "$1.$2")
            cep = cep.replace(/\.(\d{3})(\d)/, ".$1-$2")
            return cep
        }

        function MascaraData(data) {
            if (mascaraInteiro(data) == false) {
                event.returnValue = false;
            }
            return formataCampo(data, '00/00/0000', event);
        }

        function mascaraInteiro() {
            if (event.keyCode < 48 || event.keyCode > 57) {
                event.returnValue = false;
                return false;
            }
            return true;
        }

        function formataCampo(campo, Mascara, evento) {
            var boleanoMascara;

            var Digitato = evento.keyCode;
            exp = /\-|\.|\/|\(|\)| /g
            campoSoNumeros = campo.value.toString().replace(exp, "");

            var posicaoCampo = 0;
            var NovoValorCampo = "";
            var TamanhoMascara = campoSoNumeros.length;;

            if (Digitato != 8) { // backspace 
                for (i = 0; i <= TamanhoMascara; i++) {
                    boleanoMascara = ((Mascara.charAt(i) == "-") || (Mascara.charAt(i) == ".")
                                                            || (Mascara.charAt(i) == "/"))
                    boleanoMascara = boleanoMascara || ((Mascara.charAt(i) == "(")
                                                            || (Mascara.charAt(i) == ")") || (Mascara.charAt(i) == " "))
                    if (boleanoMascara) {
                        NovoValorCampo += Mascara.charAt(i);
                        TamanhoMascara++;
                    } else {
                        NovoValorCampo += campoSoNumeros.charAt(posicaoCampo);
                        posicaoCampo++;
                    }
                }
                campo.value = NovoValorCampo;
                return true;
            } else {
                return true;
            }
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



    </script>
   
</body>
</html>

