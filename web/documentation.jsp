﻿<!DOCTYPE html>
<html>
	<head>

		<meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Documentation | BeautySpot - A HTML5 Template for Beauty Salons</title>
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
										<li><a href="search-results.jsp">Search Results</a></li>
										<li><a href="404.jsp">Error 404</a></li>
										<li class="m-active"><a href="documentation.jsp">Documentation</a></li>
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
						<h1>Documentation</h1>
						<ul class="breadcrumbs">
							<li><a href="index.jsp">Home</a></li>
							<li>Documentation</li>
						</ul>
					</div>
				</div>
				<!-- PAGE HEADER : begin -->

				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-push-8">

							<!-- SIDEBAR : begin -->
							<aside id="sidebar" class="m-before-content">

								<!-- SIDEBAR LINKS : begin -->
								<div class="sidebar-widget sidebar-links">
									<h3 class="widget-title">Content</h3>
									<div class="widget-content">
										<ul>
											<li><a href="#introduction">Introduction</a></li>
											<li><a href="#basic-customization">CSS Customization</a></li>
											<li><a href="#third-party-services">Twitter, MailChimp & Disqus</a></li>
											<li><a href="#contact-reservation-forms">Contact & Reservation forms</a></li>
											<li><a href="#other">Other</a></li>
										</ul>
									</div>
								</div>
								<!-- SIDEBAR LINKS : end -->

							</aside>
							<!-- SIDEBAR : end -->

						</div>
						<div class="col-md-8 col-md-pull-4">

							<!-- PAGE CONTENT : begin -->
							<div id="page-content">
								<div class="various-content">

									<!-- INTRODUCTION : begin -->
									<section id="introduction">
										<p>This documentation will guide you through the customization possibilities of <strong>BEAUTYSPOT</strong> HTML5 template. If you don't find answers
										to all of your questions here, then feel free to contact me through my
										<a href="http://themeforest.net/user/ShakespeareThemes/portfolio?ref=LubosVolovar">profile on ThemeForest</a>.</p>
										<p>If you are a HTML beginner, <strong>I recommend to install some advanced HTML editor</strong> before you dive into customizing this template.
										<a href="http://notepad-plus-plus.org/" target="_blank">Notepad++</a> is great if you are Windows user and I've heard that
										<a href="http://brackets.io/" target="_blank">Brackets</a> editor is pretty good too if you are on Mac.</p>
									</section>
									<!-- INTRODUCTION : end -->

									<!-- CSS CUSTOMIZATION : begin -->
									<section id="basic-customization">

										<h2>CSS Customization</h2>

										<ul class="c-accordion">
											<li>
												<h3 class="accordion-title">Changing the color skin</h3>
												<div class="accordion-content">
													<p>BEAUTYSPOT offers several skins to choose from. In order to change the default one, you need to search for "default.css" inside HEAD tag. By default, whole line looks like this:</p>
													<p><code>&lt;link rel="stylesheet" type="text/css" href="library/css/skin/default.css"&gt;</code></p>
													<p>You can find all skins in "library/css/skin" directory. Change the "default" in above code to name of the existing skin, for example: "sunrise", "orient" or "mavericks".
													For example, if you want to use the "mavericks" skin, you need to change the code to this:</p>
													<p><code>&lt;link rel="stylesheet" type="text/css" href="library/css/skin/mavericks.css"&gt;</code></p>
													<p>Please note, <strong>that you will need to do this for all HTML files</strong>, but you can use something like "mass replace in files" function of your text editor
													("Search / Find in Files..." if you are using Notepad++) to make it quick.</p>
												</div>
											</li>
											<li>
												<h3 class="accordion-title">Adding your own CSS definitions</h3>
												<div class="accordion-content">
													<p>If you want to add your own CSS definitions or override existing ones, use the "library/css/custom.css" file for that.
													This file is already linked to all HTML templates, just save your changes and it is done.</p>
												</div>
											</li>
											<li>
												<h3 class="accordion-title">Custom color scheme with SASS</h3>
												<div class="accordion-content">
													<p>If you are not familiar with the SASS language, check <a href="http://sass-lang.com">sass-lang.com</a> first.</p>
													<p>The easiest way to create a custom color scheme (skin) is to make copy of the existing one in "library/skin" directory
													and change some SASS variables.</p>
													<p>You will find two file types for each theme, one with ".css" extension and other with the ".scss" extension.
													Make copy of the ".scss" one (for example "default.scss") and rename it to, let's say, "mytheme.scss".</p>
													<p>Open this new file in the editor. You will find all variables at the top of the document, most important ones are
													<strong>"$color-1"</strong>, <strong>"$color-2"</strong> and <strong>"$color-3"</strong>.
													You can change just those three colors to create a brand new skin,
													but of course, you can play with values of all other variables to fine-tune your scheme.</p>
													<p>After you have made your changes, save the file. Now you need to convert "mytheme.scss" to "mytheme.css" (note the different extension).
													First create an empty file named "mytheme.css" in "library/css/skin".
													Then use any online SASS to CSS converter (for example <a href="http://sassmeister.com/">sassmeister.com</a>).
													After the successful conversion, copy the converted CSS code to "mytheme.css" file.
													Now you just need to link this new skin to your templates following the instructions in "Changing the color skin" section.</p>
												</div>
											</li>
										</ul>

									</section>
									<!-- CSS CUSTOMIZATION : end -->

									<!-- SERVICES : begin -->
									<section id="third-party-services">

										<h2>Twitter, MailChimp & Disqus</h2>

										<ul class="c-accordion">
											<li>
												<h3 class="accordion-title">Twitter feed</h3>
												<div class="accordion-content">
													<p>In order to make Twitter Feed work, you need to create your own Twitter App.
													Go to <a href="https://dev.twitter.com/" target="_blank">dev.twitter.com</a> and log in with your Twitter account.</p>
													<p>When you are logged in, go to <a href="https://dev.twitter.com/apps">your applications</a> and click on
													<strong>Create a new application</strong>.</p>
													<p>Give it some meaningful name, for example "yourUsername Twitter Feed" and fill all other required fields.</p>
													<p>After submiting the form, you will be redirected to next screen, where you need to click on <strong>Create my access token</strong> button (at the bottom).</p>
													<p>Now you should see the screen with all of your app's information (refresh the page as the access token may not be visible yet).
													Copy the <strong>Consumer key</strong>, <strong>Consumer secret</strong>, <strong>Access token</strong> and <strong>Access token secret</strong>
													to the corresponding places in "library/twitter/index.php" file.</p>
													<p>You can also follow <a href="http://iag.me/socialmedia/how-to-create-a-twitter-app-in-8-easy-steps/">this tutorial</a> on how to create Twitter App.</p>
													<p>After you have inserted your credentials, search for element with "footer-twitter" class in "index.jsp" template and change its "data-id" attribute to your Twitter username.
													You will need to do this change for all HTML templates.</p>
												</div>
											</li>
											<li>
												<h3 class="accordion-title">MailChimp subscribe form</h3>
												<div class="accordion-content">
													<p>You need to have a <a href="http://mailchimp.com/">Mailchimp</a> account in order to make subscribe form work.</p>
													<p>Log in to Mailchimp and go to desired subscribers <strong>List</strong> which you want to connect with this template.
													Click on <strong>Signup forms</strong> and build some basic signup form. If you want to use this template's subscribe form as it is, you will need
													just an email field (field tag EMAIL).</p>
													<p>When you done building the form, go back to <strong>Signup forms</strong> and click on <strong>Embedded forms</strong>.
													You should see the code of your form in <strong>Copy/paste onto your site</strong> section. Copy it into your text editor, but you need just form's action URL.
													Search for "&lt;form action=" and copy the whole URL. It should look similar to this: <strong>http://volovar.us8.list-manage.com/subscribe/post?u=76a50c9454ec8ab78914d1bf2&amp;id=49e892f53d</strong>.</p>
													<p>You need to edit it a little bit though. Replace <strong>"post?"</strong> with <strong>"post-json?"</strong> and add <strong>"&amp;c=?"</strong> at the end.
													You should get something similar to this: <strong>http://volovar.us8.list-manage.com/subscribe/post-json?u=76a50c9454ec8ab78914d1bf2&amp;id=49e892f53d&amp;c=?</strong>.</p>
													<p>You can also replace "&amp;" with "&amp;amp;" for HTML to be valid. So the final link should look like this:
													<strong>http://volovar.us8.list-manage.com/subscribe/post-json?u=76a50c9454ec8ab78914d1bf2&amp;amp;id=49e892f53d&amp;amp;c=?</strong>.</p>
													<p>Now, search the "index.jsp" template for element with "subscribe-form" id and change its "action" attribute to this URL. You will need to make this change for all HTML templates.</p>
												</div>
											</li>
											<li>
												<h3 class="accordion-title">Disqus comments</h3>
												<div class="accordion-content">
													<p>You can find an example of the Disqus comments in <a href="blog-image-disqus.jsp">blog-image-disqus.jsp</a> template.
													Search for first occurence of "disqus_shortname" and change its value to your Disqus shortname, it should look like this:</p>
													<p><code>var disqus_shortname = 'my_shortname';</code></p>
													<p>Copy the whole block (starting with "&lt;!-- DISQUS CODE : begin --&gt;" and ending with "&lt;!-- DISQUS CODE : end --&gt;") to any place,
													where you want to display your Disqus comments.</p>
												</div>
											</li>
										</ul>

									</section>
									<!-- SERVICES : end -->

									<!-- CONTACT & RESERVATION FORMS : begin -->
									<section id="contact-reservation-forms">

										<h2>Contact & Reservation Forms</h2>

										<ul class="c-accordion">
											<li>
												<h3 class="accordion-title">Contact form</h3>
												<div class="accordion-content">
													<p>Please note, that you will need to <strong>host your site on the PHP hosting</strong> for contact form to work.</p>
													<p>To set up the contact form, you just need to open the <strong>"ajax/contact-form.php"</strong> file
													and change all its variables to suit your needs. Most important variable is the first one - "email_to".
													This specifies the email address where all contact form messages will be sent.</p>
												</div>
											</li>
											<li>
												<h3 class="accordion-title">Reservation form</h3>
												<div class="accordion-content">
													<p>Everything which was said for contact form, applies also to reservation form. This form works on the same principle,
													but it uses <strong>"ajax/reservation-form.php"</strong> file for sending messages.</p>
													<p>You can change reservation form HTML template in <strong>"ajax/reservation-form.jsp"</strong>.</p>
												</div>
											</li>
										</ul>

									</section>
									<!-- CONTACT & RESERVATION FORMS : end -->

									<!-- OTHER : begin -->
									<section id="other">

										<h2>Other</h2>

										<h3>Icons</h3>
										<p><strong>BEAUTYSPOT</strong> uses <a href="http://fortawesome.github.io/Font-Awesome/" target="_blank">Font Awesome</a> iconic font.</p>
										<p>To add an icon, use <code>&lt;i class="fa fa-heart"&gt;&lt;/i&gt;</code> code and replace the "fa-heart" with any class from
										<a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">Font Awesome icon set</a>. For example:
										<code>&lt;i class="fa fa-flag"&gt;&lt;/i&gt;</code>, <code>&lt;i class="fa fa-folder"&gt;&lt;/i&gt;</code>, etc.</p>

										<h3>Header Animation</h3>
										<p>Header background animation is enabled by default. To disable it, remove the class "m-animated" from <code>&lt;header id="header"&gt;</code> element.
										You will need to do this change for all HTML templates.</p>

									</section>
									<!-- OTHER : end -->

								</div>
							</div>
							<!-- PAGE CONTENT : end -->

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
		<script src="library/twitter/jquery.tweet.min.js" type="text/javascript"></script><!-- Twitter Feed -->
		<script src="library/js/library.js" type="text/javascript"></script>
		<script src="library/js/scripts.js" type="text/javascript"></script>
		<!-- SCRIPTS : end -->

	</body>
</html>