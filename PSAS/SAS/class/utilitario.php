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

	/*Função de impressão de mensagems de alerta gerais retorna uma mensage padrão ou uma msg personalizada*/
	public static  function msgAlerta($novaMsg, $msg){
		if($novaMsg == true) {
			echo  ($msg);			
		} else{
			echo "<script>alert('Existem campos que não foram preechidos!')</script>";
		}				
	}			 		
			 		
	
}

?>

<?php 
	utilitario::msgAlerta(TRUE,"SSSSSSSSSSSS");



?>