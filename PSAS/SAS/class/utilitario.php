<meta charset="ISO-8859-1">
<?php
class utilitario {

	/*Fun��o de impress�o de mensagems de alerta gerais retorna uma mensage padr�o ou uma msg personalizada*/
	public static  function msgAlerta($ExibirModal, $msg){
		if($ExibirModal == false) {
			echo  ($msg);			
		} else{
			echo "<script>alert('$msg')</script>";
		}				
	}	
}


?>
