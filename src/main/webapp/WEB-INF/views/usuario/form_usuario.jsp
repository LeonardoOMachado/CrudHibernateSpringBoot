<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> ${action} usuario</title>
</head>
<body>
	<h1> <span>${action} Usuario</span></h1>
	
	<form method="post">
		<input name="nome" type="text" value="${usuario.getNome()}" />
		<input name="endereco" type="text" value="${usuario.getEndereco()}" /> 
		<input name="dataNascimento" type="date" value="${usuario.getDataNascimento()}" />
		<input type="submit" />	
	</form>
</body>
</html>