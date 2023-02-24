<?php

$db_host = $_ENV["host"];
$db_user = $_ENV["user"];
$db_pass = $_ENV["pass"];
$db_name = $_ENV["name"];

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
