<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadServicos.aspx.cs" Inherits="StudioWebSite.Adm.FormCadServicos" %>

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
                        <%--Cadastro serviço--%>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadServico" style="display: block" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Serviço executado</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="formServico" name="formCadServicos"  class="form-horizontal form-label-left" runat="server">

                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Cliente</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--<asp:DropDownList ID="ddlCliente" runat="server" class="form-control"/>--%>
                                                <select id="cbNomeCliente" name="cbNomeCliente" class="form-control" runat="server"></select>
                                            </div>
                                        </div>

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
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Valor Serviço</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--<input id="numValor" class="form-control col-md-7 col-xs-12" type="text" runat="server" ">--%>
                                                <input type="text" id="valor" class="form-control col-md-7 col-xs-12" runat="server" onkeyup="formatarMoeda();"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                                                Tipo de serviço
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select id="lblTipoServico" name="lblTipoServico" class="form-control" required runat="server">
                                                    <option value="">Selecione</option>
                                                    <option value="1">Tatuagem</option>
                                                    <option value="2">Piercing</option>
                                                    <option value="3">Venda de produto</option>
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Observações Cliente</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea id="txtObsCliente" name="obsCliente" class="form-control col-md-7 col-xs-12" type="text" runat="server"></textarea>
                                            </div>
                                        </div>
                                        
                                       <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Observações Gerais</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea id="txtObsGerais" name="obsGerais" class="form-control col-md-7 col-xs-12" type="text" runat="server"></textarea>
                                            </div>
                                        </div>
                      
                                        <div class="form-group" id="divFoto" runat="server">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Foto</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <%--<input id="txtFotoCliente" runat="server" class="form-control col-md-7 col-xs-12 " type="file">--%>
                                                <asp:FileUpload ID="fotoServico" class="form-control col-md-7 col-xs-12" runat="server"/>
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group" id="divGravaCli" runat="server" style="display: block;">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3" style="text-align: center;">
                                                <asp:Button ID="btnGravarServico" runat="server" class="btn btn-success" OnClick="btnGravarServico_Click" Text="Gravar Serviço"/> 
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

     <%--Calendario--%>
    <%--<link href="css/default.css" rel="stylesheet" type="text/css"/>--%>
    <link href="css/jquery.click-calendario-1.0.css" rel="stylesheet" type="text/css" />
    <%--<script type="text/javascript" src="js/jquery.js"></script>--%>
    <script type="text/javascript" src="js/jquery.click-calendario-1.0-min.js"></script>
    <script type="text/javascript" src="js/exemplo-calendario.js"></script>

    <script>

        $('#myDatepicker2').datetimepicker({
            format: 'DD/MM/YYYY'
        });

      
         $(document).ready(function () {
            $.ajax({
                type: "POST",
                url: "FormCadServicos.aspx/RecuperaCliente",
                contentType: "application/json; charset=utf-8",
                data: "{}",
                dataType: "json",
                success: function (data) {
                    $('#cbNomeCliente').append($("<option></option>").val("Selecione").html("Selecione"));
                    $.each(JSON.parse(data.d), function (key, value) {
                        $('#cbNomeCliente').append($("<option></option>").val(value.IdCliente).html(value.NomeCliente));
                    });
                },
                failure: function (erro) {
                    alert("Ocorreu um erro!");
                }
            })
        });
        $('#cbCliente').click(function () {
            
        });

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


        function GravarServico() {
                var CodCliente = $('#cbNomeCliente option:selected').val();
                var DataServico = $('#txtData').val();
                var Valor = $('#numValor').val();
                var TipoServico = $('#lblTipoServico option:selected').text();
                var ObsCliente = $('#txtObsCliente').val();
                var ObsGerais = $('#txtObsGerais').val();
                var FotoServico = $('#txtFotoServico').val();

                var obj = new Object();
                obj.codCliente = CodCliente;
                obj.dataServico = DataServico;
                obj.valor = Valor;
                obj.tipoServico = TipoServico;
                obj.obsCliente = ObsCliente;
                obj.obsGerais = ObsGerais;
                obj.fotoServico = FotoServico;
               
                var parametros = JSON.stringify(obj);

                $.ajax({
                    type: "POST",
                    url: "FormCadServicos.aspx/InsertServico",
                    contentType: "application/json; charset=utf-8",
                    data: parametros,
                    dataType: "json",
                    success: function (resposta) {
                        alert("Serviço gravado com sucesso!");
                    },
                    failure: function (erro) {
                        alert("Ocorreu um erro!");
                    }
                });


        }

   
        
    </script>

</body>
</html>


