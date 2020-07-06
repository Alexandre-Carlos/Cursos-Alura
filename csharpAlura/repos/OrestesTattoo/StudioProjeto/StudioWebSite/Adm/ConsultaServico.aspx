<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaServico.aspx.cs" Inherits="StudioWebSite.Adm.ConsultaServico" %>

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

    <script>
        function ConsultarData() {
            var tipoServico = $('#lblTipoServico option:selected').val();

            $('#divPersonalizada').css("display", "none");
            if (tipoServico == "4") {
                $('#divPersonalizada').css("display", "block");
                return false;
            }

            var obj = new Object();
            obj.TipoConsulta = tipoServico;

            var parametros = JSON.stringify(obj);

            $.ajax({
                type: "POST",
                url: "ConsultaServico.aspx/ConsultaData",
                contentType: "application/json; charset=utf-8",
                data: parametros,
                dataType: "json",
                success: function (result, status) {
                    var trHTML = '';
                    var total = '';

                    $('#resultServicos').empty();

                    $.each(JSON.parse(result.d), function (idx, obj) {
                        var valor = parseInt(obj.Valor);
                        var dataServEfetuado = retornaData(obj.DataServico);
                        trHTML += '<tr><td>' + obj.NomeCompleto + '</td><td>' + dataServEfetuado + '</td><td>' + obj.ObsCliente + '</td><td>' + valor + '</td><td>Ver</td></tr>';
                        total += parseInt(valor);


                        //total = parseInt(300) + parseInt(150);
                    });
                    trHTML += '<tr><td></td><td></td><td></td><td>Valor Total:</td><td>' + total + '</td></tr>';
                    $('#resultServicos').append(trHTML);
                },
                failure: function (erro) {
                    alert("Ocorreu um erro!");
                }
            });
        }


        function ConsultarPersonalizada() {
            var intData = $('#reservation').val();
            var datas = intData.split(" - ");

            var data1 = datas[0];
            var dataInicio = data1.substring(6, 10) + "-" + data1.substring(0, 2) + "-" + data1.substring(3, 5);
            var data2 = datas[1];
            var dataFim = data2.substring(6, 10) + "-" + data2.substring(0, 2) + "-" + data2.substring(3, 5);

            var obj = new Object();
            obj.DataInicio = dataInicio;
            obj.DataFim = dataFim;

            var parametros = JSON.stringify(obj);

            $.ajax({
                type: "POST",
                url: "ConsultaServico.aspx/ConsultaDataPersonalizada",
                contentType: "application/json; charset=utf-8",
                data: parametros,
                dataType: "json",
                success: function (result, status) {
                    var trHTML = '';
                    var valServico = '';
                    $('#resultServicos').empty();
                    $.each(JSON.parse(result.d), function (idx, obj) {

                        var dataServEfetuado = retornaData(obj.DataServico);
                        trHTML += '<tr><td>' + obj.NomeCompleto + '</td><td>' + dataServEfetuado + '</td><td>' + obj.ObsCliente + '</td><td>' + obj.Valor + '</td><td>Ver</td><td>Ver</td></tr>';
                        valServico += parceint(valServico);
                    });
                    trHTML += '<tr><td></td><td></td><td></td><td>Valor Total:</td><td>' + valServico + '</td><td></td></tr>';
                    $('#resultServicos').append(trHTML);
                },
                failure: function (erro) {
                    alert("Ocorreu um erro!");
                }
            });


        }

        function ExcluiRegistro(registro) {
            var obj = new Object();
            obj.registro = registro;
            var parametros = JSON.stringify(obj);

            $.ajax({
                type: "POST",
                url: "ConsultaServico.aspx/ExcluiRegistro",
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



        function retornaData(valor) {
            var dataServico = valor;
            var milisegundos = parseInt(dataServico.slice(dataServico.indexOf('(') + 1, dataServico.indexOf(')')));
            var data = new Date(milisegundos);

            return (("0" + (data.getDate())).slice(-2) + "/" + ("0" + (data.getMonth() + 1)).slice(-2) + "/" + data.getFullYear())
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


                    <%--Consulta Usuarios--%>
                    <div class="col-md-12 col-sm-12 col-xs-12" id="div1" style="display: block" runat="server">
                        <form id="consultaData" runat="server">

                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Consulta de serviços</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div id="divAgenda" class="form-group">
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Escolha a consulta 
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <select id="cbTipoServico" name="cbTipoServico" class="form-control" required runat="server">
                                            <option value="">Selecione o período</option>
                                            <option value="1">Hoje</option>
                                            <option value="2">Últimos 7 dias</option>
                                            <option value="3">Últimos 30 dias</option>
                                            <option value="4">Personalizar período</option>
                                            <option value="5">Todo período</option>
                                        </select>
                                    </div>

                                    <asp:Button ID="btnConsultarData" runat="server" class="btn btn-success" OnClick="btnConsultarData_Click" Text="Consultar" />

                                    <%--<button id="btnConsultar" type="button" class="btn btn-success" onclick="ConsultarData();">Consultar</button>--%>
                                </div>

                                <div class="well" style="overflow: auto; display: none" id="divPersonalizada" runat="server">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                        Selecione o período
                                    </label>
                                    <div class="col-md-4">
                                        <%--<form class="form-horizontal">--%>
                                        <fieldset>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <div class="input-prepend input-group">
                                                        <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                        <input type="text" style="width: 200px" name="reservation" id="reservation" class="form-control" value="01/01/2018 - 01/25/2018" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <%--</form>--%>
                                    </div>

                                    <%--<button id="btnConsultaPersonalizada" type="button" class="btn btn-success" onclick="ConsultarPersonalizada();">Consulta Personalizada</button>--%>
                                    <asp:Button ID="btnPersonalizarData" runat="server" class="btn btn-success" OnClick="btnPersonalizarData_Click" Text="Consultar" />

                                </div>

                                <div class="clearfix"></div>

                                <div class="x_content">
                                    <div class="table-responsive">
                                        <table class="table table-striped jambo_table bulk_action">
                                            <thead>
                                                <tr class="headings">
                                                    <th class="column-title">Nome Completo </th>
                                                    <th class="column-title">Data </th>
                                                    <th class="column-title">Descricao </th>
                                                    <th class="column-title">Valor </th>
                                                    <th class="column-title no-link last"><span class="nobr">+ Detalhes</span>
                                                    <th class="column-title no-link last"><span class="nobr">Excluir</span>
                                                    </th>
                                                </tr>
                                            </thead>

                                            <tbody id="gridServicos" runat="server"></tbody>
                                            <%--Usando Jquery--%>
                                            <%--<tbody id="resultServicos"></tbody>--%>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </form>


                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                </footer>
                <!-- /footer content -->
            </div>
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

        $('#myDatepicker3').datetimepicker({
            format: 'DD/MM/YYYY'
        });
    </script>
</body>
</html>
