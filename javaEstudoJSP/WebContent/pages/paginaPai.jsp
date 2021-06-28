<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina de Load JQuery</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>

<h1>Pagina Pai Load JQuery</h1>

<input type= "button" value= "Carregar pagina" onclick= "carregar();">

<div id= "mostrarPaginaFilha"></div> <!-- Local de carregamento da pagina filha -->




</body>

<script type="text/javascript">

function carregar() {
	
	$("#mostrarPaginaFilha").load('paginaFilha.jsp'); //load pagina em JQuery
	
	
}


</script>

</html>