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
		<section id='cUsuarios'>
			<fieldset>
	
				<h3>Cadastro de usuários</h3>
				
				<form method="post" 
					action="?go=Novo"
					action="?go=editar"
					action="?go=apgar"
					action="?go=salvar"
				>
					
					
					<br/> <br/> 
					
					<label for="usuario">Usuário:</label> 
					<input  name="usuario" id="usuario" type="text" required/> 				
					
					<br/> <br/> <br/> 
					
					<label for="">Pessoa:</label> 
					<select name="codPessoa" id="codPessoa" type="text" required>
						<option value="0">...</option>
						<?php 						
							$sql = "SELECT `codPessoa`,`nome`,`descricao`
									FROM `pessoas` 
										LEFT JOIN tipopessoa ON
									    	pessoas.codTipoPessoa = tipopessoa.codTipoPessoa									
									ORDER BY `descricao` ASC"; 
							$result = mysql_query($sql);
							while ($fila = mysql_fetch_row($result)) {
								echo "<option value=".$fila['0'].">".$fila['1']." - ".$fila['2']."</option>";
							}
						?>
					</select>	

					<br/> <br/> <br/> 
					
					<label for="">Nível:</label> 
					<select name="codNivel" id="codNivel" type="text" required>
						<option value="0">...</option>
						<?php 						
							$sql = "SELECT `codNiveisUser`,`descricao` FROM `niveisuser` order by descricao"; 
							$result = mysql_query($sql);
							while ($fila = mysql_fetch_row($result)) {
								echo "<option value=".$fila['0'].">".$fila['1']."</option>";
							}
						?>
					</select>	

					<br/> 
					<input class="button" type="image" src="../imagens/novo.jpg" alt="Imagem não pode ser carregada" name="novo" id="cUsuarios"/>	
					<input class="button" type="image" src="../imagens/editar.jpg" alt="Imagem não pode ser carregada" name="editar" id="cUsuarios"/>	
					<input class="button" type="image" src="../imagens/excluir.jpg" alt="Imagem não pode ser carregada" name="apagar" id="cUsuarios"/>	
					<input class="button" type="image" src="../imagens/salvar.jpg" alt="Imagem não pode ser carregada" name="salvar" id="cUsuarios"/>	
			
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
		
		validadaDados::ValidaCampo($usuario = $_POST['usuario']);
		validadaDados::ValidaCampo($codNivel = $_POST['codNivel']);
		$codPessoa = $_POST['codPessoa'];
		
		/*Variavel contatenação de string para parametro de sql*/
		$filtro = utilitario::contatena($usuario.$codNivel);
			
		/*Validação de campos obrigatórios não prenchidos*/
		if (validadaDados::$Contador > 0) {
			validadaDados::aletaNaoPrechimento(true);
		
		}else{			
			/*Controle de duplicação de registros*/
			if (validadaDados::resultQuery(mysql_num_rows(mysql_query("SELECT * FROM `usuarios` WHERE concat(`usuario`,`codNivel`) = '$filtro'"))) == 0) {
				
				@mysql_query("INSERT INTO `usuarios`(`codUsuario`, `codPessoa`, `codNivel`, `usuario`) VALUES (NULL,'$codPessoa','$codNivel','$usuario')");
			
				/*Confirmação de inserção de registro*/
				if (validadaDados::resultQuery(mysql_num_rows(mysql_query("SELECT * FROM `usuarios` WHERE concat(`usuario`,`codNivel`) = '$filtro'"))) == 1) {
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