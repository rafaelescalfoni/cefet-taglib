<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Comparativo de tecnologias</h1>
	<ul>
		<li>
			<a href="<c:url value="/alunos" />">Listar alunos (usando Servlet)</a>
		</li>
		<li>
			<a href="<c:url value="/alunoScriptlet.jsp" /> ">Listar alunos (usando JSP Scriptlet)</a> 
		</li>
		<li>
			<a href="<c:url value="/alunoTaglib.jsp"/>">Listar alunos (usando JSP Taglib)</a> 
		</li>
	</ul>
	<h1>Aplicando JSTL core</h1>
	<p>&lt;c:choose &gt;,  &lt;c:when &gt;, &lt;c:otherwise &gt; </p>
		<a href="<c:url value="/chooseExemplo.jsp" />">Exemplo</a>
	<h1>Aplicando JSTL fmt</h1>
	<p>&lt;fmt:formatDate &gt; </p>
		<a href="<c:url value="/formatDateExemplo.jsp" />">Exemplo</a>
	
	<h1>Criando uma tag própria</h1>
		<a href="<c:url value="/customTagExemplo.jsp" />">Exemplo</a>
</body>
</html>