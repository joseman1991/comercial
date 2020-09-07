<%@page import="java.util.List"%>
<%@page import="modelo.Usuarios"%>
<%@page import="modelo.DetalleCompra"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <s:set name="p" value="item"/>
        <s:set name="u" value="#session['usuario']"/>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tienda - <s:property value="#p.nombre"/></title>
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
    </ul>
</div>
</nav>

<s:url action="productos" var="urlTagPro" >
    <s:param name="page">1</s:param>
</s:url>  
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
                            <span class="cart-count" id="cart">(<% out.println(listItems.size()); %></span>
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
                            <button class="search-toggle" type="button">Search</button>
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
    <div id="core" class="core-bg-2">

        <!-- PAGE HEADER : begin -->
        <div id="page-header">
            <div class="container">
                <h1><s:property value="#p.nombre"/></h1>
                <ul class="breadcrumbs">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="<s:property value="#urlTagPro"/>">Tienda</a></li>
                    <li><s:property value="#p.nombre"/></li>
                </ul>
            </div>
        </div>
        <!-- PAGE HEADER : begin -->




        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <!-- PAGE CONTENT : begin -->
                    <div id="page-content">

                        <!-- PRODUCT DETAIL : begin -->
                        <div class="product-detail">

                            <div class="row">
                                <div class="col-sm-6">

                                    <!-- PRODUCT IMAGES : begin -->
                                    <div class="product-images">
                                        <p class="main-image"><a href="images/<s:property value="#p.imagen"/>" class="lightbox" data-lightbox-group="product"><img src="images/<s:property value="#p.imagen"/>" alt=""></a></p>
                                        <ul>
                                            <s:iterator value="listaImagenes">
                                                <li><a href="images/<s:property value="nombre"/>" class="lightbox" data-lightbox-group="product"><img src="images/<s:property value="nombre"/>" alt=""></a></li>

                                            </s:iterator>                                                   
                                        </ul>
                                    </div>
                                    <!-- PRODUCT IMAGES : end -->

                                </div>
                                <div class="col-sm-6">

                                    <!-- PRODUCT RATING : begin -->
                                    <div class="product-rating">
                                        <a href="#product-tabs">
                                            <span class="rating-stars">
                                                <s:iterator var="i" begin="0" end="4">                                                             
                                                    <s:set name="resta" value="#p.rate - top"/>                                                            
                                                    <s:if test="#resta<1 && #resta>0">
                                                        <i class="fa fa-star-half-o"></i>
                                                    </s:if>
                                                    <s:elseif test="#resta<0||#resta<=1">
                                                        <i class="fa fa-star-o"></i>
                                                    </s:elseif>
                                                    <s:else>
                                                        <i class="fa fa-star"></i>
                                                    </s:else>
                                                </s:iterator>




                                            </span>
                                            <s:if test="listOpiniones.size()>1">
                                                <span class="rating-label"><s:property value="listOpiniones.size()"/> opiniones</span>
                                            </s:if>
                                            <s:else>
                                                <span class="rating-label"><s:property value="listOpiniones.size()"/> opinion</span>
                                            </s:else>

                                        </a>
                                    </div>
                                    <!-- PRODUCT RATING : end -->

                                    <!-- PRODUCT SHORT DESCRIPTION : begin -->
                                    <div class="product-short-description various-content">
                                        <p><strong><s:property value="#p.nombre"/></strong>. <s:property value="#p.descripcion"/>.</p>
                                    </div>
                                    <!-- PRODUCT SHORT DESCRIPTION : end -->

                                    <!-- PRODUCT INFO : begin -->
                                    <div class="product-info">

                                        <!-- PRODUCT STATUS : begin -->

                                        <s:if test="#p.stock>0">
                                            <div class="product-status m-available">
                                                <div class="product-status-inner">
                                                    <i class="ico fa fa-check"></i>
                                                    <h5>En Stock (<s:property value="#p.stock"/>)</h5>
                                                    <p>Envío en 24h </p>
                                                </div>
                                            </div>
                                        </s:if>
                                        <s:else>
                                            <div class="product-status m-info">
                                                <div class="product-status-inner">
                                                    <i class="ico fa fa-clock-o"></i>
                                                    <h5>Stock (<s:property value="#p.stock"/>)</h5>
                                                    <p>Producto Agotado</p>
                                                </div>
                                            </div>  
                                        </s:else>



                                        <!--div class="product-status m-unavailable">
                                                <div class="product-status-inner">
                                                        <i class="ico fa fa-times"></i>
                                                        <h5>Unavailable</h5>
                                                        <p>Product unavailable</p>
                                                </div>
                                        </div-->

                                        <!-- PRODUCT STATUS : end -->

                                        <!-- PRODUCT PRICE : begin -->

                                        <s:if test='#p.descuento==0'>
                                            <div class="product-price">
                                                <strong class="price">
                                                    <s:property value="getText('{0,number,#,##0.00}',{#p.precio})"/>
                                                </strong>
                                            </div>
                                        </s:if>
                                        <s:else>
                                            <div class="product-price">
                                                <span class="old-price">
                                                    <s:property value="getText('{0,number,#,##0.00}',{#p.precio})"/>
                                                </span>
                                                <strong class="price">
                                                    <s:property value=" getText('{0,number,#,##0.00}',{#p.precio-(#p.precio*#p.descuento/100)})"/>
                                                </strong>
                                            </div>
                                        </s:else>

                                        <!-- PRODUCT PRICE : end -->

                                    </div>
                                    <!-- PRODUCT INFO : end -->

                                    <!-- PRODUCT TOOLS : begin -->
                                    <form action="" class="product-tools default-form">

                                        <div class="quantity-input">
                                            <input type="number" class="m-type-2" value="1" min="1" max=<s:property value="#p.stock"/> step="1">
                                        </div>
                                        <button class="c-button product-cart-btn" type="submit">Añadir al Carrito</button>
                                    </form>
                                    <!-- PRODUCT TOOLS : end -->

                                </div>
                            </div>

                            <!-- PRODUCT TABS : begin -->
                            <div class="c-tabs product-tabs" id="product-tabs">
                                <ul class="tab-list">
                                    <li class="m-active">Description</li>
                                    <li class="product-reviews-tab">Oponiones (<s:property value="listOpiniones.size()"/>)</li>
                                </ul>
                                <ul class="content-list">
                                    <li>

                                        <!-- PRODUCT DESCRIPTION : begin -->
                                        <div class="product-description various-content">

                                            <p><s:property value="#p.descripcion2"/>.</p>

                                        </div>
                                        <!-- PRODUCT DESCRIPTION : end -->

                                    </li>
                                    <li style="display: none;">

                                        <!-- PRODUCT REVIEWS : begin -->
                                        <div class="product-reviews">

                                            <!-- REVIEW LIST: begin -->
                                            <ul class="review-list" id="product-reviews">
                                                <s:iterator value="listOpiniones" >
                                                    <li>
                                                        <div class="review">
                                                            <p class="review-portrait"><img alt="" src="images/<s:property value="usuario.imagen"/>"></p>
                                                            <h4 class="review-author"><s:property value="usuario.nombre1"/> <s:property value="usuario.apellidop"/></h4>
                                                            <p class="review-rating">
                                                                <s:iterator var="rate" begin="1" end="5">
                                                                    <s:if test="top<=clasificacion">
                                                                        <i class="fa fa-star"></i>
                                                                    </s:if>
                                                                    <s:else>
                                                                        <i class="fa fa-star-o"></i>
                                                                    </s:else>
                                                                </s:iterator>
                                                            </p>
                                                            <div class="review-content various-content">
                                                                <p><s:property value="opinion"/>.</p>
                                                            </div>
                                                            <div class="review-info">
                                                                <div class="review-date"><s:property value="fecha"/></div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </s:iterator>

                                            </ul>
                                            <!-- REVIEW LIST: end -->

                                            <!-- REVIEW FORM : begin -->
                                            <form id="review-form" class="review-form default-form m-validate" action="opinion" method="post">
                                                <h3 class="review-form-title">Añadir un comentario</h3>

                                                <!-- FORM VALIDATION ERROR MESSAGE : begin -->
                                                <p class="c-alert-message m-warning m-validation-error" style="display: none;"><i class="ico fa fa-exclamation-circle"></i>Please fill in all required (*) fields.</p>
                                                <!-- FORM VALIDATION ERROR MESSAGE : end -->

                                                <div class="row">
                                                    <div class="col-sm-6">

                                                        <!-- NAME FIELD : begin -->
                                                        <div class="form-field">
                                                            <label for="review-name">Nombre<span>*</span></label>
                                                            <input id="review-name" value="<s:property value="#u.nombre1"/>" class="m-required" readonly>
                                                        </div>
                                                        <!-- NAME FIELD : end -->

                                                        <!-- EMAIL FIELD : begin -->
                                                        <div class="form-field">
                                                            <label for="review-email">Correo <span>*</span></label>
                                                            <input id="review-email" value="<s:property value="#u.correo"/>" class="m-required m-email" readonly>
                                                        </div>
                                                        <!-- EMAIL FIELD : end -->
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <!-- REVIEW FIELD : begin -->
                                                        <div class="form-field">
                                                            <label for="review-message">Opinión<span>*</span></label>
                                                            <textarea id="review-message" name="opinion" class="m-required"></textarea>
                                                        </div>
                                                        <!-- REVIEW FIELD : end -->

                                                        <!-- RATING FIELD : begin -->
                                                        <div class="form-field">
                                                            <div class="review-rating">
                                                                <label>Clasificación</label>
                                                                <span class="rating-stars">
                                                                    <i class="fa fa-star" id="e1"></i>
                                                                    <i class="fa fa-star" id="e2"></i>
                                                                    <i class="fa fa-star" id="e3"></i>
                                                                    <i class="fa fa-star" id="e4"></i>
                                                                    <i class="fa fa-star" id="e5"></i>                                                                          
                                                                </span>
                                                                <input type="hidden" name="clasificacion" id="estrellas">
                                                            </div>
                                                        </div>

                                                        <!-- RATING FIELD : end -->

                                                        <!-- SUBMIT BUTTON : begin -->
                                                        <div class="form-field">
                                                            <button class="submit-btn c-button" type="button" data-label="Submit" data-loading-label="Sending..." id="boton">Enviar</button>
                                                        </div>
                                                        <!-- SUBMIT BUTTON : end -->
                                                    </div>
                                                </div>
                                                <input type="hidden" name="idproducto" value="<s:property value="#p.iditem"/>">
                                                <input type="hidden" name="producto" value="<s:property value="#p.iditem"/>">
                                                <input type="hidden" name="nombreusuario" value="<s:property value="#u.nombreusuario"/>">
                                            </form>
                                            <!-- REVIEW FORM : end -->

                                        </div>
                                        <!-- PRODUCT REVIEWS : end -->

                                    </li>
                                </ul>
                            </div>
                            <!-- PRODUCT TABS : end -->

                            <!-- RELATED PRODUCTS : begin -->
                            <div class="related-products">

                                <h2 class="heading-2">Productos Relacionados</h2>

                                <div class="row">
                                    <!-- PRODUCT : begin -->

                                    <s:iterator value="listaItems">
                                        <s:url action="detalle" var="detalle" >
                                            <s:param name="producto"><s:property value="iditem"/></s:param>
                                        </s:url>
                                        <div class="col-sm-4">
                                            <div class="product"> 
                                                <p class="product-image">
                                                    <a href="<s:property value="#detalle"/>"><img src="images/<s:property value="imagen"/>" alt=""></a>
                                                </p> 

                                                <h4 class="product-title"><a href="shop-detail.jsp"></a><s:property value="nombre"/></h4>
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
                                            </div> 
                                        </div>                                     
                                    </s:iterator>
                                    <!-- PRODUCT : end -->



                                </div>

                            </div>
                            <!-- RELATED PRODUCTS : end -->

                        </div>
                        <!-- PRODUCT DETAIL : end -->

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

                            <h3>Acerca de Beauty Center</h3>
                            <p><strong>BEAUTY CENTER</strong> es una empresa que ofrece servicios de <strong>salón de belleza, peluquería, bienestar y spa</strong>. 
                                Se parte de nosotros y disfruta al máximo de todos
                                <strong>productos y servicios</strong> que ofrecemos.</p>
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
                            <p>BEAUTY CENTER. Todos los derechos Reservados 2020 ©</p>
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
<script src="library/js/estrellas.js" type="text/javascript"></script>
<!-- SCRIPTS : end -->

</body>
</html>