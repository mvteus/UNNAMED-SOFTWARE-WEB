<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrativo</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css"
	type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
	<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Admin</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><i class="glyphicon glyphicon-lock"></i>
							Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--/header-->

	<!-- Main -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3">
				<hr>
				<a href="#"><strong><i class="glyphicon glyphicon-cog"></i>
						Options (Shop)</strong></a>
				<hr>

				<ul class="nav nav-pills nav-stacked">
					<li class="nav-header"></li>
					<li><a href="adicionaEmpresa.jsp"><i
							class="glyphicon glyphicon-plus"></i> New</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-refresh"></i>
							Modify</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-remove"></i>
							Delete</a></li>
				</ul>
			</div>

			<div class="col-sm-9">
				<hr>
				<div class="row">
					<div class="col-md-6">
						<a href="#"><strong><i
								class="glyphicon glyphicon-alert"></i> Center</strong></a>
						<hr>
					</div>
					<!--/col-->

					<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4>Notices</h4>
							</div>
							<div class="panel-body">
								This website is under development. <br> <br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>