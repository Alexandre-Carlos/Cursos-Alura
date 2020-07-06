<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GaleriaImagem.aspx.cs" Inherits="StudioWebSite.Adm.GaleriaImagem" %>

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

                        <%--Cadastro usuario--%>
                        <div class="col-md-12 col-sm-12 col-xs-12" id="divCadUsuario" runat="server">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Galeria de Imagem da página inicial</h2>

                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="cadUsuario" data-parsley-validate class="form-horizontal form-label-left">
                                        <table>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic1.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic2.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic3.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria1" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria2" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile2" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria3" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile3" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <%--Segunda linha--%>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic4.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic5.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic6.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria4" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile4" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria5" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile5" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria6" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile6" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <%--Terceira linha--%>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic7.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic8.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic9.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria7" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile7" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria8" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile8" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria9" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile9" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <%--quarta linha--%>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic10.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic11.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic12.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria10" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile10" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria11" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile11" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria12" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile12" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <%--Quinta linha--%>

                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic13.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic14.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic15.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria13" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile13" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria14" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile14" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria15" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile15" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <%--quarta linha--%>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic16.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic17.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic18.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria16" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile16" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria17" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile17" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria18" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile18" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>


                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic19.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic20.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic21.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria19" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile19" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria20" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile20" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria21" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile21" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <%--quarta linha--%>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic22.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic23.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <img src="../GaleriaDefault/pic24.jpg" style="width: 100px; height: 100px;" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria22" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile22" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria23" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile23" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group">
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fotoGaleria24" class="form-control col-md-7 col-xs-12 " type="file">
                                                            <br />
                                                            <input id="btnUploadFile24" type="button" value="Trocar imagem" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>


                                        </table>
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
    <%--<script src="../vendors/jquery/dist/jquery.min.js"></script>--%>
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

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnUploadFile').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria1").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=1",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });

            $('#btnUploadFile2').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria2").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=2",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });

            $('#btnUploadFile3').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria3").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=3",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });

            $('#btnUploadFile4').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria4").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=4",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile5').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria5").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=5",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile6').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria6").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=6",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile7').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria7").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=7",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile8').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria8").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=8",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile9').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria9").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=9",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile10').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria10").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=10",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile11').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria11").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=11",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile12').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria12").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=12",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile13').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria13").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=13",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile14').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria14").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=14",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile15').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria15").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=15",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile16').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria16").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=16",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile17').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria17").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=17",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile18').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria18").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=18",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile19').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria19").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=19",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile20').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria20").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=20",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile21').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria21").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=21",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile22').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria22").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=22",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile23').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria23").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=23",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
            $('#btnUploadFile24').on('click', function () {
                var data = new FormData();
                var files = $("#fotoGaleria24").get(0).files;
                // Add the uploaded image content to the form data collection
                if (files.length > 0) {
                    data.append("GaleriaDefault", files[0]);
                }
                // Make Ajax request with the contentType = false, and procesDate = false
                var ajaxRequest = $.ajax({
                    type: "POST",
                    url: "GaleriaImagem.aspx?codEnviado=24",
                    contentType: false,
                    processData: false,
                    data: data
                });
                ajaxRequest.done(function (xhr, textStatus) {
                    // Do other operation
                });
            });
        });
    </script>

</body>
</html>
