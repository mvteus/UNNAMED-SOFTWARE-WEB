<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Cidade_Online</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/stylish-portfolio.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>



</head>
<body>

	<div id="wrapper">
		<nav class="navbar navbar-default  navbar-fixed-top ">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#page-top">Cidade Online</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-header navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<li class="page-scroll"><a href="#">Sobre</a></li>
					<li class="page-scroll"><a href="administrativa.jsp">Acesso
							Restrito</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
		<!-- Navigation -->
	</div>

	<!-- Header -->
	<header id="top" class="header">

	<div class="text-vertical-center">
		<img class="img-responsive btn"
			src="http://placehold.it/200x200&amp;text=Logo" alt="">
		<h1>Cidade Online</h1>

		<br>

	</div>
	</header>

	<!-- About -->
	<section id="about" class="about">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Achar o que voce procura nunca foi tão facil.</h2>
				<form class="navbar-form" role="search">
					<div class="input-group">
						<input type="text" class="form-control " placeholder="Search"
							style="width: 700px" name="srch-term" id="srch-term">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>

			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- Map -->
	<section>
	<div id="mapa" style="height: 600px; width: 100%"></div>
	<script
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAjYG9u1yoUnaw2CYn905mHU8jaOUYY91A&amp;sensor=false"></script>
	<script src="js/mapa.js"></script> </section>

	<!-- Footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 text-center">
				<h4>
					<strong>ACI</strong>
				</h4>
				<p>
					Afonso Pena<br>São José dos Campos
				</p>
				<ul class="list-unstyled">

					<li><i class="fa fa-envelope-o fa-fw"></i> <a
						href="mailto:name@example.com">aci@empresa.com</a></li>
				</ul>
				<br>
				<ul class="list-inline">
					<li><a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
					</li>
					<li><a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
					</li>
					<li><a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
					</li>
				</ul>
				<hr class="small">
				<p class="text-muted">Copyright & copy; Your Website 2015</p>
			</div>
		</div>
	</div>
	</footer>



	<!-- Custom Theme JavaScript -->
	<script>
		// Closes the sidebar menu
		$("#menu-close").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});

		// Opens the sidebar menu
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});

		// Scrolls to the selected menu item on the page
		$(function() {
			$('a[href*=#]:not([href=#])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										|| location.hostname == this.hostname) {

									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body').animate({
											scrollTop : target.offset().top
										}, 1000);
										return false;
									}
								}
							});
		});
	</script>

</body>


</html>