<?php

define("WEB_TITLE","goldenvvipplatform"); // Change Bank Name
define("WEB_URL","https://goldenvvipplatform.com/portal"); // Change No "/" Ending splash
define("WEB_EMAIL","info@goldenvvipplatform.com"); // Change Your Website Email

$web_url = WEB_URL;

function dbConnect(){
    $servername = "localhost";
    $username = "u693350619_portalg";//DATABASE USERNAME
    $password = "]q3XPKyk/A";//DATABASE PASSWORD
    $database = "u693350619_portalg";//DATABASE NAME
    $dns = "mysql:host=$servername;dbname=$database";

    try {
        $conn = new PDO($dns, $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
}
//return dbConnect();

function inputValidation($value): string
{
    return trim(htmlspecialchars(htmlentities($value)));
}