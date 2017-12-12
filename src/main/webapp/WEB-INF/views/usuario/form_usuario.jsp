<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>${action}usuario</title>
</head>
<body>
	<h1>
		<span>${action} Usuario</span>
	</h1>

	<form method="post">
		<div class="form-group">
			<label>Nome:</label>
			<input class="form-control" name="nome" type="text" value="${usuario.getNome()}" />
		</div>
		<div class="form-group">
			<label>Endereco:</label>
			<input class="form-control" name="endereco" type="text" value="${usuario.getEndereco()}" />
		</div>
		<div class="form-group">
			<label>Data Nascimento:</label>
			<input name="dataNascimento" type="date" class="form-control"
				value="${usuario.getDataNascimento()}" />
		</div>
		
		<button class="btn btn-default" type="submit">Cadastrar</button>
	</form>
</body>
</html>