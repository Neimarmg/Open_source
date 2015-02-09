<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Cadastro de tipos de utilitarios</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/base.css" </style>
	<style type="text/css"> @import "../css/global/auxiliar.css" </style>
	
</head>
	
	<main>
		<section id='cTipoUtilitario'>
			<fieldset>
	
				<h3>Cadastro de tipo utilitário</h3>
				
				<form method="post" 
					action="?go=Novo"
					action="?go=editar"
					action="?go=apgar"
					action="?go=salvar"
				>
					
					<br/> <br/> 
					
					<label for="nome">Descrição:</label> 
					<input  name="nome" id="nome" type="text" required/> 				
							
					<br/> 
					<input class="button" type="image" src="../imagens/novo.jpg" alt="Imagem não pode ser carregada" name="novo" id="cTipoUtilitario"/>	
					<input class="button" type="image" src="../imagens/editar.jpg" alt="Imagem não pode ser carregada" name="editar" id="cTipoUtilitario2"/>	
					<input class="button" type="image" src="../imagens/excluir.jpg" alt="Imagem não pode ser carregada" name="apagar" id="cTipoUtilitario3"/>	
					<input class="button" type="image" src="../imagens/salvar.jpg" alt="Imagem não pode ser carregada" name="salvar" id="cTipoUtilitario4"/>	
				
				</form>
			</fieldset>			
		</section>	
	</main>
</body>
</html>

<?php	

	/*Insersão de novo registro*/
	include_once '../class/validadaDados.php';
	include_once '../class/utilitario.php';

	if (@$_GET['go'] == 'Novo'){
		
		$nome = $_POST['nome'];
				
		$query = mysql_num_rows(mysql_query("SELECT descricao FROM tipoutilitario WHERE descricao ='$nome'"));
		
		/*Validação de campos obrigatórios não prenchidos*/
		if ($query == $nome) {
		
			@mysql_query("INSERT INTO `tipoutilitario`(`codTipoUtilitario`, `descricao`) VALUES (NULL,'$nome')");
				
			/*Confirmação de inserção de registro*/
			$query = mysql_num_rows(mysql_query("SELECT * FROM tipoutilitario WHERE descricao ='$nome'"));
			
			if ($query = 1) {	
				validadaDados::registradoComSucesso(true);
			}else{ 
				validadaDados::registroNaoInserido(true);
			}
		}else{
			validadaDados::registroExitente(true);
		}		
	}	
?>