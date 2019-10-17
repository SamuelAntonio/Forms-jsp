<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String tipoPessoa = (String) session.getAttribute("pessoa");
		String nomeTipo = "Pessoa "+ (tipoPessoa.equalsIgnoreCase("cpf") ? "Fisica" : "Juridica");
	%>
	<p>Tipo Sessao: <%=nomeTipo %>
	<p>Nome: <%=session.getAttribute("nome") %>
		
	
	<% if (tipoPessoa.equalsIgnoreCase("cpf")){%>
	
	<%=request.getParameter("sobrenome") %>
	<%=request.getParameter("ultimonome") %>
	<p> CPF: <%=request.getParameter("numDoc") %>
	<p> Sexo: <%=request.getParameter("tipoSexo") %>
	<p> Data de nascimento: <%=request.getParameter("dataNasc") %>
	
	<%	}else{%>
	
	<p> Razão social: <%=request.getParameter("razaoSocial") %>
	<p> CNPJ: <%=request.getParameter("numDoc") %>
	<p> Area de atuação: <%=request.getParameter("interesse") %>
	<% 	}%>

		<br>
		<p>E-mail: <%=session.getAttribute("email") %>
		
		<br><br>Telefone: <%=session.getAttribute("codPais") %> <%=session.getAttribute("codArea") %> <%=session.getAttribute("telefone") %><br>

		<p>Tipo de numero: <%=session.getAttribute("tipoNumero") %>

</body>
</html>