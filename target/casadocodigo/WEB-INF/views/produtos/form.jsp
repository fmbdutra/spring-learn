<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>
	<h1>CADASTRO DE PRODUTOS</h1>
	<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST" commandName="produto" enctype="multipart/form-data">
		<table>
			<tr>
				<div>
					<td><label>Título</label></td>					
					<td><form:input path="titulo" size="26" /></td>
					<td><form:errors path="titulo" /></td>
				</div>
			</tr>
			
			
			<tr>
				<div>
					<td><label>Descrição</label></td>
					<td><form:textarea path="descricao" rows="10" cols="20"></form:textarea></td>
					<td><form:errors path="descricao" /></td>
				</div>
			</tr>
			<tr>
				<div>
				 	<td><label>Data de Lançamento</label></td>
	    			<td><form:input path="dataLancamento" size="26" /></td>
		    		<td><form:errors path="dataLancamento" /></td>
	    	   	</div>
			</tr>	
			<tr>
				<div>
					<td><label>Páginas</label></td>
					<td><form:input path="paginas" size="26" /></td>
					<td><form:errors path="paginas" /></td>
				</div>
			</tr>
			<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
				<tr>
					<div>
						<td><label>${tipoPreco}</label></td>
						<td><form:input path="precos[${status.index}].valor" size="26"/></td>
						<td><form:hidden path="precos[${status.index}].tipo" value="${tipoPreco}" size="26"/></td>
					</div>
				</tr>
			</c:forEach>
			
			<tr>
			<td><label>Sumário</label></td>
			<td><input type="file" name="sumario"></td>
			</tr>
		</table>
		</br>
		<button type="submit">Cadastrar</button>
	</form:form>

</body>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"></html>