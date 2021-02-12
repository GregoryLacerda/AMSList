<?php

include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$sql = 'SELECT * FROM amsdb.mangas;';

$stmt = $con->prepare($sql);

$stmt->execute();

$dados = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($dados as $row) {

    $nome = preg_replace( array( '/[ ]/' , '/[^A-Za-z0-9\-]/' ) , array( '' , '' ) , $row['nome']);
    echo'
    <div class="card mt-3 ml-3 mb-3 d-inline-block" style="max-width: 420px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="../img/mangas/'. $nome .'.jpg" class="card-img" alt="" width="140px" height="200px">
            
            </div>
            <div class="col-md-8">
                <a href="#" class="float-right" data-toggle="modal" data-target="#attmanga" data-idm="'.$row['id'].'" data-nomem="'.$row['nome'].'" data-capm="'.$row['capitulo'].'" data-nlkm="'.$row['nlink'].'" data-lkm="'.$row['link'].'" data-statsm="'.$row['stats'].'">               
                    <img src="../img/editicon.png" alt="Atualizar">
                </a>
                <a href="#" class="float-right" data-toggle="modal" data-target="#delmanga" data-idm="'.$row['id'].'"><img style="margin-top:5px" src="../img/delete.png" alt="Apagar" width=24 heght=24></a>
                <div class="card-body">
                    <h5 class="card-title">'.$row['nome'].'</h5>
                    <hr>
                    <div class="card-text"><b>Capitulo:</b> '.$row['capitulo'].'</div>
                    <a href="'.$row['link'].'" class="card-link" target="blank">'.$row['nlink'].'</a>
                    <p class="card-text"><small class="text-muted">Status: '.$row['stats'].' </small></p>
                    
                </div>
                
            </div>
        </div>
    </div>    
  

    ';
}            




?>

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
                            <label for="statsManga">Status</label>
                            <select class="form-control" id="statsmanga" name="sttsmanga">
                            <option>Watching</option>
                            <option>Completed</option>
                            <option>Dropped</option>
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
