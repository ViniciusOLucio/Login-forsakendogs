<?php
require_once("php/conexao.php");
?>

<!DOCTYPE html>
<html>
<head>
  <title>Entrar</title>  
<meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->

  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- Include the above in your HEAD tag -->

  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

   <link rel="stylesheet" href="css/login.css">

   <link href="favicon.png" rel="icon">

</head>
<body>



  <div class="main">   





    <div class="container">
      <center>

           <div class="logo-mobile">            
              <img src="cachorro1.png" width="300px">           
              <br>
          </div>

        <div class="middle">

           
          <div id="login">

            <form action="autenticar.php" method="post">

              <fieldset class="clearfix">

                <p ><span class="fa fa-user"></span>
                  <input type="text" name="usuario"  Placeholder="Email" required></p>
                <p><span class="fa fa-lock"></span>
                  <input type="password" name="senha"  Placeholder="Senha" required></p> 

                <div>
                  <span style="width:48%; text-align:left;  display: inline-block;"><a class="" href="criar.php">Criar uma conta</a></span>
                  
                  <span style="width:50%; text-align:right;  display: inline-block;"><input type="submit" value="Login"></span>
                  
                </div>
   
              </fieldset>
              <div class="clearfix"></div>
            </form>

            <div class="clearfix"></div>

          </div> 
          <div class="logo">
            <span class="texto-logo">
              <img src="cachorro1.png" width="350px">
            </span>
            <div class="clearfix"></div>
          </div>

        </div>
      </center>
    </div>

  </div>

</body>
</html>