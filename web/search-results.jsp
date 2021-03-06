﻿<!DOCTYPE html>
<html>
	<head>

		<meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Search results | BeautySpot - A HTML5 Template for Beauty Salons</title>
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

	</head>
	<body>

		<!-- HEADER : begin -->
		<header id="header" class="m-animated">
			<div class="header-bg">
				<div class="header-inner">

					<!-- HEADER BRANDING : begin -->
					<div class="header-branding">
						<a href="index.jsp"><img src="images/logo.png" alt="BeautySpot" data-hires="images/logo.2x.png" width="291"></a>
					</div>
					<!-- HEADER BRANDING : end -->

					<!-- HEADER NAVIGATION : begin -->
					<div class="header-navigation">

						<!-- HEADER MENU : begin -->
						<nav class="header-menu">
							<button class="header-menu-toggle" type="button"><i class="fa fa-bars"></i>MENU</button>
							<ul>
								<li>
									<span><a href="index.jsp">Front Page</a></span>
								</li>
								<li class="m-active">
									<span><a href="services.jsp">Pages</a></span>
									<ul class="sub-menu">
										<li><a href="services.jsp">Services</a></li>
										<li><a href="about-us.jsp">About Us</a></li>
										<li><a href="gallery.jsp">Gallery</a></li>
										<li><a href="typography.jsp">Typography</a></li>
										<li><a href="elements.jsp">Elements</a></li>
										<li class="m-active"><a href="search-results.jsp">Search Results</a></li>
										<li><a href="404.jsp">Error 404</a></li>
										<li><a href="documentation.jsp">Documentation</a></li>
									</ul>
								</li>
								<li>
									<span><a href="shop-list.jsp">Shop</a></span>
									<ul class="sub-menu">
										<li><a href="shop-list.jsp">Product List</a></li>
										<li><a href="shop-detail.jsp">Product Detail</a></li>
										<li><a href="shop-cart.jsp">Cart Detail</a></li>
										<li><a href="shop-checkout.jsp">Checkout</a></li>
									</ul>
								</li>
								<li>
									<span><a href="blog.jsp">Blog</a></span>
									<ul class="sub-menu">
										<li><a href="blog.jsp">Article List</a></li>
										<li><a href="blog-image.jsp">Image Article</a></li>
										<li><a href="blog-video.jsp">Video Article</a></li>
										<li><a href="blog-audio.jsp">Audio Article</a></li>
										<li><a href="blog-quote.jsp">Quote Article</a></li>
										<li><a href="blog-link.jsp">Link Article</a></li>
										<li><a href="blog-image-disqus.jsp">Disqus Comments</a></li>
									</ul>
								</li>
								<li>
									<span><a href="contact.jsp">Contact</a></span>
								</li>
							</ul>
						</nav>
						<!-- HEADER MENU : end -->

						<!-- HEADER CART : begin -->
						<div class="header-cart">
							<div class="header-cart-inner">
								<a href="shop-cart.jsp"><i class="cart-ico fa fa-shopping-cart"></i><span class="cart-label">Cart</span><span class="cart-count">(3 items)</span></a>
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
						<div class="header-reservation">
							<a href="ajax/reservation-form.jsp" class="c-button m-open-ajax-modal">Make a Reservation</a>
						</div>
						<!-- HEADER RESERVATION : end -->

						<!-- HEADER CONTACT : begin -->
						<div class="header-contact">
							<ul>

								<!-- PHONE : begin -->
								<li>
									<div class="item-inner">
										<i class="ico fa fa-phone"></i>
										<strong>321 654 987</strong>
									</div>
								</li>
								<!-- PHONE : end -->

								<!-- EMAIL : begin -->
								<li>
									<div class="item-inner">
										<i class="ico fa fa-envelope-o"></i>
										<a href="#">hello@beautyspot.com</a>
									</div>
								</li>
								<!-- EMAIL : end -->

								<!-- ADDRESS : begin -->
								<li>
									<div class="item-inner">
										<i class="ico fa fa-map-marker"></i>
										<strong>BEAUTYSPOT</strong><br>
										9015 Sunset Boulevard<br>
										Ca 90069
									</div>
								</li>
								<!-- ADDRESS : end -->

								<!-- HOURS : begin -->
								<li>
									<div class="item-inner">
										<i class="ico fa fa-clock-o"></i>
										<dl>
											<dt>Mo. - Fr.:</dt>
											<dd>10:00 - 16:00</dd>
											<dt>Sa.:</dt>
											<dd>10:00 - 14:00</dd>
											<dt>Su.:</dt>
											<dd>Closed</dd>
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
			<div id="core">

				<!-- PAGE HEADER : begin -->
				<div id="page-header">
					<div class="container">
						<h1>Searching for "Lorem Ipsum"</h1>
						<ul class="breadcrumbs">
							<li><a href="index.jsp">Home</a></li>
							<li>Search</li>
						</ul>
					</div>
				</div>
				<!-- PAGE HEADER : begin -->

				<div class="container">

					<!-- PAGE CONTENT : begin -->
					<div id="page-content">

						<!-- SEARCH RESULTS : begin -->
						<div class="search-results">

							<!-- SEARCH FORM : begin -->
							<form class="c-search-form" action="search-results.jsp">
								<div class="form-fields">
									<input type="text" data-placeholder="Lorem Ipsum">
									<button class="c-button" type="submit"><i class="fa fa-search"></i></button>
								</div>
							</form>
							<!-- SEARCH FORM : end -->

							<!-- DIVIDER : begin -->
							<hr class="c-divider m-medium">
							<!-- DIVIDER : end -->

							<!-- RESULTS LIST : begin -->
							<ul class="results-list">

								<!-- RESULT ITEM : begin -->
								<li>
									<h3 class="item-title">Aliquam lorem ante, dapibus in, viverra quis</h3>
									<p class="item-link"><a href="#">http://demos.volovar.net/beautyspot/demo/lorem-ipsum.jsp</a></p>
									<div class="item-text various-content">
										<p>Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. <span class="search-query">Lorem Ipsum</span>. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
									</div>
								</li>
								<!-- RESULT ITEM : end -->

								<!-- RESULT ITEM : begin -->
								<li>
									<h3 class="item-title">Nam quam nunc, blandit vel, luctus pulvinar</h3>
									<p class="item-link"><a href="#">http://demos.volovar.net/beautyspot/demo/another-example.jsp</a></p>
									<div class="item-text various-content">
										<p>Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut <span class="search-query">Lorem Ipsum</span> libero venenatis faucibus. Nullam quis ante. Etiam sit.</p>
									</div>
								</li>
								<!-- RESULT ITEM : end -->

								<!-- RESULT ITEM : begin -->
								<li>
									<h3 class="item-title">In enim justo, rhoncus ut, imperdiet a, venenatis vitae</h3>
									<p class="item-link"><a href="#">http://demos.volovar.net/beautyspot/demo/donec-pede-justo.jsp</a></p>
									<div class="item-text various-content">
										<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, <span class="search-query">Lorem Ipsum</span> aliquet nec, vulputate eget, arcu.</p>
									</div>
								</li>
								<!-- RESULT ITEM : end -->

							</ul>
							<!-- RESULTS LIST : end -->

							<!-- PAGINATION : begin -->
							<ul class="c-pagination">
								<li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
								<li><a href="#">1</a></li>
								<li class="m-active"><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
							</ul>
							<!-- PAGINATION : end -->

						</div>
						<!-- SEARCH RESULTS : end -->

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