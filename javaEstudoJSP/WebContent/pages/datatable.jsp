<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Data Table JQuery</title>

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
	
<script type="text/javascript" src= "https://code.jquery.com/jquery-1.12.4.js"></script>	
	
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>


</head>
<body>
  
  <h1>Data Table</h1>
  
  <table id="minhatabela" class="display" style="width:100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Login</th>
            </tr>
        </thead>
        </table>
   
</body>

<script type="text/javascript">

$(document).ready(function() { //faz o processamento na hora que abre a tela
    $('#minhatabela').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax": "carregarDadosDataTable" // URL de retorno dos dados do servidor (resposta do servidor)
    } );
} );

</script>

</html>