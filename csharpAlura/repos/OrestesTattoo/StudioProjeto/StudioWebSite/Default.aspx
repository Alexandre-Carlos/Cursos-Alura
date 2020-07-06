<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudioWebSite.Default1" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Orestes &mdash; Studio Tattoo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />


    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700" rel="stylesheet"> -->

    <!-- Animate.css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- animatedresponsiveImagegrid  -->
    <link rel="stylesheet" href="css/animatedresponsiveImagegrid.css">
    <!-- Magnifoc Popup  -->
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/style.css">


    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

    <script>
        function AbreGaleria() {
            alert("passa");
            window.open("Galeria.aspx");
        }
    </script>

</head>
<body>

    <div id="fh5co-page" style="background: #000; color: white;">
        <header>
            <div class="container" style="background: black; color: white">
                <div class="fh5co-navbar-brand">
                    <h2 class="tituloFont_Orestes">Orestes</h2>
                    <br />
                    <h2 class="tituloFont_Tattoo">Tattoo</h2>
                    <br />
                </div>
                <div>
                    <table style="width: 100%; text-align: center;">
                        <tr>
                            <td><a href="Default.aspx">Home</a></td>
                            <td><a href="#MeusServicos">Galerias</a></td>
                            <td><a href="LojaStudio.aspx">Nossa loja</a></td>
                            <td><a href="Contato.aspx">Contato</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </header>
        <div id="fh5co-photos-section">
            <div class="container">
                <div id="ri-grid" class="ri-grid animate-box">
                    <img class="ri-loading-image" src="images/loading.gif" />
                    <ul>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic1.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic2.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic3.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic4.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic5.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic6.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic7.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic8.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic9.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic10.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic11.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic12.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic13.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic14.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic15.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic16.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic17.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic18.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic19.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic20.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic21.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic22.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic23.jpg" /></a></li>
                        <li><a href="#">
                            <img src="GaleriaDefault/pic24.jpg" /></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="fh5co-services-section">

            <div class="container" id="MeusServicos">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center animate-box ">
                        <div class="heading-section">
                            <h2 style="color: white;">Serviços</h2>
                            <p>As mais diversas tatuagens, todo tipo de desenho</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span><i class="icon-camera2" style="color: #000;"></i></span>
                            <h3>Fotos Tatuagem</h3>
                            <p>Galeria de fotos com nossas tatuagens</p>
                            <br />
                            <span style="margin-top:270px;">
                                <a href="Galeria.aspx" style="color:#000" id="lnkGaleria">Ver galeria</a>
                            </span>
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span><i class="icon-camera2" style="color: #000;"></i></span>
                            <h3>Fotos Piercing</h3>
                            <p>Galeria de fotos das nossas tatuagens. </p>
                            <br />
                            <span style="margin-top:270px;">
                                <a href="GaleriaPiercing.aspx" style="color:#000" id="lnkGaleriaPiercing">Ver galeria</a>
                            </span>
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span><i class="icon-store" style="color: #000;"></i></span>
                            <h3>Nossa loja</h3>
                            <p>Conheça os produtos que vendemos em nosso studio.</p>
                            <br />
                            <span style="margin-top:270px;">
                                <a href="GaleriaPiercing.aspx" style="color:#000" id="lnkLoja">Ver loja</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <footer>
            <div id="footer">
                <!-- #include file="Rodape.html -->
            </div>
        </footer>

    </div>

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Counters -->
    <script src="js/jquery.countTo.js"></script>
    <!-- gridrotator -->
    <script type="text/javascript" src="js/jquery.gridrotator.js"></script>
    <!-- Magnific Popup -->
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>

    <!-- Main JS (Do not remove) -->
    <script src="js/main.js"></script>

    <script type="text/javascript">
        $(function () {

            $('#ri-grid').gridrotator({
                rows: 3,
                // number of columns 
                columns: 6,
                w1024: { rows: 3, columns: 5 },
                w768: { rows: 3, columns: 4 },
                w480: { rows: 3, columns: 3 },
                w320: { rows: 2, columns: 2 },
                w240: { rows: 1, columns: 1 },
                preventClick: false
            });

        });


	</script>

</body>
</html>

