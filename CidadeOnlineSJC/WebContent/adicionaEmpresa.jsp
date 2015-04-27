<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adicionar Empresa</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery-2.1.3.js"></script>
<script src="js/empresaAdicionada.js"></script>
</head>
<body>
	<header>
	<div class="container-fluid">
		<div id="top-nav" class="navbar navbar-static-top"
			style="background-color: #eee">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="btn btn-default" href="administrativa.jsp"><span
						class="glyphicon glyphicon-home"></span></a>
				</div>
			</div>
		</div>
		<div class="col-lg-12" style="padding: 0px 0px 15px">
			<div class="container">
				<div class="jumbotron">
					<img src="img/sao-jose.jpg" alt="t" title="Cidade Online"
						class="img-responsive">
				</div>
			</div>
		</div>
	</div>
	</header>
	<div class="container">
		<form role="form" action="adicionaEmpresa">
			<div class="form-group">
				<label for="endereco">CNPJ:</label> <input type="text"
					class="form-control" name="cnpj" placeholder="78.425.986/0036-15">
			</div>
			<div class="form-group">
				<label for="nome">Nome:</label> <input type="text"
					class="form-control" name="nome" placeholder="Nome Fantasia">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" name="email"
					placeholder="empresa@empresa.com.br">
			</div>
			<div class="form-group">
				<label for="logo">Logo:</label> <input type="file" name="logo"
					size="50" />
			</div>
			<input type="submit" onClick="empresaAdicionada.js"
				class="btn btn-success" value="Gravar" />
		</form>
		<hr />
		<p class="text-muted"></p>
		<!-- <form action="UploadImageServlet" method="post"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="logo">Logo:</label> <input type="file" name="file"
					size="50" />
			</div>
			<input type="submit" class="btn btn-default" value="Subir Imagem" />
		</form> -->
	</div>
</body>
</html>