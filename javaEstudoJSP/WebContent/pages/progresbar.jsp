<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Barra de Progresso</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style type="text/css">
#myProgress {
	width: 100%;
	background-color: #ddd;
}

#myBar {
	height: 30px;
	width: 1%;
	background-color: #4CAF50;
}

.ui-progressbar {
	position: relative;
}

.progress-label {
	position: relative;
	left: 50%;
	top: 6px;
	font-weight: bold;
	text-shadow: 1px 1px 0 #fff;
}
</style>

</head>
<body>

	<h1>Barra de Progresso com Java Script</h1>

	<div id="myProgress">
		<div id="myBar"></div>
	</div>

	<br/>

	<button onclick="exibirBarra()">Iniciar a Barra</button>

	<br/>

	<h1>Barra de Progresso com JQuery</h1>

	<div id="progressbar">
		<div class="progress-label">
		Carregando ...
		</div>
	</div>

	<script type="text/javascript">
		//Script da barra de progresso comJQuery

		$(function() {

			var progressbar = $("#progressbar"), progresslabel = $(".progress-label");
			
			progressbar.progressbar ({ //Cria a barra no div
				value : false,
				change: function () {
					progresslabel.text(progressbar.progressbar('value') + "%");
				},
				complete: function () {
					progresslabel.text('Completo !');
				}
			});
			
			function progress() {
				var val  = progressbar.progressbar("value") || 0;
				
				progressbar.progressbar("value", val +2);
				
				if(val <99) {
					setTimeout(progress, 80);
					
				}
				
			}
			setTimeout(progress, 2000);

		});

		//Script da barra de progresso por Java Script
		function exibirBarra() {

			var elem = document.getElementById("myBar");
			var width = 1;
			var id = setInterval(frame, 10);

			function frame() {
				if (width >= 100) {
					clearInterval(id);
				} else {
					width++;
					elem.style.width = width + "%";
				}

			}

		}
	</script>


</body>
</html>