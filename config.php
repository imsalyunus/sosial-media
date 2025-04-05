<?php

$db_host = $_ENV["DB_HOST"];
$db_user = $_ENV["DB_USER"];
$db_pass = $_ENV["DB_PASS"];
$db_name = $_ENV["DB_NAME"];

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
