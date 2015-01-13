<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Cadastro de cidades</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/fontes.css" </style>
	<style type="text/css"> @import "../css/global/auxiliar.css" </style>
	
</head>

<body>
	
	<main>
		<section id='cCidades'>
			<h1>Cadastro de cidades</h1>
			 
			
			<form method="post" action="?go=Novo">
				
				<br/> <br/> 
				
				<label for="Nome">Nome da cidade:</label> 
				<input  name="nome" id="nome" type="text" required/> 				
				
				<br/> <br/> <br/> 
				
				<label for="">Unidade federativa:</label> 
				<select name="codUf" id="codUf" type="checkbox" required>
					<option value="0">...</option>
					<?php 						
						$sql = "select codUf, uf, estado from uf order by uf"; 
						$result = mysql_query($sql);
						while ($fila = mysql_fetch_row($result)) {
							echo "<option value=".$fila['0'].">".$fila['1']." - ".$fila['2']."</option>";
						}
					?>
				</select>	
						
				<br/> 
					
				<input class="button" type="submit" value="Novo" id="cCidade" />
				<input class="button" type="submit" value="Editar" id="cCidade" />
				<input class="button" type="submit" value="Apagar" id="cCidade" />
				<input class="button" type="submit" value="Salvar" id="cCidade" />
			
			</form>
					
		</section>	
	</main>
</a > 
	<footer>
		
	</footer>
</body>
</html>