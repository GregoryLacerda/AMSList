<?php

include_once("Connect.php");

function getSeries($stats){
    $connect = new Connect();
    $con = $connect->connect();

    $sql = 'SELECT * FROM amsdb.series WHERE stats = :stats;';

    $stmt = $con->prepare($sql);
    $stmt->bindValue(':stats',$stats);

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
                        <h6 class="card-title">'.$row['nome'].'</h6>
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
}

