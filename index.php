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

    <title>AMSList
    </title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-secondary">
    <a onclick="changePage('index.php')" class="navbar-brand" href="#">
            <img src="img/tv.png" width="70" height="55" class="d-inline-block align-top" alt="">
            
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="nav nav-pills mr-auto text-dark" id="pills-tab" role="tablist">
            <li class="nav-item ">
                <a class="nav-link active" id="pills-mangas-tab" data-toggle="pill" href="#pills-mangas" role="tab" aria-controls="pills-mangas" aria-selected="true">Mangas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-animes-tab" data-toggle="pill" href="#pills-animes" role="tab" aria-controls="pills-animes" aria-selected="false">Animes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-series-tab" data-toggle="pill" href="#pills-series" role="tab" aria-controls="pills-series" aria-selected="false">Séries</a>
            </li>
        </ul>
        <form class="form-inline mr-3" action="db/pageSearch.php" method="POST" target="frame">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="searchWord">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit" >Search</button>
        </form>
        <!--<div class="btn-group">
            <button type="button" class=" btn-black dropbtn btn-user" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Olá
            </button>
            <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" onclick="changePage('db/getUserDados.php')" href="#">Meus Dados</a>
                <a class="dropdown-item" onclick="changePage('pages/attPass.php')" href="#">Alterar Senha</a>
                <div class="dropdown-divider"></div>
                 echo '<a class="dropdown-item text-danger font-weight-bold" href="db/doLogout.php">Sair</a>';
                
            </div>
        </div>-->
    </div>
    </nav>
    

    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-mangas" role="tabpanel" aria-labelledby="pills-mangas-tab"><?php include_once('db/mangas.php')?></div>
        <div class="tab-pane fade" id="pills-animes" role="tabpanel" aria-labelledby="pills-animes-tab"><?php include_once('db/animes.php')?></div>
        <div class="tab-pane fade" id="pills-series" role="tabpanel" aria-labelledby="pills-series-tab"><?php include_once('db/series.php')?></div>
    </div>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>