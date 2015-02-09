<meta charset="ISO-8859-1">
<?php
class utilitario {

	public static $getResult;
	
	/*Função de impressão de mensagems de alerta gerais retorna uma mensage padrão ou uma msg personalizada*/
	public static  function msgAlerta($ExibirModal, $msg){
		if($ExibirModal == false) {
			echo  ($msg);			
		} else{
			echo "<script>alert('$msg')</script>";
		}				
	}	
	
	/*Metodo contatenador de campos*/
	public static function contatena($valor){
		return  $valor;
	}
}


?>
