<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="BarbeirosDeSucesso.Sobre" %>

<!DOCTYPE html>

<html class="wide wow-animation" lang="en">
<head>
    <title>Sobre</title>
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
</head>
<body>
    <div class="preloader">
        <div class="preloader-logo">
            <img src="images/LogoAA.png" alt="" width="151" height="44" srcset="images/LogoAA.png 2x" />
        </div>
        <div class="preloader-body">
            <div id="loadingProgressG">
                <div class="loadingProgressG" id="loadingProgressG_1"></div>
            </div>
        </div>
    </div>
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
                    <!-- início do menu-->
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
                    <!-- fim do menu -->
                </nav>
            </div>
        </header>
        <!-- Breadcrumbs -->
        <section class="section novi-background breadcrumbs-custom bg-image context-dark" style="background-image: url(images/banner3.jpg);">
            <div class="breadcrumbs-custom-inner">
                <div class="container breadcrumbs-custom-container">
                </div>
            </div>
        </section>
        <!-- Working at CaseCraft-->
        <section class="section novi-background section-lg">
            <div class="container">
                <div class="row row-50 justify-content-center justify-content-lg-between flex-lg-row-reverse">
                    <div class="col-md-10 col-lg-6 col-xl-5">
                        <h3 class="text-uppercase">Quem somos</h3>
                        <p class="about-subtitle">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru eiusmod tempor incididunt ut labore et.</p>
                        <%-- <a class="button button-lg button-primary button-winona" href="about-us.html">View properties</a>--%>
                    </div>
                    <div class="col-md-10 col-lg-6 col-xl-6">
                        <img class="img-responsive" src="images/banner2.jpg" alt="" width="570" height="388" />
                    </div>
                </div>
            </div>
        </section>
        <!-- Advantages and Achievements-->
        <section class="section novi-background section-md text-center bg-gray-100">
            <div class="container">
                <h3 class="text-uppercase wow-outer"><span class="wow slideInUp">Conheça nossos números</span></h3>
                <p class="wow-outer"><span class="text-width-1 wow slideInDown">Para ter uma ideia dos nossos números.</span></p>
                <div class="row row-50">
                    <div class="col-6 col-md-3 wow-outer">
                        <!-- Counter Minimal-->
                        <article class="counter-minimal wow slideInUp" data-wow-delay=".1s">
                            <div class="counter-minimal-icon box-chloe__icon novi-icon linearicons-users2"></div>
                            <div class="counter-minimal-main">
                                <div class="counter">12</div>
                            </div>
                            <h5 class="counter-minimal-title">Quatidade de palestras</h5>
                        </article>
                    </div>
                    <div class="col-6 col-md-3 wow-outer">
                        <!-- Counter Minimal-->
                        <article class="counter-minimal wow slideInUp" data-wow-delay=".1s">
                            <div class="counter-minimal-icon box-chloe__icon novi-icon linearicons-home-icon3"></div>
                            <div class="counter-minimal-main">
                                <div class="counter">238</div>
                            </div>
                            <h5 class="counter-minimal-title">Alunos formados</h5>
                        </article>
                    </div>
                    <div class="col-6 col-md-3 wow-outer">
                        <!-- Counter Minimal-->
                        <article class="counter-minimal wow slideInUp" data-wow-delay=".1s">
                            <div class="counter-minimal-icon box-chloe__icon novi-icon linearicons-star"></div>
                            <div class="counter-minimal-main">
                                <div class="counter">19</div>
                            </div>
                            <h5 class="counter-minimal-title">Anos de experiência</h5>
                        </article>
                    </div>
                    <div class="col-6 col-md-3 wow-outer">
                        <!-- Counter Minimal-->
                        <article class="counter-minimal wow slideInUp" data-wow-delay=".1s">
                            <div class="counter-minimal-icon box-chloe__icon novi-icon linearicons-apartment"></div>
                            <div class="counter-minimal-main">
                                <div class="counter">54</div>
                            </div>
                            <h5 class="counter-minimal-title">Qualificações</h5>
                        </article>
                    </div>
                </div>
            </div>
        </section>
        <%--<section class="section novi-background section-lg text-center">
            <div class="container">
                <h3 class="text-uppercase wow-outer"><span class="wow slideInUp">Our Team</span></h3>
                <div class="row row-50 row-xxl-70 justify-content-center justify-content-lg-start">
                    <div class="col-md-10 col-lg-6 wow-outer">
                        <!-- Profile Creative-->
                        <article class="profile-creative wow slideInLeft">
                            <figure class="profile-creative-figure">
                                <img class="profile-creative-image" src="images/team-1-270x273.jpg" alt="" width="270" height="273" />
                            </figure>
                            <div class="profile-creative-main">
                                <h5 class="profile-creative-title"><a href="#">Nathalie Porter</a></h5>
                                <p class="profile-creative-position">Founder, Broker</p>
                                <div class="profile-creative-contacts">
                                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                                </div>
                                <p>Ms. Porter founded our company in 1989 with a vision to help guests and residents of the USA to easily find and buy or rent real estate in all 50 states.</p>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-10 col-lg-6 wow-outer">
                        <!-- Profile Creative-->
                        <article class="profile-creative wow slideInLeft" data-wow-delay=".2s">
                            <figure class="profile-creative-figure">
                                <img class="profile-creative-image" src="images/team-2-270x273.jpg" alt="" width="270" height="273" />
                            </figure>
                            <div class="profile-creative-main">
                                <h5 class="profile-creative-title"><a href="#">John Thompson</a></h5>
                                <p class="profile-creative-position">Sales Associate</p>
                                <div class="profile-creative-contacts">
                                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                                </div>
                                <p>John has been in sales and marketing for the past 15 years. He has excellent knowledge about the local market both residential and commercial.</p>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-10 col-lg-6 wow-outer">
                        <!-- Profile Creative-->
                        <article class="profile-creative wow slideInLeft">
                            <figure class="profile-creative-figure">
                                <img class="profile-creative-image" src="images/team-3-270x273.jpg" alt="" width="270" height="273" />
                            </figure>
                            <div class="profile-creative-main">
                                <h5 class="profile-creative-title"><a href="#">Brian Payne</a></h5>
                                <p class="profile-creative-position">Realtor</p>
                                <div class="profile-creative-contacts">
                                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                                </div>
                                <p>Brian is not only a Licensed Realtor but also holds the Title Producers and Mortgage Licenses, which makes him a very knowledgeable real estate expert.</p>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-10 col-lg-6 wow-outer">
                        <!-- Profile Creative-->
                        <article class="profile-creative wow slideInLeft" data-wow-delay=".2s">
                            <figure class="profile-creative-figure">
                                <img class="profile-creative-image" src="images/team-4-270x273.jpg" alt="" width="270" height="273" />
                            </figure>
                            <div class="profile-creative-main">
                                <h5 class="profile-creative-title"><a href="#">Marie Fernandez</a></h5>
                                <p class="profile-creative-position">Broker</p>
                                <div class="profile-creative-contacts">
                                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                                </div>
                                <p>Marie’s goal is to provide clients with the highest level of marketing expertise and customer service to help them reach their uppermost real estate goals.</p>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </section>--%>
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
                                <p class="post-inline-title">
                                    <a href="#">Rua Coronel Lisboa, 979
                                    <br>
                                        Vila Clementino - São Paulo</a>
                                </p>
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
