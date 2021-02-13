<?php

include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$sql = 'SELECT * FROM amsdb.series;';

$stmt = $con->prepare($sql);

$stmt->execute();

$dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($dados as $row) {

    $nome = preg_replace( array( '/[ ]/' , '/[^A-Za-z0-9\-]/' ) , array( '' , '' ) , $row['nome']);
    echo'
    <div class="card mt-3 ml-3 mb-3 d-inline-block" style="max-width: 420px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="../img/series/'. $nome .'.jpg" class="card-img" alt="" width="140px" height="200px">
            
            </div>
            <div class="col-md-8">
                <a href="#" class="float-right" data-toggle="modal" data-target="#attserie" data-id="'.$row['id'].'" data-nome="'.$row['nome'].'" data-temp="'.$row['temporada'].'" data-epi="'.$row['episodio'].'" data-nlk="'.$row['nlink'].'" data-lk="'.$row['link'].'" data-stats="'.$row['stats'].'">               
                    <img src="../img/editicon.png" alt="Atualizar">
                </a>
                <a href="#" class="float-right" data-toggle="modal" data-target="#delserie" data-id="'.$row['id'].'"><img style="margin-top:5px" src="../img/delete.png" alt="Apagar" width=24 heght=24></a>
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
            <form class="" action="db/attseries.php" method="post" enctype="multipart/form-data">
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
                            <label for="statsserie">Status</label>
                            <select class="form-control" id="statsserie" name="sttsserie">
                            <option>Watching</option>
                            <option>Completed</option>
                            <option>Dropped</option>
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
            <form class="" action="../db/delserie.php" method="post" enctype="multipart/form-data">
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
    
