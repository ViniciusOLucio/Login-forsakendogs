<?php 
@session_start();
require_once("php/conexao.php");
$usuario = $_POST['usuario'];
$senha = $_POST['senha'];
$senha_crip = md5($senha);
$query = $pdo->prepare("SELECT * FROM usuarios WHERE (email = :usu) and senha_crip = :senha");
$query->bindValue(":usu", "$usuario");
$query->bindValue(":senha", "$senha_crip");
$query->execute();
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_reg = @count($res);
$id = $_POST["id"];
$_SESSION["email"] = $usuario;
$_SESSION["id"] = $usuario;

if($total_reg > 0){

	if($res[0]['ativo'] != 'Sim'){
		echo '<script>alert("Usuário Inativo, contate o Administrador!")</script>';
		echo '<script>window.location="./"</script>';
		exit();
	}
	
	$id = $res[0]['id'];
	$email = $res[0]['email'];
	$nivel = $res[0]['nivel'];

	

	//armazenar no storage o id e o nivel
	echo "<script>localStorage.setItem('id_usuario', '$id')</script>";
	echo "<script>localStorage.setItem('nivel', '$nivel')</script>";

	//$id_teste = "<script>document.write(localStorage.id_usu)</script>";


	

	if($nivel == 'ADMIN'){
		header('Location: admin.html');

  }
	else if($nivel =='APOIADOR'){
		//echo '<script>window.location="../apoiadores/apoiador.php"</script>';
		header('Location: apoiador.html');
		
	}
	else if($nivel =='Usuario'){
		header('Location: usuario.html');
	}

}else{
	echo '<script>alert("Dados Incorretos!")</script>';
	echo '<script>window.location="./"</script>';
	exit();
}

 ?>

  