<?php


include_once("Connect.php");

$connect = new Connect();
$con = $connect->connect();

$sql = 'SELECT * FROM amsdb.animes;';

$stmt = $con->prepare($sql);

$stmt->execute();