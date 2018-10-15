<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<h1>CADASTRO DE PRODUTOS</h1>
	<form action="/casadocodigo/produtos" method="post">
		<table>
			<tr>
				<div>
					<td><label>Título</label></td>
					<td><input type="text" name="titulo" size="26"/></td>
				</div>
			</tr>
			<tr>
				<div>
					<td><label>Descrição</label></td>
					<td><textarea rows="10" cols="20" name="descricao"></textarea></td>
				</div>
			</tr>
			<tr>
				<div>
					<td><label>Páginas</label></td>
					<td><input type="text" name="paginas" size="26" /></td>
				</div>
			</tr>
			<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
				<tr>
					<div>
						<td><label>${tipoPreco}</label></td>
						<td><input type="text" name="precos[${status.index}].valor" size="26"/></td>
						<td><input type="hidden" name="precos[${status.index}].tipo"
							value="${tipoPreco}" size="26"/></td>
					</div>
				</tr>
			</c:forEach>
		</table>
		</br>
		<button type="submit">Cadastrar</button>
	</form>

</body>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"></html>