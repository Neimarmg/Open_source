<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Cadastros de n�veis de usu�rios</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/base.css" </style>
	<style type="text/css"> @import "../css/global/auxiliar.css" </style>
	
</head>

<body>
	<main>
		<section id='cNiveisUser'>
			<fieldset>
	
				<h3>Cadastro de n�veis de usu�rios</h3>
				
				<form method="post" 
					action="?go=Novo"
					action="?go=editar"
					action="?go=apgar"
					action="?go=salvar"
				>
					
					<br/> <br/> 
					
					<label for="nome">Descri��o:</label> 
					<input  name="nome" id="nome" type="text" required/> 				
							
					<br/> 
					<input class="button" type="image" src="../imagens/novo.jpg" alt="Imagem n�o pode ser carregada" name="novo" id="cNiveisUser"/>	
					<input class="button" type="image" src="../imagens/editar.jpg" alt="Imagem n�o pode ser carregada" name="editar" id="cNiveisUser2"/>	
					<input class="button" type="image" src="../imagens/excluir.jpg" alt="Imagem n�o pode ser carregada" name="apagar" id="cNiveisUser3"/>	
					<input class="button" type="image" src="../imagens/salvar.jpg" alt="Imagem n�o pode ser carregada" name="salvar" id="cNiveisUser4"/>	
				
				</form>
			</fieldset>			
		</section>	
	</main>
</body>
</html>

<?php	

	/*Insers�o de novo registro*/
	include_once '../class/validadaDados.php';
	include_once '../class/utilitario.php';

	if (@$_GET['go'] == 'Novo'){
		
		$nome = $_POST['nome'];		
		
		/*Valida��o de campos obrigat�rios n�o prenchidos*/
		if (validadaDados::resultQuery( mysql_num_rows(mysql_query("SELECT * FROM `niveisuser` WHERE `descricao` ='$nome'"))) == $nome) {
		
			@mysql_query("INSERT INTO `niveisuser`(`codNiveisUser`, `descricao`) VALUES (NULL,'$nome')");

			/*Confirma��o de inser��o de registro*/
			//$query = mysql_num_rows(mysql_query("SELECT * FROM `niveisuser` WHERE `descricao` ='$nome'"));

			if (validadaDados::resultQuery(mysql_num_rows(mysql_query("SELECT * FROM `niveisuser` WHERE `descricao` ='$nome'"))) == 1) {	
				validadaDados::registradoComSucesso(true);
			}else{ 
				validadaDados::registroNaoInserido(true);
			}
		}else{
			validadaDados::registroExitente(true);
		}		
	}	
?>