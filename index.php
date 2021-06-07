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
            <li class="nav-item">
                <a class="nav-link active" id="pills-mangas-tab" data-toggle="pill" href="#pills-mangas" role="tab" aria-controls="pills-mangas" aria-selected="false">Mangas</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link " id="pills-animes-tab" data-toggle="pill" href="#pills-animes" role="tab" aria-controls="pills-animes" aria-selected="true">Animes</a>
            </li>
           
            <li class="nav-item">
                <a class="nav-link" id="pills-series-tab" data-toggle="pill" href="#pills-series" role="tab" aria-controls="pills-series" aria-selected="false">Séries</a>
            </li>
        </ul>
        <div class="btn-group" role="group">
            <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle btn-outline-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Adicionar
            </button>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="btnGroupDrop1">
            <button type="button" class="dropdown-item btn btn-primary" data-toggle="modal" data-target="#mangas">Manga</button>
            <button type="button" class="dropdown-item btn btn-primary" data-toggle="modal" data-target="#anime">Anime</button>
            <button type="button" class="dropdown-item btn btn-primary" data-toggle="modal" data-target="#series">Série</button>         
            </div>
        </div>
    </div>
    </nav>
    

    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-mangas" role="tabpanel" aria-labelledby="pills-mangas-tab">
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-mReading-tab" data-toggle="tab" href="#nav-mReading" role="tab" aria-controls="nav-mReading" aria-selected="true">Reading</a>
                    <a class="nav-item nav-link" id="nav-mFollowing-tab" data-toggle="tab" href="#nav-mFollowing" role="tab" aria-controls="nav-mFollowing" aria-selected="false">Following</a>
                    <a class="nav-item nav-link" id="nav-mCompleted-tab" data-toggle="tab" href="#nav-mCompleted" role="tab" aria-controls="nav-mCompleted" aria-selected="false">Completed</a>
                    <a class="nav-item nav-link" id="nav-mPlanRead-tab" data-toggle="tab" href="#nav-mPlanRead" role="tab" aria-controls="nav-mPlanRead" aria-selected="false">Plan to Read</a>
                    <a class="nav-item nav-link" id="nav-mDropped-tab" data-toggle="tab" href="#nav-mDropped" role="tab" aria-controls="nav-mDropped" aria-selected="false">Dropped</a>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-mReading" role="tabpanel" aria-labelledby="nav-mReading-tab"><?php include_once('db/mangas.php'); getMangas('Reading');?></div>
                <div class="tab-pane fade" id="nav-mFollowing" role="tabpanel" aria-labelledby="nav-mFollowing-tab"><?php getMangas('Following');?></div>
                <div class="tab-pane fade" id="nav-mCompleted" role="tabpanel" aria-labelledby="nav-mCompleted-tab"><?php getMangas('Completed');?></div>
                <div class="tab-pane fade" id="nav-mPlanRead" role="tabpanel" aria-labelledby="nav-mPlanRead-tab"><?php getMangas('Plan to Read');?></div>
                <div class="tab-pane fade" id="nav-mDropped" role="tabpanel" aria-labelledby="nav-mDropped-tab"><?php getMangas('Dropped');?></div>
            </div>
                
            
        </div>
        <div class="tab-pane fade" id="pills-animes" role="tabpanel" aria-labelledby="pills-animes-tab">
            <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-aWatching-tab" data-toggle="tab" href="#nav-aWatching" role="tab" aria-controls="nav-aWatching" aria-selected="true">Watching</a>
                <a class="nav-item nav-link" id="nav-aPlanWatching-tab" data-toggle="tab" href="#nav-aPlanWatching" role="tab" aria-controls="nav-aPlanWatching" aria-selected="false">Plan to Watch</a>
                <a class="nav-item nav-link" id="nav-aCompleted-tab" data-toggle="tab" href="#nav-aCompleted" role="tab" aria-controls="nav-aCompleted" aria-selected="false">Completed</a>
                <a class="nav-item nav-link" id="nav-aDropped-tab" data-toggle="tab" href="#nav-aDropped" role="tab" aria-controls="nav-aDropped" aria-selected="false">Dropped</a>
            </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-aWatching" role="tabpanel" aria-labelledby="nav-aWatching-tab"><?php include_once('db/animes.php'); getAnime('Watching');?></div>
            <div class="tab-pane fade" id="nav-aPlanWatching" role="tabpanel" aria-labelledby="nav-aPlanWatching-tab"><?php getAnime('Plan to Watch');?></div>
            <div class="tab-pane fade" id="nav-aCompleted" role="tabpanel" aria-labelledby="nav-aCompleted-tab"><?php getAnime('Completed');?></div>
            <div class="tab-pane fade" id="nav-aDropped" role="tabpanel" aria-labelledby="nav-aDropped-tab"><?php getAnime('Dropped');?></div>
            </div>            
        </div>
        
        <div class="tab-pane fade" id="pills-series" role="tabpanel" aria-labelledby="pills-series-tab">
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-sWatching-tab" data-toggle="tab" href="#nav-sWatching" role="tab" aria-controls="nav-sWatching" aria-selected="true">Watching</a>
                    <a class="nav-item nav-link" id="nav-sCompleted-tab" data-toggle="tab" href="#nav-sCompleted" role="tab" aria-controls="nav-sCompleted" aria-selected="false">Completed</a>
                    <a class="nav-item nav-link" id="nav-sPlanWatching-tab" data-toggle="tab" href="#nav-sPlanWatching" role="tab" aria-controls="nav-sPlanWatching" aria-selected="false">Plan to Watch</a>
                    <a class="nav-item nav-link" id="nav-sDropped-tab" data-toggle="tab" href="#nav-sDropped" role="tab" aria-controls="nav-sDropped" aria-selected="false">Dropped</a>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-sWatching" role="tabpanel" aria-labelledby="nav-sWatching-tab"><?php include_once('db/series.php'); getSeries('Watching');?></div>
                <div class="tab-pane fade" id="nav-sCompleted" role="tabpanel" aria-labelledby="nav-sCompleted-tab"><?php getSeries('Completed');?></div>
                <div class="tab-pane fade" id="nav-sPlanWatching" role="tabpanel" aria-labelledby="nav-sPlanWatching-tab"><?php getSeries('Plan to Watch');?></div>
                <div class="tab-pane fade" id="nav-sDropped" role="tabpanel" aria-labelledby="nav-sDropped-tab"><?php getSeries('Dropped');?></div>
            </div> 
        
        </div>
    </div>


<!-- ///// All modals below/////-->

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
                                <input type="number" class="form-control" id="temp-anime" name="tempAnime" value="" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="ep-anime">Episódio:</label>
                                <input type="number" class="form-control" id="ep-anime" name="epAnime" required>                      
                            </div>
                        </div>     
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nlink-anime">Nome do link:</label>
                                <input type="text" class="form-control" id="nlink-anime" name="nlinkAnime" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="link-anime">Link:</label>
                                <input type="text" class="form-control" id="link-anime" name="linkAnime" required>                      
                            </div>
                        </div> 
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="img-anime"> Link Imagem</label>
                                <input type="text" class="form-control" id="img-anime" name="linkAnimeImage" required>    
                            </div>           
                            <div class="form-group col-md-6">
                                <label for="statsAnime">Status</label>
                                <select class="form-control" id="statsAnime" name="statsAnime">
                                <option>Watching</option>
                                <option>Completed</option>
                                <option>Plan to Watch</option>
                                <option>Dropped</option>
                                </select>
                            </div>
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
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nome-manga" class="col-form-label">Nome do Manga:</label>
                                <input type="text" class="form-control" id="nome-manga" name="nomeManga" required>
                            </div>       
                            <div class="form-group col-md-6">
                                <label for="cap-manga">Capitulo:</label>
                                <input type="number" class="form-control" id="cap-manga" name="capManga" required>                      
                            </div>
                        </div>     
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="nlink-manga">Nome do link:</label>
                                <input type="text" class="form-control" id="nlink-manga" name="nlinkManga" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="link-manga">Link:</label>
                                <input type="text" class="form-control" id="link-manga" name="linkManga" required>                      
                            </div>
                        </div> 
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="img-manga"> Link Imagem</label>
                                <input type="text" class="form-control" id="img-manga" name="linkMangaImage" required> 
                            </div>           
                            <div class="form-group col-md-6">
                                <label for="statsManga">Status</label>
                                <select class="form-control" id="statsManga" name="statsManga">
                                <option>Reading</option>
                                <option>Following</option>
                                <option>Completed</option>
                                <option>Plan to Read</option>
                                <option>Dropped</option>
                                </select>
                            </div>
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
                                <input type="text" class="form-control" id="nlink-serie" name="nlinkSerie" required>                      
                            </div>

                            <div class="form-group col-md-6">
                                <label for="link-serie">Link:</label>
                                <input type="text" class="form-control" id="link-serie" name="linkSerie" required>                      
                            </div>
                        </div> 
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="serie-anime"> Link Imagem</label>
                                <input type="text" class="form-control" id="serie-anime" name="linkSerieImage" required> 
                            </div>   
                            <div class="form-group col-md-6">
                                    <label for="statsSerie">Status</label>
                                    <select class="form-control" id="statsSerie" name="statsSerie">
                                    <option>Reading</option>
                                    <option>Completed</option>
                                    <option>Plan to Watch</option>
                                    <option>Dropped</option>
                                    </select>
                            </div>        
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


  
<!-- Modal att Animes-->

<div class="modal fade" id="attanime" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="animeLabel">Atualizar Anime</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="db/attAnimes.php" method="post" enctype="multipart/form-data">
                <div class="modal-body">
                    
                    <div class="form-group">
                        <label for="nome-anime" class="col-form-label">Nome do Anime:</label>
                        <input type="text" class="form-control" id="nomeAnime" name="nomeAnime" required>
                    </div>       
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="temp-anime">Temporada:</label>
                            <input type="number" class="form-control" id="tempAnime" name="tempAnime" required>                      
                        </div>

                        <div class="form-group col-md-6">
                            <label for="ep-anime">Episódio:</label>
                            <input type="number" class="form-control" id="epAnime" name="epAnime" required>                      
                        </div>
                    </div>     
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nlink-anime">Nome do link:</label>
                            <input type="text" class="form-control" id="nlinkAnime" name="nlinkAnime" required>                      
                        </div>

                        <div class="form-group col-md-6">
                            <label for="link-anime">Link:</label>
                            <input type="text" class="form-control" id="linkAnime" name="linkAnime" required>                      
                        </div>
                        
                    </div> 
                    <div class="form-row">   
                        <div class="form-group col-md-6">
                            <label for="linkAImg">Link Imagem:</label>
                            <input type="text" class="form-control" id="linkAImg" name="linkAImg" required>                      
                        </div>                           
                        <div class="form-group col-md-6">
                            <label for="statsAnime">Status</label>
                            <select class="form-control" id="statsAnime" name="sttsAnime">
                            <option value="Watching">Watching</option>
                            <option value="Completed">Completed</option>
                            <option value="Plan to Watch">Plan to Watch</option>
                            <option value="Dropped">Dropped</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="id-anime" name="idAnime" required>
                        </div>   
                    </div> 
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Atualizar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>                                            
            </form>                   
        </div>
    </div>
</div>

<!-- Delete Modal --> 
<div class="modal fade" id="delanime" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="animLabel">Excluir Anime</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="../db/delAnime.php" method="post" enctype="multipart/form-data">
                <div class="modal-body">

                 
                    Deseja excluir este anime?
                    <div class="form-group">
                        <input type="hidden" class="form-control" id="idAnime" name="idAnime" required>
                    </div>
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Confirmar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>                                            
            </form>                   
        </div>
    </div>
</div>
 
<!-- Modal att series-->

<div class="modal fade" id="attserie" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="serieLabel">Atualizar serie</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="db/attseries.php" method="post">
                <div class="modal-body">
                    
                    <div class="form-group">
                        <label for="nome-serie" class="col-form-label">Nome do serie:</label>
                        <input type="text" class="form-control" id="nomeserie" name="nomeserie" required>
                    </div>       
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="temp-serie">Temporada:</label>
                            <input type="number" class="form-control" id="tempserie" name="tempserie" required>                      
                        </div>

                        <div class="form-group col-md-6">
                            <label for="ep-serie">Episódio:</label>
                            <input type="number" class="form-control" id="epserie" name="epserie" required>                      
                        </div>
                    </div>     
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nlink-serie">Nome do link:</label>
                            <input type="text" class="form-control" id="nlinkserie" name="nlinkserie" required>                      
                        </div>

                        <div class="form-group col-md-6">
                            <label for="link-serie">Link:</label>
                            <input type="text" class="form-control" id="linkserie" name="linkserie" required>                      
                        </div>
                    </div> 
                    <div class="form-row">  
                        <div class="form-group col-md-6">
                            <label for="linkSImg">Link Imagem:</label>
                            <input type="text" class="form-control" id="linkSImg" name="linkSImg" required>                      
                        </div>                            
                        <div class="form-group col-md-6">
                            <label for="statsserie">Status</label>
                            <select class="form-control" id="statsserie" name="sttsserie">
                            <option value="Watching">Watching</option>
                            <option value="Completed">Completed</option>
                            <option value="Plan to Watch">Plan to Watch</option>
                            <option value="Dropped">Dropped</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="idserie" name="idserie" required>
                        </div>   
                    </div> 
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Atualizar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>                                            
            </form>                   
        </div>
    </div>
</div>

<!-- Delete Modal --> 
<div class="modal fade" id="delserie" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="serieLabel">Excluir serie</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="../db/delseries.php" method="post" enctype="multipart/form-data">
                <div class="modal-body">

                 
                    Deseja excluir este serie?
                    <div class="form-group">
                        <input type="hidden" class="form-control" id="idserie" name="idserie" required>
                    </div>
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Confirmar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>                                            
            </form>                   
        </div>
    </div>
</div>
    
<!-- Modal att Mangas-->

<div class="modal fade" id="attmanga" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mangaLabel">Atualizar Manga</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="db/attMangas.php" method="post">
                <div class="modal-body">                    
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nomeManga" class="col-form-label">Nome do Manga:</label>
                            <input type="text" class="form-control" id="nomemanga" name="nomemanga" required>
                        </div>       
                        <div class="form-group col-md-6">
                            <label for="capManga">Capitulo:</label>
                            <input type="number" class="form-control" id="capmanga" name="capmanga" required>                      
                        </div>
                    </div>     
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nlinkManga">Nome do link:</label>
                            <input type="text" class="form-control" id="nlinkmanga" name="nlinkmanga" required>                      
                        </div>
                        <div class="form-group col-md-6">
                            <label for="linkManga">Link:</label>
                            <input type="text" class="form-control" id="linkmanga" name="linkmanga" required>                      
                        </div>
                    </div> 
                    <div class="form-row">     
                        <div class="form-group col-md-6">
                            <label for="linkMImg">Link Imagem:</label>
                            <input type="text" class="form-control" id="linkMImg" name="linkMImg" required>                      
                        </div>                             
                        <div class="form-group col-md-6">
                            <label for="statsManga">Status</label>
                            <select class="form-control" id="statsmanga" name="sttsmanga">
                            <option value="Reading">Reading</option>
                            <option value="Following">Following</option>
                            <option value="Completed">Completed</option>
                            <option value="Dropped">Dropped</option>
                            <option value="Plan to Read">Plan to Read</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <input type="hidden" class="form-control" id="idmanga" name="idmanga" required>
                        </div>      
                    </div> 
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Atualizar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>                                            
            </form>                   
        </div>
    </div>
</div>

<!-- Delete Modal --> 
<div class="modal fade" id="delmanga" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="animLabel">Excluir manga</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="../db/delmanga.php" method="post" enctype="multipart/form-data">
                <div class="modal-body">

                 
                    Deseja excluir este manga?
                    <div class="form-group">
                        <input type="hidden" class="form-control" id="idmanga" name="idmanga" required>
                    </div>
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Confirmar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>                                            
            </form>                   
        </div>
    </div>
</div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
 
    <script src="js/scripts.js"></script>
    
    </body>
</html>