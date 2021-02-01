<?php

 class Connect{
     
    private static $dsn = "mysql:host = localhost;dbname = amsdb;charset=utf8";
    private static $user = "amsuser";
    private static $pass = "123";

    public function __construct(){
        
    }

    #Function who open connection in db
    public function connect(){

        try {
            $conn = new PDO(self::$dsn, self::$user, self::$pass);
        } catch (PDOException $excp) {
            die($excp->getMessage());
        }
        return $conn;
    }

    #Function who close connection in db
    public function close(){

        $conn = null;
        return $conn;
    }

}
