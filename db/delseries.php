<?php

include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$id = $_POST['idserie'];

$sql = 'DELETE FROM amsdb.series WHERE id = :id;';

$stmt = $con->prepare($sql);

$stmt->bindValue(':id',$id);

$stmt->execute();

if ($stmt) {
    header('Location:'. $_SERVER['HTTP_REFERER']);
}else{
    echo 'ero';
}