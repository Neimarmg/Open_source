<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Tela de loguin de usu�rio</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global.css" </style>
	<style type="text/css"> @import "../css/fontes.css" </style>
	<style type="text/css"> @import "../css/app.css" </style>
</head>

<body>
	<main>
		<section id='app'>
			
				<label class="label" for="dataInicio">Usu�rio:</label> 
				<input class="user" name="dataInicio" id="dataInicio" type="usuario" required/> 
				
				<br/> 
				<br/> 
				
				<label class="label" for="senha">Senha:</label> 
				 <input class="pas" name="senha" id="senha" type="password" required/>
				
				<br/> 
				
				
			
			</form>
		
		</section>
	
	</main>
	<footer>
		<p>Todas os registro aqui s�o propriedade de seus respectivos donos. <br> �2014 APL solu��es. Todos os direitos reservados. </p>
	</footer>
</body>
</html>

