<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Area Administrativa</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">


<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

</head>

<body>

	<div id="wrapper" style="background-color: #fff">

		<!-- Navigation -->
		<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="administrativa.jsp">Administrativo</a>
			</div>
			<!-- Top Menu Items -->
			<ul class="nav navbar-right top-nav">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-user"></i> Mateus <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
						</li>
						<li><a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="#"><i class="fa fa-fw fa-power-off"></i> Log
								Out</a></li>
					</ul></li>
			</ul>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">

					<!-- EMPRESA -->
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#empresa"><i class="fa fa-fw fa-edit"></i>
							Empresa <i class="fa fa-fw fa-caret-down"></i></a>
						<ul id="empresa" class="collapse">
							<li><a href="jsf/empresa-views/empresa.xhtml"><i
									class="fa fa-fw fa-edit"></i> Nova Empresa </a></li>
							<li><a href="jsf/empresa-views/listarEmpresas.xhtml"><i
									class="fa fa-fw fa-edit"></i> Alterar Empresa </a></li>
						</ul></li>

					<!-- CATEGORIA -->
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#categoria"><i class="fa fa-fw fa-edit"></i>
							Categoria <i class="fa fa-fw fa-caret-down"></i></a>
						<ul id="categoria" class="collapse">
							<li><a href="jsf/categoria-views/categoria.xhtml"><i
									class="fa fa-fw fa-edit"></i> Nova Categoria </a></li>
							<li><a href="jsf/categoria-views/listarCategorias.xhtml"><i
									class="fa fa-fw fa-edit"></i> Alterar Categoria </a></li>
						</ul></li>

					<!-- LOJA -->
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#loja"><i class="fa fa-fw fa-edit"></i> Loja <i
							class="fa fa-fw fa-caret-down"></i></a>
						<ul id="loja" class="collapse">
							<li><a href="jsf/loja-views/loja.xhtml"><i
									class="fa fa-fw fa-edit"></i> Nova Loja </a></li>
							<li><a href="jsf/loja-views/listarLojas.xhtml"><i
									class="fa fa-fw fa-edit"></i> Alterar Loja </a></li>
						</ul></li>

					<!-- USUÁRIO -->
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#usuario"><i class="fa fa-fw fa-edit"></i>
							Usuário <i class="fa fa-fw fa-caret-down"></i></a>
						<ul id="usuario" class="collapse">
							<li><a href="jsf/usuario-views/usuario.xhtml"><i
									class="fa fa-fw fa-edit"></i> Novo Usuário </a></li>
							<li><a href="jsf/usuario-views/listarUsuarios.xhtml"><i
									class="fa fa-fw fa-edit"></i> Alterar Usuário </a></li>
						</ul></li>

				</ul>
			</div>
		</div>
		<!-- /.navbar-collapse --> </nav>

		<div id="page-wrapper">

			<div class="container-fluid">
				<h1 class="page-header text-center">Bem Vindo!</h1>
				<div class="jumbotron text-center">
					<img src="img/cidadeOnline-logo-texto_03.png" style="width:300px; height:300px;"
						class="img-rounded">
				</div>
			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>