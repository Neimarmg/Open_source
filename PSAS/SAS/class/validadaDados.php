<meta charset="ISO-8859-1">
<?php
class validadaDados {
	
	public static $Contador = 0;	
	public static $getResulQuery;
	
	
	/*Função de contagem de campo embraco retorna a quantidade de campos obrigatórios não prenchidos*/
	public static function ValidaCampo($ValorCampo) {
		 if (empty($ValorCampo)) {
			validadaDados::$Contador++;
		 }
		 return validadaDados::$Contador;
	}
	
	
	/*Função de retorno de resultado de execução de consulta sql*/
	public static function resultQuery($Query) {
		validadaDados::$getResulQuery = $Query;
		return validadaDados::$getResulQuery;
	}
		
	
	/**/
	public static function registroExitente($ExibirModal) {
		utilitario::msgAlerta($ExibirModal, 'Registro já existe!');
	}
	
	
	/**/
	public static function registradoComSucesso($ExibirModal) {
		utilitario::msgAlerta($ExibirModal, 'Cadastrado com sucesso!');
	}
	
	
	/**/
	public static function registroNaoInserido($ExibirModal) {
		utilitario::msgAlerta($ExibirModal, 'Não foi possivél inserir o registro');
	}
	
	
	/**/
	public static function aletaNaoPrechimento($ExibirModal) {
		utilitario::msgAlerta($ExibirModal, 'Existem campos obrigatórios não preechidos!');
	}
}
?>
