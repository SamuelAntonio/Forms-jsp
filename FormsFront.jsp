<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Cliente</title>
 <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
<form action="TrataForms.do" method="post">
<legend>Formulario de Registro</legend>

<label>Nome:</label> <input type="text" name="nome" maxlength="10" placeholder="Nome" required><br>

<label>Pessoa:</label>
<label>Fisica<input type="radio" name="pessoa" value="cpf" checked></label>
<label>Juridica<input type="radio" name="pessoa" value="cnpj"></label><br>

<%-- <input type="text" name="NumDoc" placeholder="Numero do documento" required><br> --%>


Email: <input type="email" name="Email" placeholder="JohnWick@example.com" required/><br>

<label>Telefone: </label> <br>
<label>Codigo do País </label><select name="codPais">
	<option>-</option>
	<option value="+49">Alemanha(+49)</option>
	<option value="+61">Austrália (+61)</option>
	<option value="+55">Brasil (+55)</option>
	<option value="+57">Colômbia(+57)</option>
	<option value="+34">Espanha (+34)</option>
	<option value="+39">Itália (+39)</option>
	<option value="+351">Portugal(+351)</option>
	<option value="+7">Rússia(+7)</option>
	<option value="+44">Inglaterra(+44)</option>
	<option value="+1">Estados Unidos(+1)</option>
</select><br>

<label>Codigo de Área </label>
		<input type="number"
			name="codArea" placeholder="DDD" size="5" min="1" max="999"
			step="10" maxlength="4"> 
		<br>
<label>Numero do telefone</label>
<input type="number" name="Telefone"  maxlength="10" placeholder="xxxxx-xxxx"  required><br>
<label>Tipo</label>
		<select name="tipoNumero">
			<option value="">Selecione o tipo</option>
			<option value="Fixo">Fixo</option>
			<option value="Celular">Celular</option>
		</select>
		<br> <br>
<input type="submit" value="Enviar">
</form>
</form>
</body>
</html>