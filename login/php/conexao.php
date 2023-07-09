<?php 
$banco = 'forsakendogs';
$usuario = 'root';
$senha = '';
$servidor = 'localhost';

$conexao = new mysqli($servidor, $usuario,$senha,$banco);

$url_sistema = "http://$_SERVER[HTTP_HOST]/";
$url = explode("//", $url_sistema);
if($url[1] == 'localhost/'){
	$url_sistema = "http://$_SERVER[HTTP_HOST]/forsakendogs/";
}

date_default_timezone_set('America/Sao_Paulo');

try {
	$pdo = new PDO("mysql:dbname=$banco;host=$servidor;charset=utf8", "$usuario", "$senha");
} catch (Exception $e) {
	echo 'Erro nos dados de conexão com o banco!<br>'.$e;
}



 ?>