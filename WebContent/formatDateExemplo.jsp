<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Data de inscrição</title>
</head>
<body>
	<jsp:useBean id="dao" class="br.cefet.modelo.AlunoDAO"></jsp:useBean>
	<a href="<c:url value="/index.jsp" />">Voltar</a>
	<table>
		<tr>
			<th>Matrícula</th>
			<th>Nome</th>
			<th>Data da Inscrição</th>
		</tr>
		<c:forEach var="aluno" items="${dao.lista}">
			<tr>
				<td>${aluno.matricula}</td>
				<td>${aluno.nome}</td>
				<td><fmt:formatDate value="${aluno.dataInscricao}" pattern="dd/MM/yyyy"/> </td>
			</tr>
		</c:forEach>
	</table>
	<a href="<c:url value="/index.jsp" />">Voltar</a>
</body>
</html>