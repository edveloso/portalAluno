<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<fieldset>
		<legend>Cadastro de Alunos</legend>
		<form action="">
			<p>
				Nome <input type="text">
			</p>
			<p>
				Idade <input type="text">
			</p>
		</form>
	</fieldset>

	<br />
	<br />
	<hr />
	<table border="1" width="100%" cellpadding="1" cellspacing="1">
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


</body>
</html>