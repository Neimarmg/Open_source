<meta charset="ISO-8859-1">
<?php
class utilitario {

	public static $getResult;
	
	
	/*Fun��o de impress�o de mensagems de alerta gerais retorna uma mensage padr�o ou uma msg personalizada*/
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
	
	
	/*??//*/
	public static  function getPostAction($name){
		$params = func_get_args();
	
		foreach ($params as $name) {
			if (isset($_POST[$name])) {
				return $name;
			}
		}
	}
}

?>
