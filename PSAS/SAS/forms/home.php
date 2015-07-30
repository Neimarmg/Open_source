<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Migração de database</title>
</head>
<body>	
	<main>
		<section id='cCidades'>
			<fieldset>
	
				<h3>MIgração de dados</h3>
				
				<form method="post" 
					action="?go=migrar"
					
				>
					
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
					<button  name="Migrar" id="botton" type="text"/>	
				
				</form>
			</fieldset>			
		</section>	
	</main>
</body>
</html>

<?php	
		
	if (@$_GET['go'] == 'migrar'){
		
		/*Variavel contatenação de string para parametro de sql*/
		$filtro = utilitario::contatena($nome.$codUf);
		
		/*Validação de campos obrigatórios não prenchidos*/
		if (validadaDados::$Contador > 0) {
			validadaDados::aletaNaoPrechimento(true);
		
		}else{			

			/*Controle de duplicação de registros*/
			if (validadaDados::resultQuery(mysql_num_rows(mysql_query("SELECT *FROM `cidades` LEFT JOIN UF ON cidades.`codUf`= uf.codUf WHERE CONCAT(cidades.nome,cidades.`codUf`) = '$filtro'"))) == 0) {

				@mysql_query("INSERT INTO `cidades`(`codCidade`, `codUf`, `nome`) VALUES (NULL,'$codUf','$nome')");
			
				/*Confirmação de inserção de registro*/
				if (validadaDados::resultQuery(mysql_num_rows(mysql_query("SELECT *FROM `cidades` LEFT JOIN UF ON cidades.`codUf`= uf.codUf WHERE CONCAT(cidades.nome,cidades.`codUf`) = '$filtro'"))) == 1) {
					validadaDados::registradoComSucesso(true);
				
				}else{
					validadaDados::registroNaoInserido(true);
				}
			}else{
				validadaDados::registroExitente(true);
			}
		}
		
	}	
?>