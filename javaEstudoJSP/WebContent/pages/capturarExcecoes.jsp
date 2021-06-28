<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Capturar Excecoes</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>

<h3>Capturando Exceções com JQuery</h3>

<input type= "text" value= "Valor informado" id= "txtvalor">
<input type= "button" onclick= "testarExcecao();" value= "Testar Exceção">

</body>

<script type="text/javascript">

function testarExcecao() {
	
	valorInformado = $('#txtvalor').val();
	
	$.ajax({
		method: "post",
		url: "capturarExcecao", //para qual servlet?
		data: { valorParam : valorInformado }		
		
		})
			.done(function(response) {//resposta ok ! nenhum erro
				alert("Sucesso ! " + response);
			// fazer algo se der ok
			
		})
		
			.fail(function(xhr, status, errorThrown) {//resposta erro ! algum problema ocorreu
				alert("Erro ! " + xhr.responseText); // mostra resposta do servidor
			//fazer algo se der errado
		});
	
}


</script>


</html>