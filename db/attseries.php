<?php

include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$id = $_POST['idserie'];
$nome = $_POST['nomeserie'];
$temp = $_POST['tempserie'];
$epis = $_POST['epserie'];
$nlink = $_POST['nlinkserie'];
$link = $_POST['linkserie'];
$stats = $_POST['sttsserie'];

$sql = 'UPDATE amsdb.series SET nome =:nome, temporada =:temp, episodio =:epis, link=:link, nlink=:nlink, stats =:stats WHERE id = :id;';

$stmt = $con->prepare($sql);

$stmt->bindValue(':id',$id);
$stmt->bindValue(':nome',$nome);
$stmt->bindValue(':temp',$temp);
$stmt->bindValue(':epis',$epis);
$stmt->bindValue(':link',$link);
$stmt->bindValue(':nlink',$nlink);
$stmt->bindValue(':stats',$stats);


$stmt->execute();

if ($stmt) {
    header('Location:'. $_SERVER['HTTP_REFERER']);
}else{
    echo 'ero';
}