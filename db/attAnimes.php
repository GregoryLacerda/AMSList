<?php

include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$id = $_POST['idAnime'];
$nome = $_POST['nomeAnime'];
$temp = $_POST['tempAnime'];
$epis = $_POST['epAnime'];
$nlink = $_POST['nlinkAnime'];
$link = $_POST['linkAnime'];
$stats = $_POST['sttsAnime'];
$img = $_POST['linkAImg'];

$sql = 'UPDATE amsdb.animes SET nome =:nome, temporada =:temp, episodio =:epis, link=:link, nlink=:nlink, stats =:stats, linkImg =:img WHERE id = :id;';

$stmt = $con->prepare($sql);

$stmt->bindValue(':id',$id);
$stmt->bindValue(':nome',$nome);
$stmt->bindValue(':temp',$temp);
$stmt->bindValue(':epis',$epis);
$stmt->bindValue(':link',$link);
$stmt->bindValue(':nlink',$nlink);
$stmt->bindValue(':stats',$stats);
$stmt->bindValue(':img',$img);


$stmt->execute();

if ($stmt) {
    header('Location:'. $_SERVER['HTTP_REFERER']);
}else{
    echo 'ero';
}