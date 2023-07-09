
 <?php 
$tabela = 'usuarios';
require_once("php/conexao.php");
$nome = $_POST['nome'];
$senha = $_POST['senha'];
$conf_senha = $_POST['conf_senha'];
$email = $_POST['email'];
$id = $_POST['id'];
$senha = $_POST['senha'];
$senha_crip = md5($senha);

if($senha != $conf_senha){
	echo 'As senhas não se coincidem!';
	exit();
}

if($email == ""){
	echo 'Preencha o Email!';
	exit();
}

//validar email
if($email != ""){
	$query = $pdo->query("SELECT * from $tabela where email = '$email'");
	$res = $query->fetchAll(PDO::FETCH_ASSOC);
	if(@count($res) > 0 and $id != $res[0]['id']){
		echo 'Email já Cadastrado, escolha outro!!';
		exit();
	}
}


if($id == ""){
	$query = $pdo->prepare("INSERT into $tabela SET nome = :nome, email = :email, ativo = 'Sim', data = curDate(),  nivel = 'Usuario',  senha = :senha, senha_crip = '$senha_crip'"); 	

}else{

	
}
$query->bindValue(":senha", "$senha");
$query->bindValue(":nome", "$nome");
$query->bindValue(":email", "$email");
$query->execute();



header('location: ./');
exit();
 ?>
 