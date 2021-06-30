<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload files</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
<form action="">
<h1>Upload de arquivos</h1>

<input type="file" id="file" name="file" onchange="uploadFile();"/>
<img alt="Imagem" src="" id="target" width="200" height="200">
</form>

<br/>
<br/>
<br/>
<a href="fileUpload">Carregar imagens</a>

</body>

<script type="text/javascript">

function uploadFile(){
	


var target = document.querySelector("img");
var file = document.querySelector("input[type=file]").files[0];

var reader = new FileReader();

reader.onloadend = function () {
	target.src = reader.result;
	
	
////-----Upload ajax --------
	
	$.ajax({
		method: "post",
		url: "fileUpload", //para qual servlet?
		data: { fileUpload : reader.result }		
		
		})
			.done(function(response) {//resposta ok ! nenhum erro
				alert("Sucesso ! " + response);
			// fazer algo se der ok
			
		})
		
			.fail(function(xhr, status, errorThrown) {//resposta erro ! algum problema ocorreu
				alert("Erro ! " + xhr.responseText); // mostra resposta do servidor
			//fazer algo se der errado
		});
	
	///-------------
	
};

if(file) {
	
	reader.readAsDataURL(file);
	
	
}else {
	
	target.src="";
	
}

}

</script>

</html>