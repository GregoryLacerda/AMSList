<?php

include_once("Connect.php");

    $connect = new Connect();
    $con = $connect->connect();
    
if ($_POST) {

    $nome = $_POST['nomeManga'];
    $capitulo = $_POST['capManga'];
    $nomeLink = $_POST['nlinkManga'];
    $link = $_POST['linkManga'];
    $stats = $_POST['statsManga'];


    $sql = 'INSERT INTO amsdb.mangas (nome, capitulo, link, nlink, stats) VALUES (:nome, :capitulo, :link, :nlink, :stats);';

    $stmt = $con->prepare($sql);

    $stmt->bindValue(':nome',$nome);
    $stmt->bindValue(':capitulo',$capitulo);
    $stmt->bindValue(':link',$link);
    $stmt->bindValue(':nlink',$nomeLink);
    $stmt->bindValue(':stats',$stats);

    $stmt->execute();

    //upload da imagem
    $ext = strtolower(substr($_FILES['imgManga']['name'],-4)); //Pegando extensão do arquivo
    $nome = preg_replace( array( '/[ ]/' , '/[^A-Za-z0-9\-]/' ) , array( '' , '' ) , $nome );
    $new_name = $nome. $ext; //Definindo um novo nome para o arquivo
    $nome = $new_name;
    $dir = '../img/mangas/'; //Diretório para uploads 
    move_uploaded_file($_FILES['imgManga']['tmp_name'], $dir.$new_name); //Fazer upload do arquivo
    echo("Imagen enviada com sucesso!");

    if ($stmt) {
        header('Location:'. $_SERVER['HTTP_REFERER']);
    }else{
        echo 'ero';
    }
}


