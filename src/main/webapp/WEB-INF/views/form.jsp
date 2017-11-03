<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
   rel="stylesheet" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="navbar navbar-inverse"> 
	 <a class="navbar-brand" href="#">Portal Aluno</a>		
	</div>
	

	<div  class="container" >   
	<fieldset>
		<legend>Cadastro de Alunos</legend>
		<form action="salvar" method="post" >
			<div class="form-group">
				<label for="nome">Nome</label>  
				<input type="text"
				  	   name="nome"
				  	   class="form-control"
				  	   placeholder="Informe o nome"     
				  >
			</div>
			<div class="form-group" >
				<label for="idade">Idade</label>  
				<input type="text"
				       name="idade"
				  	   class="form-control"
				  	   placeholder="Informe a idade"
				>
			</div>
			<button type="submit" class="btn btn-primary" >
			      Salvar
			  </button>
		</form>
	</fieldset>

	<br />
	<br />
	
	<table class="table table-striped" >
		<tr>
			<th>Nome</th>
			<th>Idade</th>
		</tr>
		<c:forEach var="aluno"  items="${lista}">
			<tr>
				<td>${aluno.nome}</td>
				<td>${aluno.idade} </td>
			</tr>
		</c:forEach>
		
		
	</table>

 </div>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
  ></script>

</body>
</html>



