<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
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
					
					<label for="nome">Unidade federativa:</label> 
					<input  name="uf" id="uf" type="text" required/> 				
					
					<br/> <br/> <br/> 
					
					<label for="nome">Estado:</label> 
					<input  name="estado" id="estado" type="text" required/> 	
				
					<br/> <br/> <br/> 
					
					<label for="nome">Pais:</label> 
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
<?php	
	/*Insersão de novo usuario*/
	include_once '../class/validadaDados.php';
	include_once '../class/utilitario.php';
	
	if (@$_GET['go'] == 'Novo'){
		
		validadaDados::ValidaCampo($uf = $_POST['uf']);
		validadaDados::ValidaCampo($estado = $_POST['estado']);
		validadaDados::ValidaCampo($pais = $_POST['pais']);
	
		/*Variavel contatenação de string para parametro de sql*/
		$filtro = utilitario::contatena($uf.$pais);
		
		/*Validação de campos obrigatórios não prenchidos*/
		if (validadaDados::$Contador >  0) {
			validadaDados::aletaNaoPrechimento(true);
			
		}else{			
			
			/*Controle de duplicação de registros*/
			$query = mysql_num_rows(mysql_query("SELECT  concat(`uf`,`pais`) FROM `uf` WHERE concat(`uf`,`pais`) = '$filtro'"));	
			
			if ($query == 0) {
			
				@mysql_query("INSERT INTO `uf`(`codUf`, `uf`, `estado`, `pais`) VALUES (NULL, '$uf','$estado' ,'$pais')");
			
				/*Confirmação de inserção de registro*/
				$query = mysql_num_fields(mysql_query("SELECT  concat(`uf`,`pais`) FROM `uf` WHERE concat(`uf`,`pais`) = '$filtro'"));
					
				if ($query = 1) {
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