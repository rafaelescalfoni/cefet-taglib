<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Alunos matriculados</h1>
	<a href="<c:url value="/index.jsp" />">Voltar</a>

	<ul>
		<jsp:useBean id="dao" class="br.cefet.modelo.AlunoDAO"></jsp:useBean>
		<c:forEach items="${dao.lista}" var="aluno">
			<li>${aluno.nome}- <c:choose>
					<c:when test="${not empty aluno.curso}">
						<a href=“/secretaria?mat=${aluno.matricula}”>Editar</a>
					</c:when>
					<c:otherwise>Curso não encontrado</c:otherwise>
				</c:choose>
			</li>
		</c:forEach>
	</ul>
	<a href="<c:url value="/index.jsp" />">Voltar</a>
</body>
</html>