<?php

include_once("Connect.php");


function getMangas($stats){
    $connect = new Connect();
    $con = $connect->connect();

    $sql = 'SELECT * FROM amsdb.mangas WHERE stats = :stats ORDER BY data_atualizacao DESC;';

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
                    <img src="'. $row['linkImg'].'" class="card-img" alt="" width="140px" height="200px">
                
                </div>
                <div class="col-md-8">
                    <a href="#" class="float-right" data-toggle="modal" data-target="#attmanga" data-idm="'.$row['id'].'" data-nomem="'.$row['nome'].'" data-capm="'.$row['capitulo'].'" data-nlkm="'.$row['nlink'].'" data-lkm="'.$row['link'].'" data-statsm="'.$row['stats'].'" data-imagm="'.$row['linkImg'].'">               
                        <img src="../img/editicon.png" alt="Atualizar">
                    </a>
                    <a href="#" class="float-right" data-toggle="modal" data-target="#delmanga" data-idm="'.$row['id'].'"><img style="margin-top:5px" src="../img/delete.png" alt="Apagar" width=24 heght=24></a>
                    <div class="card-body">
                        <h6 class="card-title">'.$row['nome'].'</h6>
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
}
