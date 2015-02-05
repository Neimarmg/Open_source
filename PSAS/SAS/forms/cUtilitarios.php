<!DOCTYPE HTML>
<?php
	require_once '../class/conexao.php';
?>

<html>
<head>
	<title>Cadastro de Utilitarios</title>
	<meta charset="ISO-8859-1">
	<style type="text/css"> @import "../css/global/global.css" </style>
	<style type="text/css"> @import "../css/global/base.css" </style>
	<style type="text/css"> @import "../css/global/auxiliar.css" </style>
	
</head>

<body>
	
	<main>
		<section id='cUtilitarios'>
			<fieldset>
	
				<h3>Cadastro de utilitários</h3>
				
				<form method="post" 
					action="?go=Novo"
					action="?go=editar"
					action="?go=apgar"
					action="?go=salvar"
				>
					
					<br/> <br/> 
					
					<label for="nome">Descrição</label> 
					<input  name="nome" id="nome" type="text" required/> 				
					
					<br/> <br/> <br/> 
					
					<label for="">Tipo utilitário:</label> 
					<select name="codTipoUtilitario" id="codTipoUtilitario" type="checkbox" required>
						<option value="0">...</option>
						<?php 						
							$sql = "SELECT `codTipoUtilitario`,`descricao` FROM `tipoutilitario` ORDER BY `descricao`"; 
							$result = mysql_query($sql);
							while ($fila = mysql_fetch_row($result)) {
								echo "<option value=".$fila['0'].">".$fila['1']."</option>";
							}
						?>
					</select>	
					
					<br/><br/>
					
					<label class="labelAtivo" for="favorito">Favarito(a):</label>
					<input class="inputAtivo" type="checkbox" name="favorito" id="favorito" value="-1" />
							
					<br/> 
					<input class="button" type="image" src="../imagens/novo.jpg" alt="Imagem não pode ser carregada" name="novo" id="cUtilitarios"/>	
					<input class="button" type="image" src="../imagens/editar.jpg" alt="Imagem não pode ser carregada" name="editar" id="cUtilitarios2"/>	
					<input class="button" type="image" src="../imagens/excluir.jpg" alt="Imagem não pode ser carregada" name="apagar" id="cUtilitarios3"/>	
					<input class="button" type="image" src="../imagens/salvar.jpg" alt="Imagem não pode ser carregada" name="salvar" id="cUtilitarios4"/>	
				
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
		validadaDados::ValidaCampo($codTipoUtilitario = $_POST['codTipoUtilitario']);
		validadaDados::ValidaCampo($favorito = $_POST['favorito']);
			
	/*Variavel contatenação de string para parametro de sql*/
		$filtro = utilitario::contatena($nome.$codTipoUtilitario);
		
		/*Validação de campos obrigatórios não prenchidos*/
		if (validadaDados::$Contador >  0) {
			validadaDados::aletaNaoPrechimento(true);
		
		}else{			
			
			/*Controle de duplicação de registros*/
			$query = mysql_num_rows(mysql_query("SELECT * FROM `utilitarios` WHERE CONCAT(`descricao`,`codTipoUtilitario`) = '$filtro'"));	
			
			if ($query == 0) {
			
				@mysql_query("INSERT INTO `utilitarios`(`codUtilitario`, `descricao`, `codTipoUtilitario`, `favorito`) VALUES (NULL, '$nome', '$codTipoUtilitario', '$favorito')");		
				/*Confirmação de inserção de registro*/
				$query = mysql_num_rows(mysql_query("SELECT * FROM `utilitarios` WHERE CONCAT(`descricao`,`codTipoUtilitario`) = '$filtro'"));	
					
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
