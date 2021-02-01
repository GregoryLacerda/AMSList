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
            <div class="card-body">
                <h5 class="card-title">'.$row['nome'].'</h5>
                <hr>
                <div class="card-text"><b>Temporada:</b> '.$row['temporada'].' <b>Episódio:</b> '.$row['episodio'].'</div>
                <a href="'.$row['link'].'" class="card-link" target="blank">'.$row['nlink'].'</a>
                <p class="card-text"><small class="text-muted">Status: '.$row['stats'].'</small></p>
            </div>
            </div>
        </div>
    </div>    
    
    ';
}

?>


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
    