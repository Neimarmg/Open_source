<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Tela de loguin de usuário</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/base.css" </style>
	<style type="text/css"> @import "../css/login.css" </style>

</head>

<body>
	<main>
	
		<section >
			<fieldset>		
				<form action="autenticar.php" method="post">
					<br/> 
					<h3>Login de usuário</h3>
					<br/> <br/> <br/> 
				
					<label for="">Pastoral:</label> 
					<select name="codPastorais" id="codPastorais" type="checkbox" required>
						<option value="0">...</option>
						<?php 						
							
							$sql = "SELECT 
										pastorais.codPastoral,
										pastorais.nome,
										proprietario.nomeRedusido 
									FROM pastorais 
										LEFT JOIN proprietario ON
											pastorais.codProprietario = proprietario.codProprietario"; 
							
							$result = mysql_query($sql);
							while ($fila = mysql_fetch_row($result)) {
								echo "<option value=".$fila['0'].">".$fila['1']."   -  ".$fila['2']." </option>";
							}
						?>
					</select>	
					
					<br/> <br/> 
					
					<label for="usuario">Usuário:</label> 
					<input name="usuario" id="usuario" type="text" required/> 
				
					<br/> <br/> 
					
					<label for="senha">Senha:</label> 
					<input name="senha" id="senha" type="password" required/> 
							
					<input class="button" type="image" src="../imagens/log.jpg" alt="Imagem não pode ser carregada" name="logar" id="logar1"/>
				
				</form>
			</fieldset>
		</section>
	</main>
	<footer>
		<p>Todas os registro aqui são propriedade de seus respectivos donos. <br> ©2014 APL soluções. Todos os direitos reservados. </p>
	</footer>
</body>
</html>

