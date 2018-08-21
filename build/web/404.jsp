<%@page import="java.util.List"%>
<%@page import="modelo.DetalleCompra"%>
<%@page import="modelo.Usuarios"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

		<meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Error 404, page not found | Beauty  - Beauty </title>
        <link rel="shortcut icon" href="images/favicon.ico">

		<!-- GOOGLE FONTS : begin -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700%7cMontserrat:400,700&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
		<!-- GOOGLE FONTS : end -->

        <!-- STYLESHEETS : begin -->
		<link rel="stylesheet" type="text/css" href="library/css/style.css">
        <link rel="stylesheet" type="text/css" href="library/css/skin/default.css">
		<link rel="stylesheet" type="text/css" href="library/css/custom.css">
		<!-- STYLESHEETS : end -->

        <!--[if lte IE 8]>
			<link rel="stylesheet" type="text/css" href="library/css/oldie.css">
			<script src="library/js/respond.min.js" type="text/javascript"></script>
        <![endif]-->
		<script src="library/js/modernizr.custom.min.js" type="text/javascript"></script>
 <%
            Usuarios user = (Usuarios) session.getAttribute("usuario");
            List<DetalleCompra> listItems = (List<DetalleCompra>) session.getAttribute("listaItems");
        %>
	</head>
	<body>

		<!-- HEADER : begin -->
	<header id="header" class="m-animated">
            <div class="header-bg">
                <div class="header-inner">
                    <!-- HEADER BRANDING : begin -->
                    <div class="header-branding">
                        <a href="index.jsp"><img src="images/logo.png" alt="Beauty" data-hires="images/logo.2x.png" width="291"></a>
                    </div>
                    <!-- HEADER BRANDING : end -->

                    <!-- HEADER NAVIGATION : begin -->
                    <div class="header-navigation">

                        <!-- HEADER MENU : begin -->
                        <nav class="header-menu">
                            <button class="header-menu-toggle" type="button"><i class="fa fa-bars"></i>MENU</button>
                            <ul>
                                <li class="m-active">
                                    <span><a href="index.jsp">Inicio</a></span>
                                </li>
                                <li>
                                    <span><a href="services.jsp">Sitio</a></span>
                                    <ul class="sub-menu">
                                        <s:url action="categorias" var="urlTag" />                                             
                                        <s:url action="productos" var="urlTagPro" >
                                            <s:param name="page">1</s:param>
                                        </s:url>                                            

                                        <li><a href="<s:property value="#urlTag"/>">Servicios</a></li>  

                                        <s:if test="#user!=null">
                                            <s:url action="listarReservas" var="listarR">
                                                <s:param name="nombreusuario">
                                                    <s:property value="#user.nombreusuario"/>
                                                </s:param>
                                            </s:url>

                                            <li><a href="<s:property value="#listarR"/>">Reporte de Reservas</a></li>
                                            </s:if>

                                        <li><a href="gallery.jsp">Galería</a></li>
                                        <li><a href="registro.jsp">Registro de Clientes</a></li>
                                        <li><a href="about-us.jsp">Acerca de nosotros</a></li>                              
                                    </ul>
                                </li>
                                <li>
                                    <span><a href="<s:property value="#urlTagPro"/>">Tienda</a></span>
                                    <ul class="sub-menu">
                                        <li><a href="<s:property value="#urlTagPro"/>">Lista de Productos</a></li>                                       
                                        <li><a href="<s:property value="#urlTagPro"/>">Carrito</a></li>                                       
                                    </ul>
                                </li>

                                <li>
                                    <span><a href="contact.jsp">Contactos</a></span>
                                </li>
                            </ul>
                        </nav>
                        <!-- HEADER MENU : end -->

                        <!-- HEADER CART : begin -->
                        <div class="header-cart">
                            <div class="header-cart-inner">
                                <%
                                    if (listItems != null) {
                                %>
                                <s:url action="carrito" var="urlTag2"/>  

                                <a href="<s:property value="#urlTag2"/>">
                                    <i class="cart-ico fa fa-shopping-cart"></i>
                                    <span class="cart-label">Carrito</span>
                                    <s:if test="#session['elementos']==null">
                                        <span class="cart-count" id="cart">(0</span>
                                    </s:if>
                                    <s:else>
                                        <span class="cart-count" id="cart">(${elementos}</span>
                                    </s:else>
                                    <span class=cart-count> elementos)</span>
                                </a>
                                <a>                                        
                                    <span class="cart-count" id="unidades">(<%
                                        if (session.getAttribute("cantidad") != null) {
                                            int c = Integer.parseInt(session.getAttribute("cantidad").toString());
                                            out.println(c);
                                        } else {
                                            out.println(0);
                                        }
                                        %></span>
                                    <span class=cart-count> unidades)</span>
                                </a>
                                <% }%>
                            </div>
                        </div>



                        <div class="header-cart">
                            <div class="header-cart-inner">
                                <%
                                    if (listItems != null) {
                                %>
                                <s:url action="servicio" var="urlServicio"/>  

                                <a href="<s:property value="#urlServicio"/>">
                                    <i class="cart-ico fa fa-address-book"></i>
                                    <span class="cart-label">Reservación</span>
                                    <s:if test="#session['cantidadSer']==null">
                                        <span class="cart-count" id="serv">(0</span>
                                    </s:if>
                                    <s:else>
                                        <span class="cart-count" id="serv">(${cantidadSer}</span>

                                    </s:else>
                                    <span class=cart-count> servicios)</span>
                                </a>
                                <a>
                                    <s:if test="#reserva!=null">
                                        <span class="cart-count" id="unidades">Fecha</span>
                                        <span class=cart-count> (<s:property value="#reserva.fechas"/>)</span>
                                    </s:if>                                  

                                </a>
                                <% }%>
                            </div>
                        </div>

                        <!-- HEADER CART : end -->

                        <!-- HEADER SEARCH : begin -->
                        <div class="header-search">
                            <div class="header-search-inner">
                                <form class="search-form" action="search-results.jsp">
                                    <i class="search-ico fa fa-search"></i>
                                    <input class="search-input" type="text" placeholder="Search for...">
                                    <button class="search-submit" type="submit"><i class="fa fa-angle-right"></i></button>
                                    <button class="search-toggle" type="button">Buscar</button>
                                </form>
                            </div>
                            <button class="search-toggle-mobile" type="button"><i class="fa"></i></button>
                        </div>
                        <!-- HEADER SEARCH : end -->

                    </div>
                    <!-- HEADER NAVIGATION : end -->

                    <!-- HEADER PANEL : begin -->
                    <div class="header-panel">

                        <button class="header-panel-toggle" type="button"><i class="fa"></i></button>

                        <!-- HEADER RESERVATION : begin -->
                        <div class="header-reservation">
                            <%
                                if (user != null) { %>                                
                            <s:if test="#reserva==null">
                                <a href="ajax/reservation-form.jsp" class="c-button m-open-ajax-modal">Haz una Reservacion</a>
                            </s:if>
                            <s:else>
                                <s:url action="eliminaReserva" var="el">
                                    <s:param name="idreserva">1</s:param>
                                </s:url>
                                <a  href="<s:property value="#el"/>" class="c-button">Eliminar Reservacion</a>
                            </s:else>

                            <%} else {%>
                            <a href="login.jsp" class="c-button" >Haz una Reservacion</a>
                            <%}%>


                        </div>
                        <!-- HEADER RESERVATION : end -->

                        <!-- HEADER CONTACT : begin -->
                        <div class="header-contact">
                            <ul>

                                <!-- PHONE : begin -->
                                <li>
                                    <div class="item-inner">
                                        <i class="ico fa fa-phone"></i>
                                        <strong>+593 96 816 9546</strong>
                                    </div>
                                </li>
                                <!-- PHONE : end -->

                                <!-- EMAIL : begin -->
                                <li>
                                    <div class="item-inner">
                                        <i class="ico fa fa-envelope-o"></i>
                                        <a href="mailto:beautycenterspabby@gmail.com">beautycenterspabby@gmail.com</a>
                                    </div>
                                </li>
                                <!-- EMAIL : end -->

                                <!-- ADDRESS : begin -->
                                <li>
                                    <div class="item-inner">
                                        <i class="ico fa fa-map-marker"></i>
                                        <strong>BEAUTY CENTER </strong><br>
                                        Babahoyo - Calle Barreiro<br>
                                        entre 10 de Agosto
                                    </div>
                                </li>
                                <!-- ADDRESS : end -->

                                <!-- HOURS : begin -->
                                <li>
                                    <div class="item-inner">
                                        <i class="ico fa fa-clock-o"></i>
                                        <dl>
                                            <dt>Lu. - Vi.:</dt>
                                            <dd>10:00 - 16:00</dd>
                                            <dt>Sa.:</dt>
                                            <dd>10:00 - 14:00</dd>
                                            <dt>Do.:</dt>
                                            <dd>Cerrado</dd>
                                        </dl>
                                    </div>
                                </li>
                                <!-- HOURS : end -->

                            </ul>
                        </div>
                        <!-- HEADER CONTACT : end -->

                        <!-- HEADER SOCIAL : begin -->
                        <div class="header-social">
                            <ul>
                                <li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <!-- HEADER SOCIAL : end -->

                    </div>
                    <!-- HEADER PANEL : end -->

                </div>
            </div>
        </header>
		<!-- HEADER : end -->

		<!-- WRAPPER : begin -->
		<div id="wrapper">

			<!-- CORE : begin -->
			<div id="core" class="core-bg-1">

				<div class="container">

					<!-- PAGE CONTENT : begin -->
					<div id="page-content">

						<!-- ERROR 404 : begin -->
						<div class="error-404">

							<!-- ERROR HEADER : begin -->
							<div class="error-header">
								<h1><span>404</span> Lo sentimos, página no encintrada.</h1>
								<p>La página que estás buscando no está disponible o fue movida.</p>
                                                                <p><s:property value="mensaje"/></p>
							</div>
							<!-- ERROR HEADER : end -->

							<div class="various-content">

								<!-- SEARCH SECTION : begin -->
								<section>
									<h2>Search the site</h2>
									<form class="c-search-form" action="search-results.jsp">
										<div class="form-fields">
											<input type="text" data-placeholder="What to search...">
											<button class="c-button" type="submit"><i class="fa fa-search"></i></button>
										</div>
									</form>
								</section>
								<!-- SEARCH SECTION : end -->

								<!-- LINKS SECTION : begin -->
								<section>
									<h2>Latest articles</h2>
									<ul>
										<li><a href="#">Maecenas nec odio et ante tincidunt</a></li>
										<li><a href="#">Curabitur ullamcorper ultricies nisi</a></li>
										<li><a href="#">Vivamus elementum semper nisi</a></li>
										<li><a href="#">Nam quam nunc, blandit vel, luctus pulvinar</a></li>
									</ul>
								</section>
								<!-- LINKS SECTION : end -->

							</div>

						</div>
						<!-- ERROR 404 : end -->

					</div>
					<!-- PAGE CONTENT : end -->

				</div>

			</div>
			<!-- CORE : end -->

			<!-- BOTTOM PANEL : begin -->
			<div id="bottom-panel">
				<div class="bottom-panel-inner">
					<div class="container">
						<div class="row">
							<div class="col-md-6">

								<!-- BOTTOM TEXT : begin -->
								<div class="bottom-text various-content">

									<h3>About Beautyspot</h3>
									<p><strong>BEAUTYSPOT</strong> is an ideal template for <strong>beauty salon, hairdressers, wellness or spa</strong>. Clean code and top-notch web design techniques are wrapped with <strong>several gorgeous color schemes</strong> to choose from.</p><p>You can buy this responsive HTML5/CSS3 template on <a href="http://themeforest.net/user/ShakespeareThemes/portfolio?ref=LubosVolovar">ThemeForest</a>.</p>

								</div>
								<!-- BOTTOM TEXT : end -->

							</div>
							<div class="col-md-6">

								<!-- BOTTOM SUBSCRIBE : begin -->
								<div class="bottom-subscribe various-content">

									<h3>Newsletter</h3>
									<p>BEAUTYSPOT supports MailChimp integration.</p>
									<form id="subscribe-form" action="http://volovar.us8.list-manage.com/subscribe/post-json?u=76a50c9454ec8ab78914d1bf2&amp;id=49e892f53d&amp;c=?" method="get">

										<!-- VALIDATION ERROR MESSAGE : begin -->
										<p style="display: none;" class="c-alert-message m-warning m-validation-error"><i class="ico fa fa-exclamation-circle"></i>Email address is required.</p>
										<!-- VALIDATION ERROR MESSAGE : end -->

										<!-- SENDING REQUEST ERROR MESSAGE : begin -->
										<p style="display: none;" class="c-alert-message m-warning m-request-error"><i class="ico fa fa-exclamation-circle"></i>There was a connection problem. Try again later.</p>
										<!-- SENDING REQUEST ERROR MESSAGE : end -->

										<!-- SUCCESS MESSAGE : begin -->
										<p style="display: none;" class="c-alert-message m-success"><i class="ico fa fa-check-circle"></i><strong>Sent successfully.</strong></p>
										<!-- SUCCESS MESSAGE : end -->

										<div class="form-fields">
											<input class="m-required m-email" name="EMAIL" type="text" data-placeholder="Your email address" title="Your email address">
											<button class="c-button submit-btn" type="submit" data-label="Subscribe" data-loading-label="Sending...">Subscribe</button>
										</div>
									</form>

								</div>
								<!-- BOTTOM SUBSCRIBE : end -->

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- BOTTOM PANEL : end -->

			<!-- FOOTER : begin -->
			<footer id="footer">
				<div class="container">

					<!-- FOOTER TWITTER : begin -->
					<div class="footer-twitter m-paginated" data-id="LubosBudkovsky" data-limit="3" data-interval="12000">
						<div class="footer-twitter-inner">
							<i class="ico fa fa-twitter"></i>
							<h4 class="twitter-title"><a href="https://twitter.com/LubosBudkovsky">@LubosBudkovsky</a></h4>
							<div class="twitter-feed">
								<span class="c-loading-anim"><span></span></span>
							</div>
						</div>
					</div>
					<!-- FOOTER TWITTER : end -->

					<!-- FOOTER BOTTOM : begin -->
					<div class="footer-bottom">
						<div class="row">
							<div class="col-md-6 col-md-push-6">

								<!-- FOOTER MENU : begin -->
								<nav class="footer-menu">
									<ul>
										<li><a href="index.jsp">Home</a></li>
										<li><a href="services.jsp">Services</a></li>
										<li><a href="documentation.jsp">Documentation</a></li>
									</ul>
								</nav>
								<!-- FOOTER MENU : end -->

							</div>
							<div class="col-md-6 col-md-pull-6">

								<!-- FOOTER TEXT : begin -->
								<div class="footer-text">
									<p>Buy this template on <a href="http://themeforest.net/user/LubosVolovar/portfolio?ref=LubosVolovar">ThemeForest.net</a></p>
								</div>
								<!-- FOOTER TEXT : end -->

							</div>
						</div>
					</div>
					<!-- FOOTER BOTTOM : end -->

				</div>
			</footer>
			<!-- FOOTER : end -->

		</div>
		<!-- WRAPPER : end -->

		<!-- SCRIPTS : begin -->
		<script src="library/js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="library/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
		<script src="library/js/jquery.ba-outside-events.min.js" type="text/javascript"></script>
		<script src="library/js/owl.carousel.min.js" type="text/javascript"></script><!-- Carousel -->
		<script src="library/js/jquery.magnific-popup.min.js" type="text/javascript"></script><!-- Lightbox -->
		<script src="library/js/library.js" type="text/javascript"></script>
		<script src="library/js/scripts.js" type="text/javascript"></script>
		<!-- SCRIPTS : end -->

	</body>
</html>