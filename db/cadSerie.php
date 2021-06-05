<?php

include_once("Connect.php");

    $connect = new Connect();
    $con = $connect->connect();
    
if ($_POST) {


    $nome = $_POST['nomeSerie'];
    $temporada = $_POST['tempSerie'];
    $episodio = $_POST['epSerie'];
    $nomeLink = $_POST['nlinkSerie'];
    $link = $_POST['linkSerie'];
    $stats = $_POST['statsSerie'];
    $img = $_POST['linkSerieImage'];

    $sql = 'INSERT INTO amsdb.series (nome, temporada, episodio, link, nlink, stats, linkImg) VALUES (:nome, :temporada, :episodio, :link, :nlink, :stats, :img);';

    $stmt = $con->prepare($sql);

    $stmt->bindValue(':nome',$nome);
    $stmt->bindValue(':temporada',$temporada);
    $stmt->bindValue(':episodio',$episodio);
    $stmt->bindValue(':link',$link);
    $stmt->bindValue(':nlink',$nomeLink);
    $stmt->bindValue(':stats',$stats);
    $stmt->bindValue(':img',$img);

    $stmt->execute();

    //upload da imagem
    $ext = strtolower(substr($_FILES['imgSerie']['name'],-4)); //Pegando extensão do arquivo
    $nome = preg_replace( array( '/[ ]/' , '/[^A-Za-z0-9\-]/' ) , array( '' , '' ) , $nome );
    $new_name = $nome. $ext; //Definindo um novo nome para o arquivo
    $nome = $new_name;
    $dir = '../img/series/'; //Diretório para uploads 
    move_uploaded_file($_FILES['imgSerie']['tmp_name'], $dir.$new_name); //Fazer upload do arquivo
    echo("Imagen enviada com sucesso!");

    if ($stmt) {
        header('Location:'. $_SERVER['HTTP_REFERER']);
    }else{
        echo 'ero';
    }
}


