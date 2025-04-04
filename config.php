<?php

<<<<<<< HEAD
$db_host = "db";
$db_user = "devopscilsy";
$db_pass = "1234567890";
$db_name = "dbsosmed";
=======
//$db_host = $_ENV["DB_HOST"];
//$db_user = $_ENV["DB_USER"];
//$db_pass = $_ENV["DB_PASS"];
//$db_name = $_ENV["DB_NAME"];
>>>>>>> fcb9587108674920a8a7f6387102a274118fc2e7

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
