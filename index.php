<!DOCTYPE html>
<html lang="pt-br"> 
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/tv.png" type="image/x-icon" />

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
                <a class="nav-link active" id="pills-animes-tab" data-toggle="pill" href="#pills-animes" role="tab" aria-controls="pills-animes" aria-selected="true">Animes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-mangas-tab" data-toggle="pill" href="#pills-mangas" role="tab" aria-controls="pills-mangas" aria-selected="false">Mangas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-series-tab" data-toggle="pill" href="#pills-series" role="tab" aria-controls="pills-series" aria-selected="false">Séries</a>
            </li>
        </ul>
        <form class="form-inline mr-3" action="db/pageSearch.php" method="POST" target="frame">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="searchWord">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit" >Search</button>
        </form>
        <div class="btn-group" role="group">
            <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle btn-outline-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Adicionar
            </button>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupDrop1">
            <button type="button" class="dropdown-item btn btn-primary" data-toggle="modal" data-target="#anime">Anime</button>
            <button type="button" class="dropdown-item btn btn-primary" data-toggle="modal" data-target="#mangas">Manga</button>
            <button type="button" class="dropdown-item btn btn-primary" data-toggle="modal" data-target="#series">Série</button>         
            </div>
        </div>
    </div>
    </nav>
    

    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-animes" role="tabpanel" aria-labelledby="pills-animes-tab"><?php include_once('db/animes.php')?></div>
        <div class="tab-pane fade" id="pills-mangas" role="tabpanel" aria-labelledby="pills-mangas-tab"><?php include_once('db/mangas.php')?></div>
        <div class="tab-pane fade" id="pills-series" role="tabpanel" aria-labelledby="pills-series-tab"><?php include_once('db/series.php')?></div>
    </div>



    <!-- Modal Adicionar Animes-->

    <div class="modal fade" id="anime" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="animeLabel">Adicionar Anime</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="" action="db/cadAnime.php" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="nome-anime" class="col-form-label">Nome do Anime:</label>
                            <input type="text" class="form-control" id="nome-anime" name="nomeAnime" required>
                        </div>       
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="temp-anime">Temporada:</label>
                                <input type="number" class="form-control" id="temp-anime" name="tempAnime" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="ep-anime">Episódio:</label>
                                <input type="number" class="form-control" id="ep-anime" name="epAnime" required>                      
                            </div>
                        </div>     
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nlink-anime">Nome do link:</label>
                                <input type="text" class="form-control" id="nlnik-anime" name="nlnikAnime" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="link-anime">Link:</label>
                                <input type="text" class="form-control" id="link-anime" name="linkAnime" required>                      
                            </div>
                        </div> 
                        <div class="form-group">
                            <label for="img-anime">Imagem</label>
                            <input type="file" class="form-control-file" id="img-anime" name="imgAnime">
                        </div>                                         
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">Salvar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>                                            
                </form>                   
            </div>
        </div>
    </div>
    
    <!-- Modal Adicionar Mangas-->

    <div class="modal fade" id="mangas" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="mangaLabel">Adicionar Manga</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="" action="db/cadManga.php" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="nome-manga" class="col-form-label">Nome do Manga:</label>
                            <input type="text" class="form-control" id="nome-manga" name="nomeManga" required>
                        </div>       
                        <div class="form-row">
                                <div class="form-group col-md-6">
                                <label for="ep-manga">Capitulo:</label>
                                <input type="number" class="form-control" id="ep-manga" name="epManga" required>                      
                            </div>
                        </div>     
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nlink-manga">Nome do link:</label>
                                <input type="text" class="form-control" id="nlnik-manga" name="nlnikManga" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="link-manga">Link:</label>
                                <input type="text" class="form-control" id="link-manga" name="linkManga" required>                      
                            </div>
                        </div> 
                        <div class="form-group">
                            <label for="img-manga">Imagem</label>
                            <input type="file" class="form-control-file" id="img-manga" name="imgManga">
                        </div>                                         
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">Salvar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>                                            
                </form>                   
            </div>
        </div>
    </div>
    
    <!-- Modal Adicionar Series-->

    <div class="modal fade" id="series" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="serieLabel">Adicionar Série</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form class="" action="db/cadSerie.php" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="nome-serie" class="col-form-label">Nome da Série:</label>
                            <input type="text" class="form-control" id="nome-serie" name="nomeSerie" required>
                        </div>       
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="temp-serie">Temporada:</label>
                                <input type="number" class="form-control" id="temp-serie" name="tempSerie" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="ep-serie">Episódio:</label>
                                <input type="number" class="form-control" id="ep-serie" name="epSerie" required>                      
                            </div>
                        </div>     
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nlink-serie">Nome do link:</label>
                                <input type="text" class="form-control" id="nlnik-serie" name="nlnikSerie" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="link-serie">Link:</label>
                                <input type="text" class="form-control" id="link-serie" name="linkSerie" required>                      
                            </div>
                        </div> 
                        <div class="form-group">
                            <label for="img-serie">Imagem</label>
                            <input type="file" class="form-control-file" id="img-serie" name="imgSerie">
                        </div>                                         
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">Salvar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>                                            
                </form>                   
            </div>
        </div>
    </div>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>