<?php

include_once("Connect.php");

    $connect = new Connect();
    $con = $connect->connect();
    
if ($_POST) {


    $nome = $_POST['nomeAnime'];
    $temporada = $_POST['tempAnime'];
    $episodio = $_POST['epAnime'];
    $nomeLink = $_POST['nlinkAnime'];
    $link = $_POST['linkAnime'];

    $sql = 'INSERT INTO amsdb.animes (nome, temporada, episodio, link, nlink) VALUES (:nome, :temporada, :episodio, :link, :nlink);';

    $stmt = $con->prepare($sql);

    $stmt->bindValue(':nome',$nome);
    $stmt->bindValue(':temporada',$temporada);
    $stmt->bindValue(':episodio',$episodio);
    $stmt->bindValue(':link',$link);
    $stmt->bindValue(':nlink',$nomeLink);

    $stmt->execute();

    //upload da imagem
    $ext = strtolower(substr($_FILES['imgAnime']['name'],-4)); //Pegando extensão do arquivo
    $new_name = $nome. $ext; //Definindo um novo nome para o arquivo
    $nome = $new_name;
    $dir = '../img/'; //Diretório para uploads 
    move_uploaded_file($_FILES['imgAnime']['tmp_name'], $dir.$new_name); //Fazer upload do arquivo
    echo("Imagen enviada com sucesso!");

    if ($stmt) {
        header('Location:'. $_SERVER['HTTP_REFERER']);
    }else{
        echo 'ero';
    }
}


