<?php

include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$id = $_POST['idmanga'];
$nome = $_POST['nomemanga'];
$cap = $_POST['capmanga'];
$nlink = $_POST['nlinkmanga'];
$link = $_POST['linkmanga'];
$stats = $_POST['sttsmanga'];

$sql = 'UPDATE amsdb.mangas SET nome =:nome, capitulo =:cap, link=:link, nlink=:nlink, stats =:stats WHERE id = :id;';

$stmt = $con->prepare($sql);

$stmt->bindValue(':id',$id);
$stmt->bindValue(':nome',$nome);
$stmt->bindValue(':cap',$cap);
$stmt->bindValue(':link',$link);
$stmt->bindValue(':nlink',$nlink);
$stmt->bindValue(':stats',$stats);


$stmt->execute();

if ($stmt) {
    header('Location:'. $_SERVER['HTTP_REFERER']);
}else{
    echo 'ero';
}