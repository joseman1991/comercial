<%@page import="modelo.DetalleCompra"%>
<%@page import="modelo.Items"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuarios"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <s:set name="reserva" value="#session['reserva']"/>
        <s:set name="user" value="#session['usuario']"/>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio | Comercial Antony  </title>
        <link rel="shortcut icon" href="images/favicon.ico">
        <!-- GOOGLE FONTS : begin -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700%7cMontserrat:400,700&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
        <!-- GOOGLE FONTS : end -->
        <!-- STYLESHEETS : begin -->
        <link href="library/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script type="text/javascript" src="library/js/jquery-1.9.1.min.js"></script> 
        <link rel="stylesheet" type="text/css" href="library/css/style.css">
        <link rel="stylesheet" type="text/css" href="library/css/skin/default.css">
        <link rel="stylesheet" type="text/css" href="library/css/custom.css">
        <!-- STYLESHEETS : end -->

        <!--[if lte IE 8]>
                        <link rel="stylesheet" type="text/css" href="library/css/oldie.css">
                        <script src="library/js/respond.min.js" type="text/javascript"></script>
        <![endif]-->
        <script src="library/js/modernizr.custom.min.js" type="text/javascript"></script>
        <script src="library/js/bootstrap.min.js" type="text/javascript"></script>

        <%
            Usuarios user = (Usuarios) session.getAttribute("usuario");
            List<DetalleCompra> listItems = (List<DetalleCompra>) session.getAttribute("listaItems");
        %>

    </head>
    <body>


        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <%                        if (user != null) {
                    %>
                    <li><a href="#"><span class="fa fa-key"></span> Perfil ${usuario.perfil.perfil} </a></li>
                    <li><a href="#"><span class="fa fa-user"></span> ${usuario.nombre1} </a></li>
                    <li><a href="logout.jsp"><span class="fa fa-sign-out"></span> Cerrar Sesión</a></li>
                        <%} else {%>
                    <li><a href="registro.jsp"><span class="fa fa-user"></span> Registrarse</a></li>                     
                    <li><a href="login.jsp"><span class="fa fa-sign-in"></span> Iniciar Sesión</a></li>

                    <%}%>


                </ul>
            </div>
        </nav>


        <!-- HEADER : begin -->
        <header id="header" class="m-animated">
            <div class="header-bg">
                <div class="header-inner">
                    <!-- HEADER BRANDING : begin -->
                    <div class="header-branding">
                        <a href="index.jsp"><img src="images/log.png" alt="Beauty" data-hires="images/logo.png" width="291"></a>
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
                                    <s:if test="#user!=null">
                                        <span><a href="services.jsp">Sitio</a></span>
                                        <ul class="sub-menu">
                                            <s:url action="categorias" var="urlTag" />                                             
                                            <s:url action="ver_admin" var="admin" />                                             
                                            <s:url action="ver_emp" var="emp" />                                             
                                            <s:url action="ver_client" var="client" />                                             
                                            <s:url action="productos" var="urlTagPro" >
                                                <s:param name="page">1</s:param>
                                            </s:url>                                            


                                            <s:if test="#user!=null">
                                                <s:url action="listarReservas" var="listarR">
                                                    <s:param name="nombreusuario">
                                                        <s:property value="#user.nombreusuario"/>
                                                    </s:param>
                                                </s:url>
                                                <s:url action="listarVentas" var="listarC">
                                                    <s:param name="nombreusuario">
                                                        <s:property value="#user.nombreusuario"/>
                                                    </s:param>
                                                </s:url>
                                                <s:if test="#user.perfil.idperfil==2">
                                                    <li><a href="<s:property value="#listarC"/>">Mis compras compras</a></li>

                                                </s:if>
                                            </s:if>




                                            <s:if test="#user.perfil.idperfil==1">
                                                <li><a href="registro.jsp">Registro de Clientes</a></li>
                                                <li><a href="registro_admin.jsp">Registrar nuevo admin</a></li>
                                                <li><a href="registro_empleado.jsp">Registro de empleados</a></li>
                                                <li><a href="<s:property value="#admin"/>">Lista de administradores</a></li>
                                                <li><a href="<s:property value="#emp"/>">Lista de empleados</a></li>
                                                <li><a href="<s:property value="#client"/>">Lista de clientes</a></li>
                                                </s:if>


                                        </ul>
                                    </s:if>
                                </li>
                                <li>
                                    <span><a href="<s:property value="#urlTagPro"/>">Tienda</a></span>
                                    <ul class="sub-menu">
                                        <s:if test="#user!=null">
                                            <s:if test="#user.perfil.idperfil==2">
                                                <li><a href="<s:property value="#urlTagPro"/>">Lista de Productos</a></li>                                       
                                                <li><a href="<s:property value="#urlTagPro"/>">Carrito</a></li>
                                                </s:if>

                                            <s:if test="#user.perfil.idperfil==3 || #user.perfil.idperfil==1">
                                                <li><a href="agg_producto.jsp">Agregar producto</a></li>   
                                                </s:if>
                                            </s:if>
                                            <s:else>
                                            <li><a href="<s:property value="#urlTagPro"/>">Lista de Productos</a></li>                                       
                                            <li><a href="<s:property value="#urlTagPro"/>">Carrito</a></li>
                                            </s:else>

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



                       

                        <!-- HEADER CART : end -->

                        <!-- HEADER SEARCH : begin -->
                        
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

                            </s:if>
                            <s:else>
                                <s:url action="eliminaReserva" var="el">
                                    <s:param name="idreserva">1</s:param>
                                </s:url>
                                <a  href="<s:property value="#el"/>" class="c-button">Eliminar Reservacion</a>
                            </s:else>

                            <%} else {%>

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
                                        <a href="mailto:antononystore.ec@gmail.com">antononystore.ec@gmail.com</a>
                                    </div>
                                </li>
                                <!-- EMAIL : end -->

                                <!-- ADDRESS : begin -->
                                <li>
                                    <div class="item-inner">
                                        <i class="ico fa fa-map-marker"></i>
                                        <strong>COMERCIAL ANTONHY </strong><br>
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

            <!-- MAIN SLIDER : begin -->
            <div id="main-slider" class="m-has-hover-stop" data-interval="8000">
                <div class="slide-list">

                    <!-- SLIDE 1 : begin -->
                    <div class="slide slide-1 m-bg-align-right" data-label="Bienvenido a COMERCIAL ANTONHY" style="background-image: url( 'images/per.jpg' );">
                        <div class="slide-bg">
                            <div class="container">
                                <div class="slide-inner">
                                    <div class="slide-content various-content textalign-left valign-middle">

                                        <h1>Bienvenido<br>to COMERCIAL ANTONHY!</h1>
                                        <h3 style="color: white">Más que una tienda,<br>es el lugar indicado, para ahorrar</h3>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- SLIDE 1 : end -->

                    <!-- SLIDE 2 : begin -->
                    <div class="slide slide-2 m-bg-align-left" data-label="Licores" style="background-image: url('images/h.jpg' );">
                        <div class="slide-bg">
                            <div class="container">
                                <div class="slide-inner">
                                    <div class="slide-content various-content textalign-right valign-middle">

                                        <h2>Los mejores<br>licores</h2>
                                        <h3>¡Todos los viernes el mejor stock!<br></h3>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- SLIDE 2 : end -->

                    <!-- SLIDE 3 : begin -->
                    <div class="slide slide-3 m-bg-align-right" data-label="Nuestra tienda Online" style="background-image: url( 'images/h2.jpg' );">
                        <div class="slide-bg">
                            <div class="container">
                                <div class="slide-inner">
                                    <div class="slide-content various-content textalign-left valign-middle">

                                        <h2>Tienda<br>Online</h2>
                                        <h3 style="color: white"><a href="<s:property value="#urlTagPro"/>">Encuentra de todo</a> con Nuestros Productos</h3>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- SLIDE 3 : end -->

                </div>
            </div>
            <!-- MAIN SLIDER : end -->

            <!-- CORE : begin -->
            <div id="core">

                <!-- PAGE CONTENT : begin -->
                <div id="page-content">
                    <div class="various-content">

                        <!-- SERVICES SECTION : begin -->

                        <!-- SERVICES SECTION : end -->

                        <!-- GALLERY SECTION : begin -->
                        <section>

                            <!-- SECTION HEADER : begin -->

                            <!-- SECTION HEADER : end -->

                            <!-- GALLERY : begin -->

                            <!-- GALLERY : end -->

                        </section>
                        <!-- GALLERY SECTION : end -->

                        <!-- BLOG SECTION : begin -->


                        <!-- BLOG SECTION : end -->

                        <!-- TESTIMONIALS SECTION : begin -->
                        <section>

                            <!-- SECTION HEADER : begin -->
                            <header>
                                <div class="container">
                                    <h2>Nuestros Clientes</h2>
                                    <p class="subtitle">Lea por qué nos aman tanto</p>
                                    <p class="more"><a href="registro.jsp" class="c-button m-type-2">Conviértase en nuestro cliente</a></p>
                                </div>
                            </header>
                            <!-- SECTION HEADER : end -->

                            <!-- TESTIMONIAL LIST : begin -->
                            <div class="c-testimonial-list m-paginated">
                                <div class="container">
                                    <div class="testimonial-list-inner">
                                        <div class="testimonial-list-item">

                                            <!-- TESTIMONIAL : begin -->
                                            <div class="c-testimonial m-has-portrait">
                                                <div class="testimonial-inner">
                                                    <p class="testimonial-portrait"><span><img src="images/client_01.jpg" alt=""></span></p>
                                                    <blockquote>
                                                        <p>Me siento muy satisfecha con los servicios que ofrece COMERCIAL ANTONHY, los licores son los máximo. Te recomiendo que no lo pienses dos veces y elige COMERCIAL ANTONHY.</p>
                                                        <footer><strong>Floor Simons</strong>, Profesora</footer>
                                                    </blockquote>
                                                </div>
                                            </div>
                                            <!-- TESTIMONIAL : end -->

                                        </div>
                                        <div class="testimonial-list-item">

                                            <!-- TESTIMONIAL : begin -->
                                            <div class="c-testimonial m-has-portrait">
                                                <div class="testimonial-inner">
                                                    <p class="testimonial-portrait"><span><img src="images/client_02.jpg" alt=""></span></p>
                                                    <blockquote>
                                                        <p>Justo lo que estaba buscando desde mucho tiempo, los productos que ofrece COMERCIAL ANTONHY, son lo máximo, nunca me había sentido tambien. Sin lugar a dudas este comercial es lo mejor.</p>
                                                        <footer><strong>Nikki Neil</strong>, Contadora</footer>
                                                    </blockquote>
                                                </div>
                                            </div>
                                            <!-- TESTIMONIAL : end -->

                                        </div>
                                        <div class="testimonial-list-item">

                                            <!-- TESTIMONIAL : begin -->
                                            <div class="c-testimonial m-has-portrait">
                                                <div class="testimonial-inner">
                                                    <p class="testimonial-portrait"><span><img src="images/client_03.jpg" alt=""></span></p>
                                                    <blockquote>
                                                        <p>Los mejores precios, que buen lugar para cuidar tu dinero, como lo es COMERCIAL ANTONHY, es el lugar indicado, para encontrar de todo.</p>
                                                        <footer><strong>Tarja Lee</strong>, Deportista</footer>
                                                    </blockquote>
                                                </div>
                                            </div>
                                            <!-- TESTIMONIAL : end -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- TESTIMONIAL LIST : end -->

                        </section>
                        <!-- TESTIMONIALS SECTION : end -->

                        <!-- BRANDS SECTION : begin -->
                        <section>

                            <!-- SECTION HEADER : begin -->
                            <header>
                                <div class="container">
                                    <h2>Nuestras marcas favoritas</h2>
                                    <p class="subtitle">Usamos solo productos originales de alta calidad</p>
                                </div>
                            </header>
                            <!-- SECTION HEADER : end -->

                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="textalign-center">

                                            <!-- BRAND LOGO : begin -->
                                            <a href="#" class="no-border"><img src="images/brand_01.png" alt=""></a>
                                            <!-- BRAND LOGO : end -->

                                        </p>
                                    </div>
                                    <div class="col-sm-3">
                                        <p class="textalign-center">

                                            <!-- BRAND LOGO : begin -->
                                            <a href="#" class="no-border"><img src="images/brand_02.png" alt=""></a>
                                            <!-- BRAND LOGO : end -->

                                        </p>
                                    </div>
                                    <div class="col-sm-3">
                                        <p class="textalign-center">

                                            <!-- BRAND LOGO : begin -->
                                            <a href="#" class="no-border"><img src="images/brand_03.png" alt=""></a>
                                            <!-- BRAND LOGO : end -->

                                        </p>
                                    </div>
                                    <div class="col-sm-3">
                                        <p class="textalign-center">

                                            <!-- BRAND LOGO : begin -->
                                            <a href="#" class="no-border"><img src="images/brand_04.png" alt=""></a>
                                            <!-- BRAND LOGO : end -->

                                        </p>
                                    </div>
                                </div>
                            </div>

                        </section>
                        <!-- BRANDS SECTION : end -->

                    </div>
                </div>
                <!-- PAGE CONTENT : end -->

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

                                    <h3>Acerca de Comercial Antony</h3>
                                    <p><strong>COMERCIAL ANTONHY</strong> es una empresa que ofrece productos de <strong>primera necesidad y licores</strong>. 
                                        Se parte de nosotros y disfruta al máximo de todos
                                        <strong>productos </strong> que ofrecemos.</p>
                                </div>
                                <!-- BOTTOM TEXT : end -->

                            </div>
                            <div class="col-md-6">

                                <!-- BOTTOM SUBSCRIBE : begin -->
                                <div class="bottom-subscribe various-content">

                                    <h3>CONTACTO</h3>
                                    <p>Contactanos directamente en nuestro <a href="mailto:antononystore.ec@gmail.com">Email</a>.</p>


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

                    <!-- FOOTER TWITTER : end -->

                    <!-- FOOTER BOTTOM : begin -->
                    <div class="footer-bottom">
                        <div class="row">
                            <div class="col-md-6 col-md-push-6">

                                <!-- FOOTER MENU : begin -->
                                <nav class="footer-menu">
                                    <ul>
                                        <li><a href="index.jsp">Inicio</a></li>
                                        <li><a href="services.jsp">Servicio</a></li>
                                        <li><a href="documentation.jsp">Productos</a></li>
                                    </ul>
                                </nav>
                                <!-- FOOTER MENU : end -->

                            </div>
                            <div class="col-md-6 col-md-pull-6">

                                <!-- FOOTER TEXT : begin -->
                                <div class="footer-text">
                                    <p>COMERCIAL ANTONHY. Todos los derechos Reservados 2020 ©</p>
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