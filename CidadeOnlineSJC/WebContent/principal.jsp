<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CIDADE ONLINE</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- Cabeçalho -->
	<c:import url="views/cabecalho.jsp" />

	<!-- cria a lista -->
	<jsp:useBean id="dao" class="br.com.cidadeonlinesjc.dao.EmpresaDAO" />
	<table>
		<!-- for -->
		<tr>
			<td><a href="views/adicionaEmpresa.jsp">Cadastrar</a></td>
		</tr>
		<c:forEach var="empresa" items="${dao.lista}">
			<tr>
				<td>${empresa.nome}</td>

				<td>${empresa.email}</td>

				<td>${empresa.endereco}</td>
			</tr>
		</c:forEach>
	</table>
	<!-- Rodapé -->
	<c:import url="views/rodape.jsp" />

</body>
</html>