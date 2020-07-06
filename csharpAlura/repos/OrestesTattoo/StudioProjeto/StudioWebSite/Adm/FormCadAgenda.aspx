<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadAgenda.aspx.cs" Inherits="StudioWebSite.Adm.FormCadAgenda" %>

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
    <!-- bootstrap-datetimepicker -->
    <link href="../vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">

    <script src="../vendors/jquery/dist/jquery.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>

    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />


    <%--Calendario--%>
    <%--<link href="css/default.css" rel="stylesheet" type="text/css"/>--%>
    <link href="css/jquery.click-calendario-1.0.css" rel="stylesheet" type="text/css" />
    <%--<script type="text/javascript" src="js/jquery.js"></script>--%>
    <script type="text/javascript" src="js/jquery.click-calendario-1.0-min.js"></script>
    <script type="text/javascript" src="js/exemplo-calendario.js"></script>


    <script type="text/javascript">

        function validaHora() {
            var dataSelecionada = $('#txtData').val();
            if (dataSelecionada == "") {
                alert("informe a data desejada");
                $('#txtData').focus();
            } else {
                var dia = dataSelecionada.substring(0, 2);
                var mes = dataSelecionada.substring(3, 5);
                var ano = dataSelecionada.substring(6, 10);

                var dataSel = ano + "-" + mes + "-" + dia;

                var obj = new Object();
                obj.DataServico = dataSel;

                var parametros = JSON.stringify(obj);

                var select;

                $.ajax({
                    type: "POST",
                    url: "FormCadAgenda.aspx/PopulaCombo",
                    contentType: "application/json; charset=utf-8",
                    data: parametros,
                    success: function (result) {
                        $.each(JSON.parse(result.d), function (index, result) {
                            $('<option value"' + result.Hora + '">' + result.Hora + '</option>').appendTo('#cbHora');
                        });
                    },
                    failure: function (erro) {
                        alert("Ocorreu um erro");
                    }
                });
            }

        }

    </script>

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

                        <%--Cadastro agenda--%>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadUsuario" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Agendar Sessão</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="cadUsuario" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                                Data Serviço 
                                            </label>
                                            <div class='input-group date col-md-6 col-sm-6 col-xs-12' id='myDatepicker2'>
                                                <input type='text' class="form-control" name="txtData" id="txtData" runat="server"/>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Horário</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--<input id="txtHora" class="form-control col-md-7 col-xs-12" type="text" onkeydown="javascript: fMasc(this, mCPF );" maxlength="14">--%>
                                                <select id="cbHora" name="cbHora" class="form-control" onclick="validaHora();">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                                Tempo estimado 
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select id="Tempo" class="form-control" required>
                                                    <option value="">Selecione</option>
                                                    <option value="00:30">00:30</option>
                                                    <option value="01:00">01:00</option>
                                                    <option value="01:30">01:30</option>
                                                    <option value="02:00">02:00</option>
                                                    <option value="02:30">02:30</option>
                                                    <option value="03:00">03:00</option>
                                                    <option value="03:30">03:30</option>
                                                    <option value="04:00">04:00</option>
                                                    <option value="04:30">04:30</option>
                                                    <option value="05:00">05:00</option>
                                                </select>
                                                <%--<input type="text" id="txtTempoEstimado" class="form-control col-md-7 col-xs-12">--%>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Cliente</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtCliente" class="form-control col-md-7 col-xs-12" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Celular</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="txtCelular" class="form-control col-md-7 col-xs-12" type="text" maxlength="14">
                                                <%--onkeydown="javascript: fMasc(this, mTel );"--%>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Efetivado</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="efetivado" class="form-control col-md-7 col-xs-12 " type="checkbox">
                                            </div>
                                        </div>

                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <%--<button class="btn btn-primary" type="button">Cancelar</button>
                                                <button class="btn btn-primary" type="reset">Limpar</button>--%>
                                                <button class="btn btn-success" type="submit" onclick="GravarSessao();">Agendar</button>
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
    <!-- bootstrap-datetimepicker -->
    <script src="../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
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
        $('#myDatepicker2').datetimepicker({
            format: 'DD/MM/YYYY'
        });

        function GravarSessao() {
            var DataServico = $('#txtData').val();

            var dia = DataServico.substring(0, 2);
            var mes = DataServico.substring(3, 5);
            var ano = DataServico.substring(6, 10);

            var dataGrava = ano + "-" + mes + "-" + dia;

            //var Hora = $('#txtHora').val();
            var Hora = $('#cbHora option:selected').text();

            var TempoEstimado = $('#Tempo option:selected').text();
            var Cliente = $('#txtCliente').val();
            var Celular = $('#txtCelular').val();
            var Efetivado = $('#efetivado').val();

            var obj = new Object();
            obj.DataServico = dataGrava;
            obj.Hora = Hora;
            obj.TempoEstimado = TempoEstimado;
            obj.Cliente = Cliente;
            obj.Celular = Celular;
            obj.Efetivado = Efetivado;

            var parametros = JSON.stringify(obj);

            $.ajax({
                type: "POST",
                url: "FormCadAgenda.aspx/GravarSessao",
                contentType: "application/json; charset=utf-8",
                data: parametros,
                dataType: "json",
                success: function (resposta) {
                    alert("Sessão gravada com sucesso!");
                },
                failure: function (erro) {
                    alert("Ocorreu um erro!");
                }
            });
        }

        function fMasc(objeto, mascara) {
            obj = objeto
            masc = mascara
            setTimeout("fMascEx()", 1)
        }
        function fMascEx() {
            obj.value = masc(obj.value)
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




    </script>

</body>
</html>
