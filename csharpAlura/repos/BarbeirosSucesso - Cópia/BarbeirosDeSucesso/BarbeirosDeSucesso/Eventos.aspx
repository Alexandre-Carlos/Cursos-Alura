<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="BarbeirosDeSucesso.Eventos" %>

<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<head>
    <title>Eventos</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width height=device-height initial-scale=1.0 maximum-scale=1.0 user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800%7CPoppins:300,400,700">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css" id="main-styles-link">
    <style>
        .ie-panel {
            display: none;
            background: #212121;
            padding: 10px 0;
            box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);
            clear: both;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {
            display: block;
        }
    </style>
    <script language="javascript">
        function EventosAntigos(div) {
            var display = document.getElementById(div).style.display;
            if (display == "none")
                document.getElementById(div).style.display = 'block';
            else
                document.getElementById(div).style.display = 'none';

        }

    </script>
</head>
<body>
    <div class="ie-panel">
        <a href="http://windows.microsoft.com/en-US/internet-explorer/">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a>
    </div>
<%--    <div class="preloader">
        <div class="preloader-logo">
            <img src="images/LogoAA.png" alt="" width="151" height="44" srcset="images/LogoAA.png 2x" />
        </div>
        <div class="preloader-body">
            <div id="loadingProgressG">
                <div class="loadingProgressG" id="loadingProgressG_1"></div>
            </div>
        </div>
    </div>--%>
    <div class="page">
        <!-- Page Header-->
        <header class="section novi-background page-header">
            <!-- RD Navbar-->
            <div class="rd-navbar-wrap">
                <nav class="rd-navbar rd-navbar-corporate" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-lg-stick-up="true" data-lg-stick-up-offset="118px" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xl-stick-up="true" data-xl-stick-up-offset="118px" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-xxl-stick-up-offset="118px" data-xxl-stick-up="true">
                    <!-- Início do topo -->
                    <div class="rd-navbar-aside-outer" style="background-color: #000;">
                        <div class="rd-navbar-aside">
                            <!-- RD Navbar Panel-->
                            <div class="rd-navbar-panel">
                                <!-- RD Navbar Toggle-->
                                <button class="rd-navbar-toggle" data-rd-navbar-toggle="#rd-navbar-nav-wrap-1"><span></span></button>
                                <!-- RD Navbar Brand-->
                                <a class="rd-navbar-brand" href="index.html">
                                    <img src="images/Logo2.png" alt="" width="151" height="44" srcset="images/Logo2.png 2x" /></a>
                            </div>
                            <div class="rd-navbar-collapse">
                                <button class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle="#rd-navbar-collapse-content-1"><span></span></button>
                                <div class="rd-navbar-collapse-content" id="rd-navbar-collapse-content-1">
                                    <article class="unit align-items-center">
                                        <div class="unit-left"><span class="icon novi-icon icon-md icon-modern mdi mdi-phone"></span></div>
                                        <div class="unit-body">
                                            <ul class="list-0">
                                                <li><a class="link-default" href="tel:#">55 11 99634-1987</a></li>
                                                <%-- <li><a class="link-default" href="tel:#">1-800-8763-765</a></li>--%>
                                            </ul>
                                        </div>
                                    </article>
                                    <article class="unit align-items-center">
                                        <div class="unit-left"><span class="icon novi-icon icon-md icon-modern mdi mdi-map-marker"></span></div>
                                        <div class="unit-body">
                                            <a class="link-default" href="tel:#">Rua Coronel Lisboa, 979
                                            <br>
                                                Vila Clementino - São Paulo</a>
                                        </div>
                                    </article>
                                    <a class="button button-gray-bordered button-winona" href="#">Alessandro Alves</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- final do topo -->
                    <div class="rd-navbar-main-outer">
                        <div class="rd-navbar-main">
                            <div class="rd-navbar-nav-wrap" id="rd-navbar-nav-wrap-1">
                                <!-- RD Navbar Nav-->
                                <ul class="rd-navbar-nav">
                                    <li class="rd-nav-item active"><a class="rd-nav-link" href="Default.aspx">Home</a>
                                    </li>
                                    <li class="rd-nav-item"><a class="rd-nav-link" href="Sobre.aspx">Sobre</a>
                                    </li>
                                    <li class="rd-nav-item"><a class="rd-nav-link" href="Eventos.aspx">Eventos</a>
                                    </li>
                                    <li class="rd-nav-item"><a class="rd-nav-link" href="Cursos.aspx">Cursos</a>
                                    </li>
                                    <li class="rd-nav-item"><a class="rd-nav-link" href="Contatos.aspx">Contato</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </header>
        <!-- Breadcrumbs -->
        <section class="section novi-background breadcrumbs-custom bg-image context-dark" style="background-image: url(images/bannerevento.jpg);">
            <div class="breadcrumbs-custom-inner">
                <div class="container breadcrumbs-custom-container">
                    <%--<div class="breadcrumbs-custom-main">
                        <h6 class="breadcrumbs-custom-subtitle title-decorated">Typography</h6>
                        <h2 class="text-uppercase breadcrumbs-custom-title">Typography</h2>
                    </div>
                    <ul class="breadcrumbs-custom-path">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Typography</li>
                    </ul>--%>
                </div>
            </div>
        </section>
        
        
        <section class="section novi-background section-md text-center">
        <div class="container">
          <h3 class="text-uppercase font-weight-bold wow-outer"><span class="wow slideInDown">Nossos eventos</span></h3>
          <div class="row row-lg-50 row-35 offset-top-2">
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#"><img src="images/eventos/1808.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a class="post-modern-title" href="#">Platinum Litoral</a></h4>
                <ul class="post-modern-meta">
                  <li><a class="button-winona" href="#">R$ 000,00</a></li>
                  <li>São Paulo</li>
                  <li>1 dias</li>
                </ul>
                <p>Nonono  nnonono noonon nonoono  no no no nnono</p>
              </article>
            </div>
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
             <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#"><img src="images/eventos/0650.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a class="post-modern-title" href="#">Wordshop Barber Therapy Premium</a></h4>
                <ul class="post-modern-meta">
                  <li><a class="button-winona" href="#">R$ 000,00</a></li>
                  <li>São Paulo</li>
                  <li>1 dias</li>
                </ul>
                <p>Nonono  nnonono noonon nonoono  no no no nnono</p>
              </article>
            </div>
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
             <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#"><img src="images/eventos/0505.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a class="post-modern-title" href="#">Business - Cortes na tesoura</a></h4>
                <ul class="post-modern-meta">
                  <li><a class="button-winona" href="#">R$ 000,00</a></li>
                  <li>São Paulo</li>
                  <li>1 dias</li>
                </ul>
                <p>Nonono  nnonono noonon nonoono  no no no nnono</p>
              </article>
            </div>
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#"><img src="images/eventos/2804.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a class="post-modern-title" href="#">Protese Capilar</a></h4>
                <ul class="post-modern-meta">
                  <li><a class="button-winona" href="#">R$ 000,00</a></li>
                  <li>São Paulo</li>
                  <li>1 dias</li>
                </ul>
                <p>Nonono  nnonono noonon nonoono  no no no nnono</p>
              </article>
            </div>
            <div class="col-md-12 wow-outer"><a class="button button-primary button-winona button-md" onClick="EventosAntigos('DivEveAnt');">Eventos Antigos</a></div>
          </div>
        </div>
      </section>
        
        <!-- Eventos antigos-->
        <section class="section novi-background section-md text-center">
        <div class="container" id="DivEveAnt" style="display:none;">
          <h3 class="text-uppercase font-weight-bold wow-outer"><span class="wow slideInDown">Evntos que já aconteceram</span></h3>
          <div class="row row-lg-50 row-35 offset-top-2">
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#"><img src="images/eventos/1303.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a class="post-modern-title" href="#">Platinum Litoral</a></h4>
                <ul class="post-modern-meta">
                  <li><a class="button-winona" href="#">R$ 000,00</a></li>
                  <li>São Paulo</li>
                  <li>1 dias</li>
                </ul>
                <p>Nonono  nnonono noonon nonoono  no no no nnono</p>
              </article>
            </div>
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
             <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#"><img src="images/eventos/2701.jpg" alt="" width="571" height="353"/></a>
                <h4 class="post-modern-title"><a class="post-modern-title" href="#">Barbeiros de sucesso Gold</a></h4>
                <ul class="post-modern-meta">
                  <li><a class="button-winona" href="#">R$ 000,00</a></li>
                  <li>São Paulo</li>
                  <li>1 dias</li>
                </ul>
                <p>Nonono  nnonono noonon nonoono  no no no nnono</p>
              </article>
            </div>
          
          </div>
        </div>
      </section>
        <!-- Fim dos eventos antigos

        <!-- Page Footer-->
        <footer class="section novi-background footer-advanced bg-gray-700">
            <div class="footer-advanced-main">
                <div class="container">
                    <div class="row row-50">
                        <div class="col-lg-4">
                            <h5 class="font-weight-bold text-uppercase text-white">Sobre nossos eventos</h5>
                            <p class="footer-advanced-text">No nononononono no no no o nonno no  nono nono onn onono onoononononono  noononnnooonononono no no no o nonno no  nono nono onn onono onoononononono  noononnnooonononono no no no o nonno no  nono nono onn onono onoononononono  noononnnooonononono no no no o nonno no  nono nono onn onono onoononononono  noononnnooonononono no no no o nonno no  nono nono onn onono onoononononono  noononnnoo  </p>
                        </div>
                        <div class="col-sm-7 col-md-5 col-lg-4">
                            <h5 class="font-weight-bold text-uppercase text-white">Nossa localização</h5>
                            <!-- Post Inline-->
                            <article class="post-inline">
                                <p class="post-inline-title"><a href="#">Rua Coronel Lisboa, 979
                                    <br>
                                    Vila Clementino - São Paulo</a></p>
                                <ul class="post-inline-meta">
                                    <%--<li>by Mike Barnes</li>
                    <li><a href="#">2 days ago</a></li>--%>
                                </ul>
                            </article>
                            <!-- Post Inline-->
                            <article class="post-inline">
                                <p class="post-inline-title"><a href="#">55 11 99634-1987</a></p>
                                <ul class="post-inline-meta">
                                    <%--<li>by Mike Barnes</li>
                    <li><a href="#">2 days ago</a></li>--%>
                                </ul>
                            </article>
                        </div>
                        <div class="col-sm-5 col-md-7 col-lg-4">
                            <h5 class="font-weight-bold text-uppercase text-white">Galeria</h5>
                            <div class="row row-x-10" data-lightgallery="group">
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-1.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-1-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-2.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-2-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-3.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-3-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-4.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-4-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-5.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-5-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-6.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-6-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-7.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-7-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                                <div class="col-3 col-sm-4 col-md-3">
                                    <a class="thumbnail-minimal" href="images/gallery-original-8.jpg" data-lightgallery="item">
                                        <img class="thumbnail-minimal-image" src="images/footer-gallery-8-85x85.jpg" alt="" />
                                        <div class="thumbnail-minimal-caption"></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-advanced-aside">
                <div class="container">
                    <div class="footer-advanced-layout">
                        <div>
                            <ul class="list-nav">
                                <li><a href="Default.aspx">Home</a></li>
                                <li><a href="Sobre.aspx">Sobre</a></li>
                                <li><a href="Eventos.aspx">Eventos</a></li>
                                <li><a href="Cursos.aspx">Cursos</a></li>
                                <li><a href="Contatos.aspx">Contatos</a></li>
                            </ul>
                        </div>
                        <div>
                            <ul class="foter-social-links list-inline list-inline-md">
                                <li><a class="icon novi-icon icon-sm link-default mdi mdi-facebook" href="#"></a></li>
                                <li><a class="icon novi-icon icon-sm link-default mdi mdi-twitter" href="#"></a></li>
                                <li><a class="icon novi-icon icon-sm link-default mdi mdi-instagram" href="#"></a></li>
                                <li><a class="icon novi-icon icon-sm link-default mdi mdi-google" href="#"></a></li>
                                <li><a class="icon novi-icon icon-sm link-default mdi mdi-linkedin" href="#"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr />
            </div>
        </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
