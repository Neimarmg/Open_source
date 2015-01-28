<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Cadastros de pessoas</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/base.css" </style>
	<style type="text/css"> @import "../css/global/auxiliar.css" </style>
	
</head>

<body>
	<main>
		<section id='cPessoas'>
			<fieldset>
				
				<h3>Cadastro de pessoas</h3>
				
				<form method="post" 
					action="?go=Novo"
					action="?go=editar"
					action="?go=apgar"
					action="?go=salvar"
				>
					
					<br/> <br/> 
					
					<label for="Nome">Nome pessoa:</label> 
					<input  name="nome" id="nome" type="text" required/> 
					
					<br/> <br/> 
					<label for="">Tipo Pessoa:</label> 
					<select name="codTipoPessoa" id="codTipoPessoa" type="checkbox" required>
						<option value="0">...</option>
						<?php 						
							$sql = "SELECT `codTipoPessoa`,`descricao` 
									FROM `tipopessoa` 
									ORDER BY descricao ASC"; 
							$result = mysql_query($sql);
							while ($fila = mysql_fetch_row($result)) {
								echo "<option value=".$fila['0'].">".$fila['1']."</option>";
							}
						?>
					</select>
					<br/> <br/> 
					
					<label for="">Profissão:</label> 
					<select name="codProfissao" id="codProfissao" type="checkbox" required>
						<option value="0">...</option>
						<?php 						
							$sql = "SELECT `codUtilitario`,`descricao` 
									FROM `utilitarios` 
									WHERE `codTipoUtilitario`= '4'
									ORDER BY descricao ASC"; 
							$result = mysql_query($sql);
							while ($fila = mysql_fetch_row($result)) {
								echo "<option value=".$fila['0'].">".$fila['1']."</option>";
							}
						?>
					</select>			
					
					
					<br/><br/>
					
					<label for="">cidade:</label> 
					<select name="codCidade" id="codCidade" type="checkbox" required>
						<option value="0">...</option>
						<?php 						
							$sql = "SELECT codCidade ,NOME ,UF
									FROM `cidades`
										JOIN UF ON
									    	CIDADEs.coduf = UF.coduf 
									ORDER BY NOME ASC"; 
							$result = mysql_query($sql);
							while ($fila = mysql_fetch_row($result)) {
								echo "<option value=".$fila['0'].">".$fila['1']." - ".$fila['2']."</option>";
							}
						?>
					</select>
					
				
				<br/> 
				<input class="button" type="image" src="../imagens/novo.jpg" alt="Imagem não pode ser carregada" name="novo" id="cPessoas"/>	
				<input class="button" type="image" src="../imagens/editar.jpg" alt="Imagem não pode ser carregada" name="editar" id="cPessoas"/>	
				<input class="button" type="image" src="../imagens/excluir.jpg" alt="Imagem não pode ser carregada" name="apagar" id="cPessoas"/>	
				<input class="button" type="image" src="../imagens/salvar.jpg" alt="Imagem não pode ser carregada" name="salvar" id="cPessoas"/>	
				
				</form>			
			</fieldset>
		</section>
	
	</main>
</body>
</html>
