<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="DadosCad.jsp" method="post">

<%
		String tipoPessoa = (String) session.getAttribute("pessoa");
		String nomeTipo = "Pessoa "+ (tipoPessoa.equalsIgnoreCase("cpf") ? "Fisica" : "Juridica");
	%>
		<p>Tipo Sessao: <%=nomeTipo %>
	
		<p>Nome: <%=session.getAttribute("nome") %>
		
		<p>E-mail: <%=session.getAttribute("email") %>
		
		<br><br>Telefone: <%=session.getAttribute("codPais") %> <%=session.getAttribute("codArea") %> <%=session.getAttribute("telefone") %><br>

		<p>Tipo de numero: <%=session.getAttribute("tipoNumero") %>
		
		<br>
		<br>
		<label>Sobrenome: </label> <br>
		<input type="text" name="sobrenome" min="5" size="25"
			maxlength="100" required="required" autofocus required
			placeholder="Informe o sobrenome">
			
	    <br>
	    <label>Ultimo nome: </label> <br>
		<input type="text" name="ultimonome" min="5" size="25"
			maxlength="100" required="required" autofocus required 
			placeholder="Informe o ultimo nome">
		<br>
		<label>CPF: </label> <br>
		<input type="text" name="numDoc"
			maxlength="14" required="required" autofocus required
			placeholder="XXX.XXX.XXX-XX">
	    <br>
		<label>Sexo: </label><br>
		<select name="tipoSexo">
			<option value="">Selecione o tipo</option>
			<option value="Feminino">Feminino</option>
			<option value="Masculio">Masculino</option>
		</select>
		<br> 
		<label>Data de nascimento:</label> <br>
		<input type="text" name="dataNasc" maxlength="10" placeholder="xx/xx/xxxx" required>
		<br>
		<br>
		<input type="submit" value="Cadastrar">
	</form>
</body>
</html>