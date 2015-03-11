<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>

<head>
	<title>Cadastro de cidades</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/base.css" </style>
	<style type="text/css"> @import "../css/global/auxiliar.css" </style>
	
</head>

<body>
	
	<main>
		<section id='cCidades'>
			<fieldset>
	
				<h3>Cadastro de cidades</h3>
				
				<form method="post" 
					action="?go=Novo"
					action="?go=editar"
					action="?go=apgar"
					action="?go=salvar"
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
					<input class="button" type="image" src="../imagens/novo.jpg" alt="Imagem não pode ser carregada" name="novo" id="cCidades"/>	
					<input class="button" type="image" src="../imagens/editar.jpg" alt="Imagem não pode ser carregada" name="editar" id="cCidade2"/>	
					<input class="button" type="image" src="../imagens/excluir.jpg" alt="Imagem não pode ser carregada" name="apagar" id="cCidade3"/>	
					<input class="button" type="image" src="../imagens/salvar.jpg" alt="Imagem não pode ser carregada" name="salvar" id="cCidade4"/>	
				
				</form>
			</fieldset>			
		</section>	
	</main>
</body>
</html>

<?php	
	/*Insersão de novo usuario*/
	include_once '../class/validadaDados.php';
	include_once '../class/utilitario.php';
	
	if (@$_GET['go'] == 'Novo'){
		
		validadaDados::ValidaCampo($nome = $_POST['nome']);
		validadaDados::ValidaCampo($codUf = $_POST['codUf']);

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