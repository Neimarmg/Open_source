<meta charset="ISO-8859-1">
<?php
class utilitario {
 
	public static $comboBox = NULL;
	public static function comboBox($sql){
		
		
		$result = mysql_query($sql);		
		while ($fila = mysql_fetch_row($result)) {
			 //return utilitario::$comboBox = ".$fila['0'].">".$fila['1']." - ".$fila['2']."</option>";
		}
		
			 		
	}

	/*Fun��o de impress�o de mensagems de alerta gerais retorna uma mensage padr�o ou uma msg personalizada*/
	public static  function msgAlerta($novaMsg, $msg){
		if($novaMsg == true) {
			echo  ($msg);			
		} else{
			echo "<script>alert('Existem campos que n�o foram preechidos!')</script>";
		}				
	}			 		
			 		
	
}

?>

<?php 
	utilitario::msgAlerta(TRUE,"SSSSSSSSSSSS");



?>