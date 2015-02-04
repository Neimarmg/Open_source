<meta charset="ISO-8859-1">
<?php
class validadaDados {
	
	public static $Contador = 0;
	/*Função de contagem de campo embraco retorna a quantidade de campos obrigatórios não prenchidos*/
	public static function ValidaCampo($ValorCampo) {
		 if (empty($ValorCampo)) {
			validadaDados::$Contador++;
		 }
		 return validadaDados::$Contador;
	}
	
		
	public static function registroExitente($ExibirModal) {
		utilitario::msgAlerta($ExibirModal, 'Registro já existe!');
	}
	
	
	public static function registradoComSucesso($ExibirModal) {
		utilitario::msgAlerta($ExibirModal, 'Cadastrado com sucesso!');
	}
	
	
	public static function registroNaoInserido($ExibirModal) {
		utilitario::msgAlerta($ExibirModal, 'Não foi possivél inserir o registro');
	}
}
?>


