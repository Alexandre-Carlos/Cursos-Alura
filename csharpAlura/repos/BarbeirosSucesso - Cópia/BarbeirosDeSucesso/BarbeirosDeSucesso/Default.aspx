<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BarbeirosDeSucesso.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Barbeiros de Sucesso</title>
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

		/*@media (min-width: 1200px)
		.section-sm {
			padding: 10px;
		}

		@media (min-width: 768px)
		.section-sm {
			padding: 10px;
		}

		.section-sm {
			padding: 10px;
		}*/
    </style>
</head>
<body>

	<!-- Modal Testemunho-->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document" style=" width: 100%; height: 92%; margin: auto;">
				<div class="modal-content">
				  <div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Testemunho</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
					  <span aria-hidden="true"></span>
					</button>
				  </div>

				  <div class="modal-body">
					<form>
					  <div class="form-group">
						<label for="recipient-name" class="col-form-label">Nome:</label>
						<input type="text" class="form-control" id="txtNome">
					  </div>
						<div class="form-group">
						<label for="recipient-name" class="col-form-label">Tipo:</label>
						<input type="text" class="form-control" id="txtTipo" placeholder="Ex: Cliente, Fornecedor, etc.">
					  </div>
					  <div class="form-group">
						<label for="message-text" class="col-form-label">Mensagem:</label>
						<textarea class="form-control" id="txtTestemunho"></textarea>
					  </div>
					</form>
				  </div>


				  <div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
					<button type="button" class="btn btn-primary" onclick="EnviarTestemunho()">Enviar</button>
				  </div>
				</div>
			  </div>
			</div>




    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div class="preloader">
      <div class="preloader-logo"><img src="images/LogoAA.png" alt="" width="151" height="44" srcset="images/LogoAA.png 2x"/>
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
            <div class="rd-navbar-aside-outer" style="background-color:#000;">
              <div class="rd-navbar-aside" >
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel" >
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle="#rd-navbar-nav-wrap-1"><span></span></button>
                  <!-- RD Navbar Brand--><a class="rd-navbar-brand" href="Default.aspx"><img src="images/Logo2.png" alt="" width="151" height="44" srcset="images/Logo2.png 2x"/></a>
                </div>
                <div class="rd-navbar-collapse" >
                  <button class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle="#rd-navbar-collapse-content-1"><span></span></button>
                  <div class="rd-navbar-collapse-content" id="rd-navbar-collapse-content-1" >
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
                      <div class="unit-body"><a class="link-default" href="tel:#">Rua Coronel Lisboa, 979 <br> Vila Clementino - São Paulo</a></div>
                    </article><a class="button button-gray-bordered button-winona" href="#">Alessandro Alves</a>
                  </div>
                </div>
              </div>
            </div>
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
      <section class="section swiper-container swiper-slider swiper-slider-minimal" data-loop="true" data-slide-effect="fade" data-autoplay="4759" data-simulate-touch="true">
        <div class="swiper-wrapper">
          <div class="swiper-slide swiper-slide_video" data-slide-bg="images/banner1.jpg">
            <div class="container">
              <div class="jumbotron-classic-content">
                <%--<div class="wow-outer">
                  <div class="title-docor-text font-weight-bold title-decorated text-uppercase wow slideInLeft text-white">Alessandro Alves</div>
                </div>
                <h1 class="text-uppercase text-white font-weight-bold wow-outer"><span class="wow slideInDown" data-wow-delay=".2s">No onononn noon nonon</span></h1>
                <p class="text-white wow-outer"><span class="wow slideInDown" data-wow-delay=".35s">nonono nononon nonononon nonononon nonoon non ononon</span></p>--%>
               <%-- <div class="wow-outer button-outer"><a class="button button-md button-primary button-winona wow slideInDown" href="#" data-wow-delay=".4s">View Properties</a></div>--%>
              </div>
            </div>
          </div>
          <div class="swiper-slide" data-slide-bg="images/banner2.jpg">
            <div class="container">
              <div class="jumbotron-classic-content">
                <%--<div class="wow-outer">
                  <div class="title-docor-text font-weight-bold title-decorated text-uppercase wow slideInLeft text-white">Easily</div>
                </div>
                <h1 class="text-uppercase text-white font-weight-bold wow-outer"><span class="wow slideInDown" data-wow-delay=".2s">Barbeiros de Sucesso</span></h1>
                <p class="text-white wow-outer"><span class="wow slideInDown" data-wow-delay=".35s">No nnnnonon nonon nononnnonononon  noonononon  noonon  noonon o</span></p>--%>
                <%--<div class="wow-outer button-outer"><a class="button button-md button-primary button-winona wow slideInDown" href="#" data-wow-delay=".4s">View properties</a></div>--%>
              </div>
            </div>
          </div>
          <div class="swiper-slide" data-slide-bg="images/banner3.jpg">
            <div class="container">
              <div class="jumbotron-classic-content">
                <%--<div class="wow-outer">
                  <div class="title-docor-text font-weight-bold title-decorated text-uppercase wow slideInLeft text-white">Salão de Cabeleleiros</div>
                </div>
                <h1 class="text-uppercase text-white font-weight-bold wow-outer"><span class="wow slideInDown" data-wow-delay=".2s">Experience</span></h1>
                <p class="text-white wow-outer"><span class="wow slideInDown" data-wow-delay="Nononono  noononononon nonononononononono nnon no nono nononononononononon  onoon .</span></p>--%>
                <%--<div class="wow-outer button-outer"><a class="button button-md button-primary button-winona wow slideInDown" href="#" data-wow-delay=".4s">View properties</a></div>--%>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination-outer container">
          <div class="swiper-pagination swiper-pagination-modern swiper-pagination-marked" data-index-bullet="true"></div>
        </div>
      </section>
      <section class="section novi-background section-md text-center">
        <div class="container">
          <h3 class="text-uppercase font-weight-bold wow-outer"><span class="wow slideInDown">Próximos eventos</span></h3>
          <div class="row row-lg-50 row-35 offset-top-2">
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#">
                  <img src="images/eventos/1808.jpg" alt="" width="571" height="353"/></a>
                  <div style="display:grid; margin-top:5px;">
                    <h4 class="post-modern-title"><a class="post-modern-title" href="#">Platinum Litoral</a></h4>
                    <a class="button button-primary button-winona button-md" href="DetalhesEvento.aspx" style="padding:13px; margin:0px;">Comprar</a>  
                  </div>
                  
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
             <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#">
                 <img src="images/eventos/0650.jpg" alt="" width="571" height="353"/></a>
                 <div style="display:grid; margin-top:5px;">
                    <h4 class="post-modern-title"><a class="post-modern-title" href="#">Wordshop Barber Therapy Premium</a></h4>
                    <a class="button button-primary button-winona button-md" href="DetalhesEvento.aspx" style="padding:13px; margin:0px;">Comprar</a>  
                  </div>
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
             <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#">
                 <img src="images/eventos/0505.jpg" alt="" width="571" height="353"/></a>
                 <div style="display:grid; margin-top:5px;">
                    <h4 class="post-modern-title"><a class="post-modern-title" href="#">Business - Cortes na tesoura</a></h4>
                    <a class="button button-primary button-winona button-md" href="DetalhesEvento.aspx" style="padding:13px; margin:0px;">Comprar</a>  
                  </div>
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
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="#">
                  <img src="images/eventos/2804.jpg" alt="" width="571" height="353"/></a>
                  <div style="display:grid; margin-top:5px;">
                    <h4 class="post-modern-title"><a class="post-modern-title" href="#">Protese Capilar</a></h4>
                    <a class="button button-primary button-winona button-md" href="DetalhesEvento.aspx" style="padding:13px; margin:0px;">Comprar</a>  
                  </div>
                <ul class="post-modern-meta">
                  <li><a class="button-winona" href="#">R$ 000,00</a></li>
                  <li>São Paulo</li>
                  <li>1 dias</li>
                </ul>
                <p>Nonono  nnonono noonon nonoono  no no no nnono</p>
              </article>
            </div>
            <div class="col-md-12 wow-outer"><a class="button button-primary button-winona button-md" href="Eventos.aspx">Visualizar mais eventos</a></div>
          </div>
        </div>
      </section>
      <%--<section class="section novi-background section-lg bg-gray-100">
        <div class="container">
          <div class="row row-30">
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Box Minimal-->
              <article class="box-minimal">
                <div class="box-chloe__icon novi-icon linearicons-user wow fadeIn"></div>
                <div class="box-minimal-main wow-outer">
                  <h4 class="box-minimal-title wow slideInDown">Qualified Employees</h4>
                  <p class="wow fadeInUpSmall">Our team consists of more than 20 qualified and experienced real estate brokers and property managers ready to help you.</p>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Box Minimal-->
              <article class="box-minimal">
                <div class="box-chloe__icon novi-icon linearicons-bubble-text wow fadeIn" data-wow-delay=".1s"></div>
                <div class="box-minimal-main wow-outer">
                  <h4 class="box-minimal-title wow slideInDown" data-wow-delay=".1s">Free Consultations</h4>
                  <p class="wow fadeInUpSmall" data-wow-delay=".1s">Our acquaintance with a client always begins with a free consultation to find out what kind of property they are looking for.</p>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Box Minimal-->
              <article class="box-minimal">
                <div class="box-chloe__icon novi-icon linearicons-star wow fadeIn" data-wow-delay=".2s"></div>
                <div class="box-minimal-main wow-outer">
                  <h4 class="box-minimal-title wow slideInDown" data-wow-delay=".2s">100% Guaranteed</h4>
                  <p class="wow fadeInUpSmall" data-wow-delay=".2s">All the results that you get from our realtors are 100% guaranteed to offer you the best choice of properties throughout the USA.</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>--%>
      <!-- Services-->
      <section class="section novi-background section-lg text-center">
        <div class="container">
          <h3 class="text-uppercase">Lotes de Ingressos</h3>
          <p><span class="text-width-1">Compre seu ingresso antecipadamente e aproveite os descontos.</span></p>
          <div class="row row-35 row-xxl-70 offset-top-2">
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/Logo-600x600.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Evento 1</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/Logo-600x600.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Evento 2</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/Logo-600x600.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Evento 3</a></h4>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light"><a class="thumbnail-light-media" href="#"><img class="thumbnail-light-image" src="images/Logo-600x600.jpg" alt="" width="270" height="300"/></a>
                <h4 class="thumbnail-light-title"><a href="#">Evento 4</a></h4>
              </article>
            </div>
            <%--<div class="col-md-12 wow-outer"><a class="button button-primary button-winona button-md" href="#">view all properties</a></div>--%>
          </div>
        </div>
      </section>
      <section class="section novi-background section-lg text-center bg-gray-100">
        <div class="container">
          <h3 class="text-uppercase wow-outer"><span class="wow slideInUp">Palestrantes</span></h3>
          <div class="row row-lg-50 row-35 row-xxl-70 justify-content-center justify-content-lg-start">
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/Pal1.png" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">Nathalie Porter</a></h5>
                  <p class="profile-creative-position">Nonono nonon</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>Nononno nono nnon onon onon onon ono no </p>
                </div>
              </article>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft" data-wow-delay=".2s">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/Pal2.png" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">Alessandro Alves</a></h5>
                  <p class="profile-creative-position">nonon noo</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>Nonno nononon ononon  no o nonono nonononononono no n on on on n </p>
                </div>
              </article>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/Pal3.png" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">Brian Payne</a></h5>
                  <p class="profile-creative-position">Nononono</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>Nonnonononon noonono no no nono on onono</p>
                </div>
              </article>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer">
              <!-- Profile Creative-->
              <article class="profile-creative wow slideInLeft" data-wow-delay=".2s">
                <figure class="profile-creative-figure"><img class="profile-creative-image" src="images/Pal4.png" alt="" width="270" height="273"/>
                </figure>
                <div class="profile-creative-main">
                  <h5 class="profile-creative-title"><a href="#">Marie Fernandez</a></h5>
                  <p class="profile-creative-position">nononon</p>
                  <div class="profile-creative-contacts">
                    <div class="object-inline"><span class="icon novi-icon icon-md mdi mdi-phone"></span><a href="tel:#">1-800-1324-567</a></div>
                  </div>
                  <p>No noononononon nononon nononnonon nonon  ononoonon non</p>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>
      <!-- Best offer-->
      <%--<section class="section novi-background section-1 bg-primary-darker text-center" style="background-image: url(images/bg-1-1920-455.jpg);">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-10 col-lg-7 col-xl-6">
              <h3 class="wow-outer"><span class="wow slideInDown text-uppercase">Best offers</span></h3>
              <p class="heading-subtitle">of September</p>
              <p class="wow-outer offset-top-4"><span class="wow slideInDown" data-wow-delay=".05s">With a variety of accountants available at our company, you can always choose one that fits your corporate requirements.</span></p>
              <div class="wow-outer button-outer"><a class="button button-primary-white button-winona wow slideInDown" href="#" data-wow-delay=".1s">Read more</a></div>
            </div>
          </div>
        </div>
      </section>--%>
      <section class="section novi-background section-lg text-center">
        <div class="container"  runat="server">
          <h3 class="wow-outer">
			  <span class="wow slideInDown text-uppercase">
				  Testemunhos

			  </span>

          </h3>
          <!-- Owl Carousel-->
          <div  runat="server" id="lista" class="owl-carousel wow fadeIn" data-items="1" data-md-items="2" data-lg-items="3" data-dots="true" data-nav="false" data-loop="true" data-autoplay="true" data-autoplay-speed="731" data-autoplay-timeout="4268" data-margin="30" data-stage-padding="0" data-mouse-drag="false" >
			  
			  
                
              


          </div>
        </div>
      </section>
		<section class="section novi-background section-lg text-center">
			<%--<div class="container">--%>
				<%--<div class="row row-35 row-xxl-70 offset-top-2">--%>
					<%--<div class="col-md-12 wow-outer">--%>
						<button type="button" class="button button-primary button-winona button-md" data-toggle="modal" data-target="#exampleModal">Criar Testemunho</button>

					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			  
		</section>
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
                  <p class="post-inline-title"><a href="#">Rua Coronel Lisboa, 979 <br> Vila Clementino - São Paulo</a></p>
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
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-1.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-1-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-2.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-2-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-3.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-3-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-4.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-4-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-5.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-5-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-6.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-6-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"> </div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-7.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-7-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
                  <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="images/gallery-original-8.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="images/footer-gallery-8-85x85.jpg" alt=""/>
                      <div class="thumbnail-minimal-caption"></div></a></div>
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
          <hr/>
        </div>
      </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>

    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
	<!-- Sweet Alert-->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script>
		
		function EnviarTestemunho() {
			
			var nome = $('#txtNome').val();
			var tipo = $('#txtTipo').val();
			var testemunho = $('#txtTestemunho').val();

			var objeto = new Object();
			objeto.nome = nome;
			objeto.tipo = tipo;
			objeto.testemunho = testemunho;

			var parametros = JSON.stringify(objeto);

			$.ajax({
				type: "POST",
				url: "Default.aspx/EnviarTestemunho",
				contentType: "application/json; charset=utf-8",
				data: parametros,
				dataType: "json",
				success: function (resposta) {
					$('.modal').modal('hide'); 
					swal("Testemunho enviado com sucesso!", "Agradecemos seu depoimento :) \nAguardando aprovação!");
					
				},
				failure: function (erro) {
					alert("Ocorreu um erro!");
				}
			});
		}


	</script>
  </body>
</html>
