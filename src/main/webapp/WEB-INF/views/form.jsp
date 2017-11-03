<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<div class="navbar navbar-inverse">
		<a class="navbar-brand" href="#"> Portal Aluno </a>
	</div>


	<div class="container">
		<div class="row">
			<fieldset>
				<legend>Cadastro de Alunos</legend>
				<form method="post"  action="salvar">
					<div class="form-group">
						<label for="nome"> Nome </label> 
						<input id="nome" name="nome" type="text"
							placeholder="Nome" class="form-control" />
					</div>
					<div class="form-group">
						<label for="idade"> Idade</label>
						 <input id="idade" name="idade" type="text"
							class="form-control"  />
					</div>
					<button type="submit" class="btn btn-lg btn-primary">Enviar</button>
				</form>
			</fieldset>


			<br /> <br />

			<table class="table table-striped">
				<tr>
					<th>Nome</th>
					<th>Idade</th>
					<th>#</th>
				</tr>
				<c:forEach var="aluno" items="${lista}">
					<tr>
						<td>${aluno.nome}</td>
						<td>${aluno.idade}</td>
						<td><a data-toggle="tooltip" title="Dica" href="salvar">Salvar</a>
							|

							<button data-toggle="tooltip" data-placement="top" title="Editar"
							 class="btn btn-primary" type="submit">
								<i class="glyphicon glyphicon-pencil"></i>
							</button> 
							| 
							<a href="deletar">Deletar</a></td>
					</tr>
				</c:forEach>


			</table>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>