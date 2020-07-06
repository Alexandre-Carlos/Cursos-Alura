<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="StudioWebSite.Contato" %>

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

    <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

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

    <link rel="stylesheet" href="css/style.css">


    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

    <nav id="fh5co-main-nav" role="navigation">
        <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle active"><i></i></a>
        <div class="js-fullheight fh5co-table">
            <div class="fh5co-table-cell js-fullheight">
                <ul>
                    <li class="active"><a href="Default.aspx">Home</a></li>
                    <li><a href="Galeria.aspx">Galeria</a></li>
                    <li><a href="Servicos.aspx">Serviços</a></li>
                    <li><a href="Sobre.aspx">Sobre</a></li>
                    <li><a href="Contato.aspx">Contato</a></li>
                    <li><a href="Adm/Default.aspx">Adm</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="fh5co-page">
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
                            <td><a href="Galeria.aspx">Galerias</a></td>
                            <td><a href="LojaStudio.aspx">Nossa loja</a></td>
                            <td><a href="Contato.aspx">Contato</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </header>
        <div id="fh5co-map-section">
            <%--<div class="container animate-box">
                <center>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3656.3834314126266!2d-46.57813888583144!3d-23.590577884668374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5c6990757655%3A0x5f86078f7406b499!2sR.+In%C3%A1cio%2C+672+-+Vila+Prudente%2C+S%C3%A3o+Paulo+-+SP%2C+03142-001!5e0!3m2!1spt-BR!2sbr!4v1533388289256" width="800" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </center>--%>
                
                <%--<div id="map" class="fh5co-map animate-box"></div>
                <!-- END map -->--%>
            <%--</div>--%>
        </div>
        <div id="fh5co-contact-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 animate-box">
                        <h3>Endereço</h3>
                        <ul class="contact-info">
                            <li><i class="icon-location-pin"></i>Rua inácio, 672 - São Paulo</li>
                            <li><i class="icon-phone2"></i>+ 55 11 95652 4749</li>
                            <li><i class="icon-mail"></i><a href="#">zorestes@gmail.com</a></li>
                            <li><i class="icon-globe2"></i><a href="#">www.orestestatto.com.br</a></li>
                        </ul>
                    </div>
                    <div class="col-md-8 animate-box">
                        <div class="row">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3656.3834314126266!2d-46.57813888583144!3d-23.590577884668374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5c6990757655%3A0x5f86078f7406b499!2sR.+In%C3%A1cio%2C+672+-+Vila+Prudente%2C+S%C3%A3o+Paulo+-+SP%2C+03142-001!5e0!3m2!1spt-BR!2sbr!4v1533388289256" width="600" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
                            <%--<div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <textarea name="" class="form-control" id="" cols="30" rows="7" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="submit" value="Enviar Mensagem" class="btn btn-primary">
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End: fh5co-contact-section -->
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
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
    <script src="js/google_map.js"></script>

    <!-- Main JS (Do not remove) -->
    <script src="js/main.js"></script>

</body>
</html>

