<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<h1>CADASTRAMENTO DE LIVROS</h1>



	<form action="/springlearn/produtos" method="post">
		<table>
			<tr>
				<div>
					<td><label>Título</label></td>
				<td><input type="text" name="titulo" required /></td>
				</div>
			</tr>
			<tr>
				<div>
					<td><label>Descrição</label></td>
					<td><textarea rows="10" cols="22" name="descricao" required></textarea></td>
				</div>
			</tr>
			<tr>
				<div>
					<td><label>Páginas</label></td>
					<td><input type="text" name="paginas" required /></td>
				</div>
			<tr>
		</table>
		<button type="submit">Cadastrar</button>
	</form>

</body>
</html>