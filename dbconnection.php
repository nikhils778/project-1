<?php
$host = "localhost";
$port = "5432";
$dbname = "car_showroom";
$user = "postgres";
$password = "postgres";

$conn = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

if(!$conn) {
    die("Could not connect to database.");
}
?>