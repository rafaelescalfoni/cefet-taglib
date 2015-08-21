<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cefet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Criando minha própria tag</title>
</head>
<body>
	<fieldset>
		<legend>Tag criada</legend>
		<cefet:campoData id="data" />
	</fieldset>
	
	<p>Basta criar uma pasta em WEB-INF e guardar sua referência em tagdir na diretiva taglib:<br/>
	<dl>
		<dd> &lt;%@taglib tagdir="/WEB-INF/tags" prefix="cefet"%&gt;</dd>
	</dl>
	<p>Dentro da pasta criada, crie sua tag com extensão .tag</p>
	<p>
		Cole dentro do arquivo, a estrutura jsp que deseja repetir.
	</p>
	<p>
		Pronto!
	</p>
	<p>
		Chame sua tag: &ltcefet:campoData id="data" /&gt;
	</p>
</body>
</html>