<!DOCTYPE html>
<html lang="pt-br"> 
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="../images/logo-nava.ico" type="image/x-icon" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/myStyle.css">
    <script src="../../js/editor/ckeditor.js"></script>

    <title>Apoio Noc</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a onclick="changePage('pages/home.php')" class="navbar-brand" href="#">
            <img src="images/logo-nava.png" width="50" height="30" class="d-inline-block align-top" alt="">
            
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        <li class="nav-item ">
            <a onclick="changePage('pages/passagens.php')" class="nav-link menu-hover" href="#">Passagem<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a onclick="changePage('pages/ferramentas.html')" class="nav-link menu-hover" href="#">Ferramentas</a>
        </li>  
       
        
        </ul>
        <form class="form-inline mr-3" action="db/pageSearch.php" method="POST" target="frame">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="searchWord">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit" >Search</button>
        </form>
        <div class="btn-group">
            <button type="button" class=" btn-black dropbtn btn-user" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <?php echo "Olá ".$nome[0];?>
            </button>
            <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" onclick="changePage('db/getUserDados.php')" href="#">Meus Dados</a>
                <a class="dropdown-item" onclick="changePage('pages/attPass.php')" href="#">Alterar Senha</a>
                <?php if ($admin === "Sim"){echo '<a class="dropdown-item" data-toggle="modal" data-target="#linkPages" href="#">Cadastrar Link</a>';}?>
                <?php if ($admin === "Sim"){echo '<a class="dropdown-item" data-toggle="modal" data-target="#pages" href="#">Criar Pagina</a>';}?>
				<?php if ($admin === "Sim"){echo '<a class="dropdown-item" onclick="changePageCad()" href="#">Cadastrar Usuario</a>';}?>
                <?php $link = "'pages/userList.php'"; if ($admin === "Sim"){echo '<a class="dropdown-item" onclick="changePage('.$link.')" href="#">Lista de Usuarios</a>';}?>
                <div class="dropdown-divider"></div>
                <?php echo '<a class="dropdown-item text-danger font-weight-bold" href="db/doLogout.php">Sair</a>';?>
                
            </div>
        </div>
    </div>
    </nav>
</html>