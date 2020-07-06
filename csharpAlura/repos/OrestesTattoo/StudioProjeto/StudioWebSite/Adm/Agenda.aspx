<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="StudioWebSite.Adm.Agenda" %>

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
        window.onload = function () {
            var dataatual = new Date();
            var dia = dataatual.getDate();
            if (dia < 10) { dia = "0" + dia; }
            var mes = dataatual.getMonth();
            var mesAtual = mes + 1;
            if (mesAtual < 10) { mesAtual = "0" + mesAtual; }
            var ano = dataatual.getFullYear();
            var dtAtual = dia + '/' + mesAtual + '/' + ano;
            $('#txtData').val(dtAtual);

            preencheAgenda(dia, mesAtual, ano);
        }




        function CarregaData() {
            var dataText = $('#txtData').val();
            var dia = dataText.substring(0, 2);
            var mes = dataText.substring(3, 5);
            var ano = dataText.substring(6, 10);


            preencheAgenda(dia, mes, ano);

        }


        preencheAgenda = function (dia, mes, ano) {
            var dCon = ano + '-' + mes + '-' + dia;
            var obj = new Object();
            obj.DataServico = dCon;
            var parametros = JSON.stringify(obj);

            $.ajax({
                type: "POST",
                url: "Agenda.aspx/ConsultaAgenda",
                contentType: "application/json; charset=utf-8",
                data: parametros,
                dataType: "json",
                success: function (result, status) {
                    var trHTML = '';
                    $('#location').empty();
                    $.each(JSON.parse(result.d), function (idx, obj) {
                        var dataServEfetuado = retornaData(obj.DataServico);
                        trHTML += '<tr><td>' + dataServEfetuado + '</td><td>' + obj.Hora + '</td><td>' + obj.TempoEstimado + '</td><td>' + obj.Cliente + '</td><td>' + obj.Celular + '</td><td><center><img src="imagens/excluir.png" onClick="ExcluirRegistro(' + obj.IdAgenda + ');"></center></td> </tr>';
                        //trHTML += '<tr><td>' + dataServEfetuado + '</td><td>' + obj.Hora + '</td><td>' + obj.TempoEstimado + '</td><td>' + obj.Cliente + '</td><td>' + obj.Celular + '</td><td><center><input type=checkbox onClick="AlteraStatus(' + obj.IdAgenda + ');"></center></td><td><center><img src="imagens/excluir.png" onClick="ExcluirRegistro(' + obj.IdAgenda + ');"></center></td> </tr>';
                        //trHTML += '<tr><td>' + dataServEfetuado + '</td><td>' + obj.Hora + '</td><td>' + obj.TempoEstimado + '</td><td>' + obj.Cliente + '</td><td>' + obj.Celular + '</td><td>' + obj.Efetivado + '</td><td><center><img src="imagens/excluir.png" onClick="ExcluirRegistro(' + obj.IdAgenda + ');"></center></td> </tr>';
                    });
                    $('#location').append(trHTML);
                },
                failure: function (erro) {
                    alert("Ocorreu um erro!");
                }
            });
        }

        function retornaData(valor) {
            var dataServico = valor;
            var milisegundos = parseInt(dataServico.slice(dataServico.indexOf('(') + 1, dataServico.indexOf(')')));
            var data = new Date(milisegundos);

            return (("0" + (data.getDate())).slice(-2) + "/" + ("0" + (data.getMonth() + 1)).slice(-2) + "/" + data.getFullYear())
        }

        function ExcluirRegistro(codSessao) {
            var obj = new Object();
            obj.sessao = codSessao;
            var parametros = JSON.stringify(obj);

            $.ajax({
                type: "POST",
                url: "Agenda.aspx/ExcluiSessao",
                contentType: "application/json; charset=utf-8",
                data: parametros,
                dataType: "json",
                success: function (result, status) {
                    alert("Registro excluído com sucesso!");
                    window.location.reload();
                },
                failure: function (erro) {
                    alert("Ocorreu um erro!");
                }
            });
        }

        function AlteraStatus(status) {
            alert("status: " + status);
            //alert("cod: " + sessao);
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
                            <asp:Label ID="lblBemVindo" runat="server" Text="" Style="color: white; font-size: 12px;"></asp:Label>
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

                    <%--Cadastro cliente--%>
                    <div class="col-md-12 col-sm-12 col-xs-12" id="divCadCliente" style="display: block" runat="server">
                        <div class="x_panel">
                            <div class="x_content">
                                <form class="form-inline" runat="server">
                                    <a href="FormCadAgenda.aspx" id="BtnCadSessao" class="btn btn-default">Agendar Sessão</a>
                                    <%--<a href="FormCadAgenda.aspx" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Primary link</a>--%>
                                </form>
                            </div>
                        </div>
                    </div>

                    <%--Agenda diária--%>
                    <div class="col-md-12 col-sm-12 col-xs-12" id="div1" style="display: block" runat="server">
                        <div class="x_panel">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                    <h2>Agenda do dia: </h2>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class='input-group date col-md-6 col-sm-6 col-xs-12' id='myDatepicker2'>
                                    <input type='text' class="form-control" name="txtData" id="txtData" />

                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                    <%--<img src="imagens/btn_ok.png" style="height: 20px; width: 20px;" onclick="CarregaData();" />--%>
                                </div>
                                </div>

                                <button id="btnConsultar" type="button" class="btn btn-success" onclick="CarregaData();">Consultar</button>

                            </div>
                            
                            <div class="x_content">
                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th class="column-title">Data </th>
                                                <th class="column-title">Início </th>
                                                <th class="column-title">Previsão término </th>
                                                <th class="column-title">Cliente </th>
                                                <th class="column-title">Celular </th>
                                                <%--<th class="column-title"><center>Efetuado</center></th>--%>
                                                <th class="column-title no-link last"><span class="nobr"><center>Excluir</center></span>
                                                </th>

                                            </tr>
                                        </thead>

                                        <tbody id="location">
                                        </tbody>

                                        <%--<tbody id="corpoAgenda" runat="server"></tbody>--%>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <%--<footer>
                
                <div class="clearfix"></div>
            </footer>--%>
                <!-- /footer content -->
            </div>
        </div>
    </div>
    <!-- jQuery -->


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
    </script>
</body>
</html>

