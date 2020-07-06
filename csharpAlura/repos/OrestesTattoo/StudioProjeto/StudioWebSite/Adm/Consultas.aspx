<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="StudioWebSite.Adm.Consultas" %>

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

                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>Gerais</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-edit"></i>Agenda <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="Agenda.aspx">Controle Agenda</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-home"></i>Tela inicial <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="index.html">Dashboard</a></li>
                                        <li><a href="index2.html">Dashboard2</a></li>
                                        <li><a href="index3.html">Dashboard3</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-edit"></i>Cadastros <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="FormCadUsuario.aspx">Usuários</a></li>
                                        <li><a href="FormCadCliente.aspx">Clientes</a></li>
                                        <li><a href="form.html">General Form</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-table"></i>Consultas <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="Consultas.aspx">Usuario</a></li>
                                        <li><a href="Consultas.aspx">Clientes</a></li>
                                        <li><a href="Consultas.aspx">Serviços</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->

                    <!-- /menu footer buttons -->
                    <div class="sidebar-footer hidden-small">
                        <a data-toggle="tooltip" data-placement="top" title="Settings">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Lock">
                            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!-- /menu footer buttons -->
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
                            <div class="x_title">
                                <h2>Controle de Agenda</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <h4>Agendar horário </h4>

                                <form class="form-inline" runat="server">
                                    <div id="divckCliente" class="form-group">
                                        <input type="checkbox" name="ckCheckCliente" id="ckCheckCliente" value="0" class="flat" />
                                        Cliente já cadastrado?
                                    </div>
                                    <br />

                                    <div id="divDiaCliente" class="form-group">
                                        <label for="heard">Data:</label>
                                        <asp:TextBox ID="txtDate" runat="server" ReadOnly="true" Style="width: 80px;"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="heard">Início:</label>
                                        <select id="heard" class="form-control" required>
                                            <option value="press">8:00</option>
                                            <option value="net">8:30</option>
                                            <option value="mouth">9:00</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="heard">Término:</label>
                                        <select id="heard" class="form-control" required>
                                            <option value="press">8:00</option>
                                            <option value="net">8:30</option>
                                            <option value="mouth">9:00</option>
                                        </select>
                                    </div>
                                    <div class="form-group" id="nomeClienteCadastrado" style="display: none;">
                                        <label for="heard">Cliente:</label>
                                        <select id="heard" class="form-control" required>
                                            <option value="">Escolha..</option>
                                            <option value="press">Marcelo Kiilian Heinsberg</option>
                                            <option value="net">Eliane Silveira</option>
                                            <option value="mouth">Katarina de Jesus</option>
                                        </select>
                                    </div>
                                    <div class="form-group" id="nomeClienteSemCadastro">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nomeclientenovo">
                                            Cliente <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="nomeclientenovo" required="required" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group" id="telefoneCliente">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nomeclientenovo">
                                            Celular 
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="txtCelular" required="required" class="form-control col-md-7 col-xs-12" style="width: 100px;">
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-default">Agendar</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <%--Agenda diária--%>
                    <div class="col-md-12 col-sm-12 col-xs-12" id="div1" style="display: block" runat="server">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Agenda diária</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div id="divAgenda" class="form-group">
                                <label for="heard">Data:</label>

                                <input id="ConsultadiaAgenda" readonly="true" style="width: 80px;" />
                            </div>
                            <div class="x_content">
                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <input type="checkbox" id="check-all" class="flat">
                                                </th>
                                                <th class="column-title">Data </th>
                                                <th class="column-title">Início </th>
                                                <th class="column-title">Término </th>
                                                <th class="column-title">Cliente </th>
                                                <th class="column-title">Celular </th>
                                                <th class="column-title">Efetuado </th>
                                                <th class="column-title no-link last"><span class="nobr">Visualizar</span>
                                                </th>

                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat" name="table_records">
                                                </td>
                                                <td class=" ">30/06/2018</td>
                                                <td class=" ">8:00 </td>
                                                <td class=" ">9:00 </td>
                                                <td class=" ">Marcelo Kiilian</td>
                                                <td class=" ">11987440821</td>
                                                <td class="a-right a-right ">ok</td>
                                                <td class=" last"><a href="#">Ver</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat" name="table_records">
                                                </td>
                                                <td class=" ">30/06/2018</td>
                                                <td class=" ">8:00 </td>
                                                <td class=" ">9:00 </td>
                                                <td class=" ">Marcelo Kiilian</td>
                                                <td class=" ">11987440821</td>
                                                <td class="a-right a-right ">ok</td>
                                                <td class=" last"><a href="#">Ver</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat" name="table_records">
                                                </td>
                                                <td class=" ">30/06/2018</td>
                                                <td class=" ">8:00 </td>
                                                <td class=" ">9:00 </td>
                                                <td class=" ">Marcelo Kiilian</td>
                                                <td class=" ">11987440821</td>
                                                <td class="a-right a-right ">ok</td>
                                                <td class=" last"><a href="#">Ver</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat" name="table_records">
                                                </td>
                                                <td class=" ">30/06/2018</td>
                                                <td class=" ">8:00 </td>
                                                <td class=" ">9:00 </i></td>
                                                <td class=" ">Marcelo Kiilian</td>
                                                <td class=" ">11987440821</td>
                                                <td class="a-right a-right ">ok</td>
                                                <td class=" last"><a href="#">Ver</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat" name="table_records">
                                                </td>
                                                <td class=" ">30/06/2018</td>
                                                <td class=" ">8:00 </td>
                                                <td class=" ">9:00 </td>
                                                <td class=" ">Marcelo Kiilian</td>
                                                <td class=" ">11987440821</td>
                                                <td class="a-right a-right ">ok</td>
                                                <td class=" last"><a href="#">Ver</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat" name="table_records">
                                                </td>
                                                <td class=" ">30/06/2018</td>
                                                <td class=" ">8:00 </td>
                                                <td class=" ">9:00 </td>
                                                <td class=" ">Marcelo Kiilian</td>
                                                <td class=" ">11987440821</td>
                                                <td class="a-right a-right ">ok</td>
                                                <td class=" last"><a href="#">Ver</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat" name="table_records">
                                                </td>
                                                <td class=" ">30/06/2018</td>
                                                <td class=" ">8:00 </td>
                                                <td class=" ">9:00 </i></td>
                                                <td class=" ">Marcelo Kiilian</td>
                                                <td class=" ">11987440821</td>
                                                <td class="a-right a-right ">ok</td>
                                                <td class=" last"><a href="#">Ver</a>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
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
</body>
</html>
