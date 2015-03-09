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
			<img src="imagens/2048 2.jpg" alt="t" title="Cidade Online">
		</div>
	</div>
	</header>
	<div class="container">
		<form role="form" action="adicionaEmpresa">
			<div class="form-group">
				<label for="nome">Nome:</label> <input type="text"
					class="form-control" name="nome" placeholder="Fulano Silva">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" name="email" placeholder="123@123.com.br">
			</div>
			<div class="form-group">
				<label for="endereco">Endereço:</label> <input type="text"
					class="form-control" name="endereco" placeholder="Rua 123">
			</div>
			<div class="form-group">
				<label for="logo">Logo:</label> <input type="file" name="file"
					size="50" />
			</div>
			<input type="submit" class="btn btn-default" value="Gravar" />
		</form>
		<hr />
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