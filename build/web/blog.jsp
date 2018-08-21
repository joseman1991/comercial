﻿<!DOCTYPE html>
<html>
	<head>

		<meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Blog | Beauty - A HTML5 Template for Beauty Salons</title>
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
								<li>
									<span><a href="services.jsp">Pages</a></span>
									<ul class="sub-menu">
										<li><a href="services.jsp">Services</a></li>
										<li><a href="about-us.jsp">About Us</a></li>
										<li><a href="gallery.jsp">Gallery</a></li>
										<li><a href="typography.jsp">Typography</a></li>
										<li><a href="elements.jsp">Elements</a></li>
										<li><a href="search-results.jsp">Search Results</a></li>
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
								<li class="m-active">
									<span><a href="blog.jsp">Blog</a></span>
									<ul class="sub-menu">
										<li class="m-active"><a href="blog.jsp">Article List</a></li>
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
						<h1>Blog</h1>
						<ul class="breadcrumbs">
							<li><a href="index.jsp">Home</a></li>
							<li>Blog</li>
						</ul>
					</div>
				</div>
				<!-- PAGE HEADER : begin -->

				<div class="container">
					<div class="row">
						<div class="col-md-8">

							<!-- PAGE CONTENT : begin -->
							<div id="page-content">

								<!-- BLOG LIST : begin -->
								<div class="blog-list">

									<!-- IMAGE ARTICLE : begin -->
									<article class="image">

										<!-- ARTICLE IMAGE : begin -->
										<div class="article-image">
											<a href="blog-image.jsp"><img src="images/article_image.jpg" alt=""></a>
										</div>
										<!-- ARTICLE IMAGE : end -->

										<!-- ARTICLE HEADER : begin -->
										<header class="article-header">
											<span class="article-date">May 7, 2014</span>
											<h2 class="article-title"><a href="blog-image.jsp">This is image article</a></h2>
										</header>
										<!-- ARTICLE HEADER : end -->

										<!-- ARTICLE CONTENT : begin -->
										<div class="article-content various-content">
											<p class="lead">Far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
											<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
										</div>
										<!-- ARTICLE CONTENT : end -->

										<!-- ARTICLE FOOTER : begin -->
										<footer class="article-footer">
											<ul class="article-info">
												<li class="author">N.Mars</li>
												<li class="categories"><a href="#">Beauty</a>, <a href="#">Treatments</a>, <a href="#">Fashion</a></li>
												<li class="comments"><a href="#">4 comments</a></li>
											</ul>
											<p class="article-more"><a href="blog-image.jsp" class="c-button">Read More</a></p>
										</footer>
										<!-- ARTICLE FOOTER : end -->

									</article>
									<!-- IMAGE ARTICLE : end -->

									<!-- VIDEO ARTICLE : begin -->
									<article class="video">

										<!-- ARTICLE VIDEO : begin -->
										<div class="article-video">
											<div class="embed-video">
												<iframe src="http://player.vimeo.com/video/6936029" width="500" height="281"></iframe>
											</div>
										</div>
										<!-- ARTICLE VIDEO : end -->

										<!-- ARTICLE HEADER : begin -->
										<header class="article-header">
											<span class="article-date">May 6, 2014</span>
											<h2 class="article-title"><a href="blog-video.jsp">Video article looks like this</a></h2>
										</header>
										<!-- ARTICLE HEADER : end -->

										<!-- ARTICLE CONTENT : begin -->
										<div class="article-content various-content">
											<p class="lead">Because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia.</p>
											<p>Put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>
										</div>
										<!-- ARTICLE CONTENT : end -->

										<!-- ARTICLE FOOTER : begin -->
										<footer class="article-footer">
											<ul class="article-info">
												<li class="author">N.Mars</li>
												<li class="categories"><a href="#">Video</a>, <a href="#">Glamour</a>, <a href="#">Blur</a></li>
												<li class="comments"><a href="#">2 comments</a></li>
											</ul>
											<p class="article-more"><a href="blog-video.jsp" class="c-button">Read More</a></p>
										</footer>
										<!-- ARTICLE FOOTER : end -->

									</article>
									<!-- VIDEO ARTICLE : end -->

									<!-- AUDIO ARTICLE : begin -->
									<article class="audio">

										<!-- ARTICLE AUDIO : begin -->
										<div class="article-audio">
											<div class="embed-audio">
												<iframe src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/66345578&amp;auto_play=false&amp;hide_related=false&amp;visual=true"></iframe>
											</div>
										</div>
										<!-- ARTICLE AUDIO : end -->

										<!-- ARTICLE HEADER : begin -->
										<header class="article-header">
											<span class="article-date">May 5, 2014</span>
											<h2 class="article-title"><a href="blog-audio.jsp">Example of audio article</a></h2>
										</header>
										<!-- ARTICLE HEADER : end -->

										<!-- ARTICLE CONTENT : begin -->
										<div class="article-content various-content">
											<p class="lead">That where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind Text should turn around and return to its own, safe country.</p>
											<p>But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their projects again and again. And if she hasn’t been rewritten, then they are still using her.</p>
										</div>
										<!-- ARTICLE CONTENT : end -->

										<!-- ARTICLE FOOTER : begin -->
										<footer class="article-footer">
											<ul class="article-info">
												<li class="author">N.Mars</li>
												<li class="categories"><a href="#">Audio</a>, <a href="#">Solar Fields</a>, <a href="#">Ambient</a></li>
												<li class="comments"><a href="#">0 comments</a></li>
											</ul>
											<p class="article-more"><a href="blog-audio.jsp" class="c-button">Read More</a></p>
										</footer>
										<!-- ARTICLE FOOTER : end -->

									</article>
									<!-- AUDIO ARTICLE : end -->

									<!-- QUOTE ARTICLE : begin -->
									<article class="quote">

										<!-- ARTICLE HEADER : begin -->
										<header class="article-header">
											<span class="article-date">May 4, 2014</span>
											<h2 class="article-title"><a href="blog-quote.jsp">This is a quote article</a></h2>
										</header>
										<!-- ARTICLE HEADER : end -->

										<!-- ARTICLE QUOTE : begin -->
										<div class="article-quote">
											<blockquote>
												<p>"People who think they know everything are a great annoyance to those of us who do."</p>
												<footer>- Isaac Asimov</footer>
											</blockquote>
										</div>
										<!-- ARTICLE QUOTE : end -->

										<!-- ARTICLE CONTENT : begin -->
										<div class="article-content various-content">
											<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
										</div>
										<!-- ARTICLE CONTENT : end -->

										<!-- ARTICLE FOOTER : begin -->
										<footer class="article-footer">
											<ul class="article-info">
												<li class="author">N.Mars</li>
												<li class="categories"><a href="#">Quote</a>, <a href="#">Asimov</a>, <a href="#">Wisdom</a></li>
												<li class="comments"><a href="#">0 comments</a></li>
											</ul>
											<p class="article-more"><a href="blog-quote.jsp" class="c-button">Read More</a></p>
										</footer>
										<!-- ARTICLE FOOTER : end -->

									</article>
									<!-- QUOTE ARTICLE : end -->

									<!-- LINK ARTICLE : begin -->
									<article class="link">

										<!-- ARTICLE HEADER : begin -->
										<header class="article-header">
											<span class="article-date">May 3, 2014</span>
											<h2 class="article-title"><a href="blog-link.jsp">Example of link article</a></h2>
										</header>
										<!-- ARTICLE HEADER : end -->

										<!-- ARTICLE LINK : begin -->
										<div class="article-link">
											<a href="http://themeforest.net/user/LubosVolovar/portfolio?ref=LubosVolovar">Check out my portfolio on ThemeForest</a>
										</div>
										<!-- ARTICLE LINK : end -->

										<!-- ARTICLE CONTENT : begin -->
										<div class="article-content various-content">
											<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
										</div>
										<!-- ARTICLE CONTENT : end -->

										<!-- ARTICLE FOOTER : begin -->
										<footer class="article-footer">
											<ul class="article-info">
												<li class="author">N.Mars</li>
												<li class="categories"><a href="#">Quote</a>, <a href="#">Asimov</a>, <a href="#">Wisdom</a></li>
												<li class="comments"><a href="#">0 comments</a></li>
											</ul>
											<p class="article-more"><a href="blog-link.jsp" class="c-button">Read More</a></p>
										</footer>
										<!-- ARTICLE FOOTER : end -->

									</article>
									<!-- LINK ARTICLE : end -->

								</div>
								<!-- BLOG LIST : end -->

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
							<!-- PAGE CONTENT : end -->

						</div>
						<div class="col-md-4">

							<!-- SIDEBAR : begin -->
							<aside id="sidebar">

								<!-- SIDEBAR SEARCH : begin -->
								<div class="sidebar-widget sidebar-search">
									<h3 class="widget-title">Search</h3>
									<div class="widget-content">
										<form class="c-search-form" action="search-results.jsp">
											<div class="form-fields">
												<input type="text" data-placeholder="What to search...">
												<button class="c-button" type="submit"><i class="fa fa-search"></i></button>
											</div>
										</form>
									</div>
								</div>
								<!-- SIDEBAR SEARCH : end -->

								<!-- SIDEBAR LINKS : begin -->
								<div class="sidebar-widget sidebar-links">
									<h3 class="widget-title">Categories</h3>
									<div class="widget-content">
										<ul>
											<li><a href="#">Beauty</a></li>
											<li><a href="#">Cosmetics</a></li>
											<li><a href="#">Fashion</a></li>
											<li><a href="#">Travel</a></li>
											<li><a href="#">Treatments</a></li>
										</ul>
									</div>
								</div>
								<!-- SIDEBAR LINKS : end -->

								<!-- SIDEBAR ARTICLES : begin -->
								<div class="sidebar-widget sidebar-articles">
									<h3 class="widget-title">Popular Articles</h3>
									<div class="widget-content">
										<ul>
											<li>
												<h4 class="article-title"><a href="blog-image.jsp">Link to example of image article</a></h4>
												<p class="article-date">May 7, 2014</p>
											</li>
											<li>
												<h4 class="article-title"><a href="blog-video.jsp">Check out this video article</a></h4>
												<p class="article-date">May 6, 2014</p>
											</li>
											<li>
												<h4 class="article-title"><a href="blog-audio.jsp">Audio article example here</a></h4>
												<p class="article-date">May 5, 2014</p>
											</li>
										</ul>
									</div>
								</div>
								<!-- SIDEBAR ARTICLES : end -->

								<!-- SIDEBAR TAGS : begin -->
								<div class="sidebar-widget sidebar-tags">
									<h3 class="widget-title">Popular Tags</h3>
									<div class="widget-content">
										<ul>
											<li><a href="#">Beauty</a></li>
											<li><a href="#">Cosmetics</a></li>
											<li><a href="#">Fashion</a></li>
											<li><a href="#">Travel</a></li>
											<li><a href="#">Treatments</a></li>
										</ul>
									</div>
								</div>
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