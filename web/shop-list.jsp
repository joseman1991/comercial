<%@page import="modelo.DetalleCompra"%>
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
        <title>Shop | BeautySpot - A HTML5 Template for Beauty Salons</title>
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
                        <a href="index.jsp"><img src="images/log.png" alt="BeautySpot" data-hires="images/log.png" width="291"></a>
                    </div>
                    <!-- HEADER BRANDING : end -->

                    <!-- HEADER NAVIGATION : begin -->
                    <div class="header-navigation">

                        <!-- HEADER MENU : begin -->
                        <nav class="header-menu">
                            <button class="header-menu-toggle" type="button"><i class="fa fa-bars"></i>MENU</button>
                            <ul>
                                <li class="m-active">
                                    <span><a href="index.jsp">Incio</a></span>
                                </li>
                                <li>
                                    <span><a href="services.jsp">Sitio</a></span>
                                    <ul class="sub-menu">
                                        <s:url action="categorias" var="urlTag"/>                                             
                                        <s:url action="productos" var="urlTagPro">
                                            <s:param name="page">1</s:param>
                                        </s:url>                                            

                                        <li><a href="<s:property value="#urlTag"/>">Servicios</a></li>                                       
                                        <li><a href="gallery.jsp">Galería</a></li>
                                        <li><a href="registro.jsp">Registro de Clientes</a></li>
                                        <li><a href="about-us.jsp">A cerca de nosotros</a></li>                              
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

            <!-- CORE : begin -->
            <div id="core" class="core-bg-2">

                <!-- PAGE HEADER : begin -->
                <div id="page-header">
                    <div class="container">
                        <h1>Tienda</h1>
                        <ul class="breadcrumbs">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li>Tienda</li>
                        </ul>
                    </div>
                </div>
                <!-- PAGE HEADER : begin -->

                <div class="container">
                    <div class="row">
                        <div class="col-md-8">

                            <!-- PAGE CONTENT : begin -->
                            <div id="page-content">

                                <!-- PRODUCT LIST TOOLS : begin -->
                                <div class="product-list-tools">
                                    <div class="row">
                                        <div class="col-sm-6">

                                            <!-- PRODUCT LIST TITLE : begin -->
                                            <s:set var="max" value="12"/> 
                                            <s:set var="count" value="listaItems.size()"/> 
                                            <s:set var="inicio" value="#max * page - #max"/> 
                                            <s:set var="fin" value="#max * page - 1"/> 
                                            <s:if test="#count < #fin">
                                                <s:set var="fin" value="#count-1"/> 
                                            </s:if>
                                            <s:else>

                                            </s:else>
                                            <h2 class="product-list-title">Mostrando 
                                                <s:property value="getText('{0,number,#,##0}',{#inicio+1})" /> - 
                                                <s:property value="getText('{0,number,#,##0}',{#fin+1})" /> de
                                                <s:property value="#count"/> 
                                                Elementos</h2>
                                            <!-- PRODUCT LIST TITLE : end -->
                                        </div>
                                    </div>
                                </div>
                                <!-- PRODUCT LIST TOOLS : end -->


                                <ul class="product-list">
                                    <s:iterator value="listaItems" begin="#inicio" end="#fin"> 
                                        <s:url action="detalle" var="detalle" >
                                            <s:param name="producto"><s:property value="iditem"/></s:param>
                                        </s:url> 
                                        <li class="product">
                                            <div class="product-inner">
                                                <h3 class="product-title"><a href="<s:property value="#detalle"/>"><s:property value="nombre"/></a></h3>
                                                <p class="product-image"><a href="<s:property value="#detalle"/>"><img src='images/<s:property value="imagen"/>' alt=""></a></p>
                                                <div class="product-info">
                                                    <s:if test='descuento==0'>
                                                        <div class="product-price"
                                                             ><s:property value="getText('{0,number,#,##0.00}',{precio})"/>
                                                        </div>
                                                    </s:if>
                                                    <s:else>
                                                        <div class="product-price">
                                                            <span class="old-price">
                                                                <s:property value="getText('{0,number,#,##0.00}',{precio})"/>
                                                            </span>
                                                            <s:property value=" getText('{0,number,#,##0.00}',{precio-(precio*descuento/100)})"/>
                                                        </div>
                                                    </s:else>
                                                    <s:if test="#user!=null">
                                                        <s:set name="boton" value="false"/>
                                                        <s:iterator value="#session['listaItems']">
                                                            <s:if test="item.iditem==iditem">
                                                                <button class="product-btn c-button m-type-2 m-small" id="bo">Agregar (<s:property value="cantidad"></s:property>)</button>
                                                                <s:set name="boton" value="true"/>
                                                            </s:if>                                                           
                                                        </s:iterator>
                                                        <s:if test="!#boton">
                                                            <button class="product-btn c-button m-type-2 m-small" id="bo">Agregar</button>
                                                        </s:if>

                                                    </s:if>
                                                    <s:else>
                                                        <s:a href="login.jsp" cssClass="product-btn c-button m-type-2 m-small">Agregar</s:a>
                                                    </s:else>

                                                    <input type="hidden" value="<s:property value="iditem"/>" id="idte"/>  
                                                    <input type="hidden" value="<s:property value="1"/>" id="idser"/>
                                                </div>
                                                <div class="alert alert-success collapse" role="alert" id="myAlert<s:property value="iditem"/>">
                                                    <a id="linkClose" href="#" class="close" data-dismiss="alert" aria-label="Close">
                                                        &times;
                                                    </a>
                                                    <strong>¡Cuidado!</strong> Es muy importante que leas este mensaje de alerta.
                                                </div> 
                                            </div>

                                        </li>

                                        <!-- PRODUCT : end -->
                                    </s:iterator>
                                </ul>

                                <!-- PRODUCT LIST : begin -->

                                <!-- PRODUCT LIST : end -->

                                <!-- PAGINATION : begin -->

                                <s:set name="mod" value="#count%#max"/>
                                <s:set name="div" value="#count/#max"/>

                                <s:if test="#mod>0">
                                    <s:set name="div" value="#count/#max+1"/>
                                </s:if>                                










                                <ul class="c-pagination">
                                    <s:if test='page>1'>
                                        <s:url action="productos" var="atras" >
                                            <s:param name="page"><s:property value="page-1"/></s:param>
                                        </s:url> 
                                        <li class="prev"><a href="<s:property value="#atras"/>"><i class="fa fa-angle-left"></i></a></li>
                                            </s:if>    
                                            <s:iterator var="i" begin="1" end="#div">
                                                <s:url action="productos" var="clic" >
                                                    <s:param name="page"><s:property value="top"/></s:param>
                                                </s:url>  
                                                <s:if test="top==page">
                                            <li class="m-active"><a href="<s:property value="#clic"/>"><s:property value="top"/></a></li>
                                            </s:if>
                                            <s:else>
                                            <li><a href="<s:property value="#clic"/>"><s:property value="top" /></a></li>
                                            </s:else>
                                        </s:iterator>  
                                        <s:if test="page<#div">
                                            <s:url action="productos" var="adelante" >
                                                <s:param name="page"><s:property value="page+1"/></s:param>
                                            </s:url>  
                                        <li class="next"><a href="<s:property value="#adelante"/>"><i class="fa fa-angle-right"></i></a></li>
                                            </s:if>

                                </ul>
                                <!-- PAGINATION : end -->
                            </div>
                            <!-- PAGE CONTENT : end -->

                        </div>

                        <div class="col-md-4">

                            <!-- SIDEBAR : begin -->
                            <aside id="sidebar">

                                <!-- SIDEBAR SEARCH : begin -->
                                <div class="sidebar-widget sidebar-search">
                                    <h3 class="widget-title">Buscar</h3>
                                    <div class="widget-content">
                                        <form class="c-search-form" action="busqueda">
                                            <div class="form-fields">
                                                <input type="text" name="busqueda" data-placeholder="Buscar producto...">
                                                <button class="c-button" type="submit"><i class="fa fa-search"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- SIDEBAR SEARCH : end -->

                                <!-- SIDEBAR CART : begin -->

                                <!-- SIDEBAR CART : end -->

                                <!-- SIDEBAR LINKS : begin -->                                
                                <!-- SIDEBAR LINKS : end -->



                                <!-- SIDEBAR PRODUCTS : begin -->

                                <!-- SIDEBAR PRODUCTS : end -->

                                <!-- SIDEBAR TAGS : begin -->

                                <!-- SIDEBAR TAGS : end -->

                            </aside>
                            <!-- SIDEBAR : end -->

                        </div>
                    </div>
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
                                    <p><strong>COMERCIAL ANTONHY</strong> es una empresa que ofrece prodcutos de <strong> primera necesidad y licoreria</strong>. 
                                        Se parte de nosotros y disfruta al máximo de todos
                                        <strong>productos</strong> que ofrecemos.</p>
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
        <script src="library/js/Compra.js" type="text/javascript"></script>
        <!-- SCRIPTS : end -->

    </body>
</html>