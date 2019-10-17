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
		
		<br>
		<br>
		
		<label>Razão Social: </label> <br>
		<input type="text" name="razaoSocial"
			maxlength="40" required="required" autofocus required
			placeholder="Informe a razão social">
		<br>
		<br>
		
		<label>CNPJ: </label> <br>
		<input type="text" name="numDoc"
			maxlength="14" required="required" autofocus required
			placeholder="XX.XXX.XXX/YYYY-ZZ">
	    <br>
	    <br>
  <legend> Escolha area de atuação </ legend>
    <div>
      <input type = "checkbox" name = "interesse" valor = "software">
      <label> Software </ label>
    </ div>
    <div>
      <input type = "checkbox" name = "interesse" valor = "suporte">
      <label> Suporte </ label>
    </ div>
    <div>
      <input type = "checkbox" name = "interesse" valor = "infraestrutura">
      <label> Infraestrutura </ label>
    </ div>
    <div>
      <input type = "checkbox" nome = "interesse" valor = "consultoria">
      <label> Consultoria </ label>
    </ div>
    <div>
      <input type = "checkbox" nome = "interesse" valor = "outro">
      <label> Outro </ label>
      <input type = "text" nome = "outro">
    </ div>

		<br>
		<br>
		<input type="submit" value="Cadastrar">
	</form>
</body>
</html>