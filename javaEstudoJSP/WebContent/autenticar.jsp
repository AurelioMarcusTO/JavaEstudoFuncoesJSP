<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Autenticação</title>
</head>
<body>

<h1>Autenticar Usuario</h1>

<form action="ServletAutenticacao" method= "post">

<input type= "hidden" id= "url" name= "url" value= "<%=request.getParameter("url")%>">

<table>
<tr>
<td>Login:</td>
<td><input type= "text" id= "login" name= "login"></td>
</tr>
<tr>
<td>Senha:</td>
<td><input type= "password" id= "senha" name= "senha"></td>
</tr>
<tr>
<td></td>
<td><input type= "submit" id= "logar" name= "logar" value= "Logar"></td>
</tr>

</table>


</form>

</body>
</html>