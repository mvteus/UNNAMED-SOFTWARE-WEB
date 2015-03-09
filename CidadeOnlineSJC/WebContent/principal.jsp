<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CIDADE ONLINE</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css"
	type="text/css">
<link rel="stylesheet" href="css/estilos.css" type="text/css">
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%-- 	<!-- Cabeçalho -->
	<c:import url="views/cabecalho.jsp" />

	<!-- cria a lista -->
	<jsp:useBean id="dao" class="br.com.cidadeonlinesjc.dao.EmpresaDAO" />
	<div class="table-responsive">
		<table class="table">
			<!-- for -->
			<tr>
				<td><a class="btn btn-primary" href="adicionaEmpresa.jsp">Cadastrar</a></td>
			</tr>
			<c:forEach var="empresa" items="${dao.lista}">
				<tr>
					<td>${empresa.nome}</td>

					<td>${empresa.email}</td>

					<td>${empresa.endereco}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!-- Rodapé -->
	<c:import url="views/rodape.jsp" /> --%>

	<header>

	<div id="top-nav" class="navbar navbar-static-top"
		style="background-color: #eee">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Home Page</a>
			</div>
		</div>
	</div>
	<div class="col-lg-12" style="padding: 0px 0px 15px">
		<img src="imagens/2048 2.jpg" alt="t" title="Cidade Online">
	</div>

	<fieldset class="text-muted" style="font-size: 13px">
		<label> <span>Login</span> <input type="text" name="login"
			id="login" placeholder="Seu login de acesso">
		</label> <label> <span>Senha</span> <input type="text" name="senha"
			id="senha" placeholder="Sua senha de acesso">
		</label> <label> <a href="administrativa.jsp"><button>Entrar</button></a>
		</label>
	</fieldset>

	</header>

	<section id="main"> </section>

	<section id="destaques"> </section>

	<footer> </footer>

</body>

</body>
</html>