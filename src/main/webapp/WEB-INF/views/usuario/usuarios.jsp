<html>
<head>
<title>Usuarios</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>				
				<th>Nome</th>
				<th>Endereco</th>
				<th>Data Nascimento</th>
				<th></th>
				<th></th>				
			</tr>
		</thead>
		
		<tbody>
			
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td><a href="/usuario/${usuario.getId()}">${usuario.getNome()}</a> </td>
					<td> ${usuario.getEndereco()} </td>
					<td> ${usuario.getDataNascimento()} </td>
					<td> <a href="alterar/${usuario.getId()}">Editar</a></td>
					<td> <a href="deletar/${usuario.getId()}">Deletar</a></td>
				</tr>			
			</c:forEach>
		
		</tbody>
	
	</table>
	
	<a href="cadastro/">Cadastrar Cliente</a>
</body>
</html>