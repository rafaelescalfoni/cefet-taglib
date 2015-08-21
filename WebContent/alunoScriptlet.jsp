<%@page import="java.util.List"%>
<%@page import="br.cefet.modelo.Aluno"%>
<%@page import="br.cefet.modelo.AlunoDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Relação de alunos</title>
</head>
<body>
	<h1>Alunos cadastrados</h1>
	<a href="/cefet-taglib/index.jsp">Voltar</a>
	<ul>
		
	<%
		AlunoDAO dao = new AlunoDAO();
		List<Aluno>lista = dao.list();
		for (Aluno aluno:lista) {
	%>
		<li>
	<%	
			out.println(aluno.getMatricula() + " - " + aluno.getNome());
	 %>
		</li>
	<% 
		}
	%>
		
	</ul>
	<a href="/cefet-taglib/index.jsp">Voltar</a>
</body>
</html>