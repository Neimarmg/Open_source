<!DOCTYPE HTML>
<?php
//require_once 'class/conexao.php';
?>

<html>
<head>
	<title>Cadastro de unidades federativas - ufs</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/base.css" </style>
	<style type="text/css"> @import "../css/global/auxiliar.css" </style>
	
</head>

<body>
	<main>
		<section id='cUfs'>
			<fieldset>
	
				<h3>Cadastro de unidades federativas</h3>
				
				<form method="post" action="?go=Novo">
					
					<br/> <br/> 
					
					<label for="Nome">Unidade federativa:</label> 
					<input  name="uf" id="uf" type="text" required/> 				
					
					<br/> <br/> <br/> 
					
					<label for="Nome">Estado:</label> 
					<input  name="estado" id="estado" type="text" required/> 	
				
					<br/> <br/> <br/> 
					
					<label for="Nome">Pais:</label> 
					<input  name="pais" id="pais" type="text" required/> 	
							
					<br/> 
					<input class="button" type="image" src="../imagens/novo.jpg" alt="Imagem não pode ser carregada" name="novo" id="cCidade1"/>	
					<input class="button" type="image" src="../imagens/editar.jpg" alt="Imagem não pode ser carregada" name="editar" id="cCidade2"/>	
					<input class="button" type="image" src="../imagens/excluir.jpg" alt="Imagem não pode ser carregada" name="apagar" id="cCidade3"/>	
					<input class="button" type="image" src="../imagens/salvar.jpg" alt="Imagem não pode ser carregada" name="salvar" id="cCidade4"/>	
				
				</form>
			</fieldset>			
		</section>	
	</main>
</body>
</html>