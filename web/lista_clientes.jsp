<%@page import="java.util.List"%>
<%@page import="modelo.DetalleCompra"%>
<%@page import="modelo.Usuarios"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <s:set name="cantidad" value="#session['cantidad']"/>
        <s:set name="reserva" value="#session['reserva']"/>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Usuarios | Comercial Anthony</title>
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

        <!-- HEADER : begin -->
        <header id="header" class="m-animated">
            <div class="header-bg">
                <div class="header-inner">

                    <!-- HEADER BRANDING : begin -->
                    <div class="header-branding">
                        <a href="index.jsp"><img src="images/log.png" alt="BeautySpot" data-hires="images/logo.2x.png" width="291"></a>
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
                                        <strong>COMERCIAL ANTHONY </strong><br>
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
                    <!-- HEADER PANEL : end -->

                </div>
            </div>
        </header>
        <!-- HEADER : end -->

        <!-- WRAPPER : begin -->
        <div id="wrapper">

            <!-- CORE : begin -->
            <div id="core">

                <!-- PAGE HEADER : begin -->
                <div id="page-header">
                    <div class="container">
                        <h1>Lista de clientes</h1>
                        <ul class="breadcrumbs">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="shop-list.jsp">Usuarios</a></li>
                            <li>Clientes</li>
                        </ul>
                    </div>
                </div>

                <!-- PAGE HEADER : begin -->

                <div class="container">

                    <!-- PAGE CONTENT : begin -->
                    <div id="page-content">

                        <!-- SHOP CART : begin -->
                        <div class="shop-cart">

                            <form class="default-form" action="comprar">

                                <!-- CART TABLE : begin -->
                                <table class="cart-table">
                                    <thead>
                                        <tr>
                                            <th class="image-col">#</th>
                                            <th class="title-col">Identificacion</th>
                                            <th class="title-col">Nombre de Usuario</th>
                                            <th class="price-col">Nombres </th>
                                            <th class="quantity-col">Correo</th>
                                            <th class="total-col">Dirección</th>                                            
                                            <th class="total-col">Perfil</th>                                            
                                            <th class="total-col">Editar</th>                                            
                                        </tr>
                                    </thead>
                                    <tbody>   
                                        <s:iterator value="listaUsuarios" var="lista" status="list">
                                            <tr>                                                                         
                                                <td><s:property value="%{#list.count}"/></td>
                                                <td><s:property value="dni"/></td>
                                                <td><s:property value="nombreusuario"/></td>
                                                <td><s:property value="getCompleto()"/></td>
                                                <td><s:property value="correo"/></td>
                                                <td><s:property value="direccion"/></td>                                                     
                                                <td><s:property value="perfil.perfil"/></td> 
                                                <td> 
                                                    <s:url action="editarUser" var="editar">
                                                        <s:param name="nombreusuario">
                                                            <s:property value="nombreusuario"/>
                                                        </s:param>
                                                        
                                                    </s:url>

                                                    <a href="<s:property value="#editar"/>" class="c-button">Editar</a>
                                                </td> 
                                            </tr>                                        
                                        </s:iterator>
                                    </tbody>
                                </table>

                                <div class="container">
                                    <!-- PAGE CONTENT : begin -->
                                    <h1><strong><s:property value="mensaje"/></strong></h1>
                                    <!-- PAGE CONTENT : end -->
                                </div>



                                <!-- CART TABLE : end -->

                                <!-- CART TOOLS : begin -->
                                <div class="cart-tools">

                                    <!-- CART COUPON : begin -->

                                    <!-- CART COUPON : end -->

                                    <!-- CART BUTTONS : begin -->


                                    <!-- CART BUTTONS : end -->

                                </div>
                                <!-- CART TOOLS : end -->

                            </form>

                            <!-- CART FOOTER : begin -->

                            <!-- CART FOOTER : end -->

                        </div>
                        <!-- SHOP CART : end -->

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
                                    <p>COMERCIAL ANTHONY . Todos los derechos Reservados 2020 ©</p>
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