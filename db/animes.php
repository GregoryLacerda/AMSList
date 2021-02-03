<?php

include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$sql = 'SELECT * FROM amsdb.animes;';

$stmt = $con->prepare($sql);

$stmt->execute();

$dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($dados as $row) {
    echo'
    <div class="card mt-3 ml-3 mb-3 d-inline-block" style="max-width: 420px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="../img/'.$row['nome'] .'.jpg" class="card-img" alt="" width="140px" height="200px">
            
            </div>
            <div class="col-md-8">
                <a href="#" class="float-right" data-toggle="modal" data-target="#attanime" data-id="'.$row['id'].'" data-nome="'.$row['nome'].'" data-temp="'.$row['temporada'].'" data-epi="'.$row['episodio'].'" data-nlk="'.$row['nlink'].'" data-lk="'.$row['link'].'" data-imag="img/'.$row['nome'].'.jpg" data-stats="'.$row['stats'].'">               
                    <img src="../img/editicon.png" alt="">
                </a>
                <div class="card-body">
                    <h5 class="card-title">'.$row['nome'].'</h5>
                    <hr>
                    <div class="card-text"><b>Temporada:</b> '.$row['temporada'].' <b>Episódio:</b> '.$row['episodio'].'</div>
                    <a href="'.$row['link'].'" class="card-link" target="blank">'.$row['nlink'].'</a>
                    <p class="card-text"><small class="text-muted">Status: '.$row['stats'].' </small></p>
                    
                </div>
                
            </div>
        </div>
    </div>    
  

    ';
}            




?>


<!-- Modal att Animes-->

<div class="modal fade" id="attanime" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="animeLabel">Adicionar Anime</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" action="db/attAnime.php" method="post" enctype="multipart/form-data">
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
                            <label for="img-anime">Imagem</label>
                            <input type="file" class="form-control-file" id="imgAnime" name="imgAnime" >
                        </div>           
                        <div class="form-group col-md-6">
                            <label for="statsAnime">Status</label>
                            <select class="form-control" id="statsAnime" name="sttsAnime">
                            <option>Watching</option>
                            <option>Completed</option>
                            <option>Dropped</option>
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


    <!--
    <div class="card mt-3 ml-3 mb-3 d-inline-block" style="max-width: 420px;">
        <div class="row no-gutters">
            <div class="col-md-4">
            <img src="../img/tensura.jpg" class="card-img" alt="tensura">
            </div>
            <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">Tensei Shitara Slime Datta Ken</h5> 
                <hr>
                <div class="card-text">Capitulo: 54</div>
                <a href="#" class="card-link">MangaLivre</a>
                <p class="card-text"><small class="text-muted">Atualizado dia 19/01</small></p>
            </div>
            </div>
        </div>
    </div>
    -->

