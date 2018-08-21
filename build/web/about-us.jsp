<%@page import="java.util.List"%>
<%@page import="modelo.DetalleCompra"%>
<%@page import="modelo.Usuarios"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>beaty</title>
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

                <!-- PAGE HEADER : begin -->
                <div id="page-header">
                    <div class="container">
                        <h1>Acerca de nosotros</h1>
                        <ul class="breadcrumbs">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="about-us.jsp">Spa</a></li>
                            <li>Acerca de nosostros</li>
                        </ul>
                    </div>
                </div>
                <!-- PAGE HEADER : begin -->

                <div class="container">

                    <!-- PAGE CONTENT : begin -->
                    <div id="page-content">
                        <div class="various-content">

                            <!-- INTRO SECTION : begin -->
                            <section>

                                <div class="row">
                                    <div class="col-sm-6">

                                        <p>El Spa Beauty Center es un nuevo y exclusivo Centro de Bienestar ubicado en la ciudad de Babahoyo.</p>
                                        <p>Es un espacio de reposo, tranquilidad y armonía, donde es posible alcanzar un estado de relajación y recuperar energías a través de variadas terapias y tratamientos que brindan un equilibrio físico, mental y emocional.</p>
                                        <div></div>
                                        <br>

                                    </div>
                                    <div class="col-sm-6">

                                        <p><img src="images/about_us.jpg" alt=""></p>

                                    </div>
                                </div>

                            </section>
                            <!-- INTRO SECTION : end -->

                            <!-- TEAM SECTION : begin -->
                            <section>

                                <h2>NUESTRAS COLABORADORAS</h2>
                                <div class="row">
                                    <div class="col-sm-6">

                                        <!-- TEAM MEMBER : begin -->
                                        <div class="c-team-member m-has-portrait">
                                            <div class="member-inner">
                                              <p class="member-portrait"><span><img src="images/team_member_01.jpg" alt=""></span></p>
                                                <h4 class="member-name">Nikki BRICIO</h4>
                                                <h3 class="member-role">Cosmetologa</h3>
                                              <div class="member-description">
                                                    <p>Proporcionan tratamientos faciales y corporales, asesoran a los clientes en su apariencia personal, maneras, etiquetas y comportamiento, realizan maquillaje facial y corporal.                                                    </p>
                                                </div>
</div>
                                        </div>
                                        <!-- TEAM MEMBER : end -->

                                    </div>
                                    <div class="col-sm-6">

                                        <!-- TEAM MEMBER : begin -->
                                        <div class="c-team-member m-has-portrait">
                                            <div class="member-inner">
                                                <p class="member-portrait"><span><img src="images/team_member_02.jpg" alt=""></span></p>
                                                <h4 class="member-name">Angela ARIAS</h4>
                                                <h3 class="member-role">Estilista</h3>
                                                <div class="member-description">
                                                    <p> Dinámica y creativa pues no solo se trata de repetir estilo de cortes o peinados si no de buscar la manera de realzar la imagen de las personas.</p>
                                                </div>
</div>
                                        </div>
                                        <!-- TEAM MEMBER : end -->

                                    </div>
                                </div>

                                <hr class="c-divider m-transparent m-x-small display-none-sm">

                                <div class="row">
                                    <div class="col-sm-6">

                                        <!-- TEAM MEMBER : begin -->
                                        <div class="c-team-member m-has-portrait">
                                            <div class="member-inner">
                                              <p class="member-portrait"><span><img src="images/team_member_03.jpg" alt=""></span></p>
                                                <h4 class="member-name">Tarja Lee</h4>
                                                <h3 class="member-role">Manicurista</h3>
                                              <div class="member-description">
                                                    <p>Distintos tratamientos para las uñas (de manos y pies) a sus clientes.</p>
                                                </div>
</div>
                                        </div>
                                        <!-- TEAM MEMBER : end -->

                                    </div>
                                    <div class="col-sm-6">

                                        <!-- TEAM MEMBER : begin -->
                                        <div class="c-team-member m-has-portrait">
                                            <div class="member-inner">
                                              <p class="member-portrait"><span><img src="images/team_member_04.jpg" alt=""></span></p>
                                                <h4 class="member-name">FloR ACOSTA</h4>
                                                <h3 class="member-role">Masajista estética</h3>
                                              <div class="member-description">
                                                    <p>Se trata de diversas técnicas de masaje enfocadas hacia la consecución de una mejora en la piel y en los tejidos.</p>
                                                </div>
</div>
                                        </div>
                                        <!-- TEAM MEMBER : end -->

                                    </div>
                                </div>

                            </section>
                            <!-- TEAM SECTION : end -->

                            <!-- CTA MESSAGE SECTION : begin -->
                            <section>

                                <!-- CTA MESSAGE : begin -->
                                <div class="c-cta-message">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <h2>Visita el mejor spa de la región!</h2>
                                            <p>&nbsp;</p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="textalign-right">&nbsp;</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- CTA MESSAGE : end -->

                            </section>
                            <!-- CTA MESSAGE SECTION : end -->

                        </div>
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

                                    <h3>BEAUTY CENTER</h3>
                                    <p>Es una experiencia completamente distinta, con servicios adicionales que ningún otro centro puede ofrecer debido a su infraestructura.</p>

                                </div>
                                <!-- BOTTOM TEXT : end -->

                            </div>
                            <div class="col-md-6">

                                <!-- BOTTOM SUBSCRIBE : begin -->
                                <div class="bottom-subscribe various-content">
                                  <p><!-- VALIDATION ERROR MESSAGE : begin -->                                  </p>
                                  <form id="subscribe-form" action="http://volovar.us8.list-manage.com/subscribe/post-json?u=76a50c9454ec8ab78914d1bf2&amp;id=49e892f53d&amp;c=?" method="get">
                                  <p style="display: none;" class="c-alert-message m-warning m-validation-error"><i class="ico fa fa-exclamation-circle"></i>Email address is required.</p>
                                        <!-- VALIDATION ERROR MESSAGE : end -->

                                        <!-- SENDING REQUEST ERROR MESSAGE : begin -->
                                        <p style="display: none;" class="c-alert-message m-warning m-request-error"><i class="ico fa fa-exclamation-circle"></i>There was a connection problem. Try again later.</p>
                                        <!-- SENDING REQUEST ERROR MESSAGE : end -->

                                        <!-- SUCCESS MESSAGE : begin -->
                                        <p style="display: none;" class="c-alert-message m-success"><i class="ico fa fa-check-circle"></i><strong>Sent successfully.</strong></p>
                                        <!-- SUCCESS MESSAGE : end -->

                                        <div class="form-fields"></div>
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

                    <!-- FOOTER TWITTER : begin --><!-- FOOTER TWITTER : end -->

                    <!-- FOOTER BOTTOM : begin -->
                    <div class="footer-bottom">
                        <div class="row">
                            <div class="col-md-6 col-md-push-6">

                                <!-- FOOTER MENU : begin -->
                                <nav class="footer-menu">
                                    <ul>
                                        <li><a href="index.jsp">Inicio</a></li>
                                        <li><a href="services.jsp">Servicios</a></li>
                                        <li><a href="documentation.jsp"></a></li>
                                    </ul>
                                </nav>
                                <!-- FOOTER MENU : end -->

                            </div>
                            <div class="col-md-6 col-md-pull-6">

                                <!-- FOOTER TEXT : begin -->
                                <div class="footer-text">
                                    <p>&nbsp;</p>
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