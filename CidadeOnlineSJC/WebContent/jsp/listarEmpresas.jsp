<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
		<a class="btn btn-default" href="administrativa.jsp"><span
			class="glyphicon glyphicon-home"></span></a>
	</div>
	<div class="container-fluid">
		<h2 class="text-primary text-center">Empresas</h2>
	</div>
	</header>
	<section>
	<div class="container">
		<div class="jumbotron bg-primary">
			<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

			<!-- cria a lista -->
			<jsp:useBean id="dao" class="br.com.cidadeonlinesjc.dao.EmpresaDAO" />
			<div class="table-responsive">
				<table class="table">
					<!-- for -->
					<c:forEach var="empresa" items="${dao.lista}">
						<tr>
							<td><img src="${empresa.logo}" class="img-circle"
								alt="Logo Empresa" style="width: 150px; height: 150px"></td>
							<td>${empresa.nome}</td>
							<td><a href="#"><span
									class="glyphicon glyphicon-remove-sign"></span></a></td>
							<td><a href="#"><span
									class="glyphicon glyphicon-plus-sign"></span></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	</section>
	<footer>
	<div class="container-fluid">
		<h6 class="text-center">
			<span class="glyphicon glyphicon-copyright-mark"></span> Copyright.
			Todos direitos reservados.
		</h6>
	</div>
	</footer>
</body>
</html>