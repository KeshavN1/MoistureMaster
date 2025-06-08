<?php
$con = mysqli_connect('localhost', 'root', '', 'DATA');
if(mysqli_connect_error())
{
    echo "Failed to connect";
}

$temperature = $_GET["temperature"];
$humidity = $_GET["humidity"];
$moisture = $_GET["moisture"];

$query = "INSERT INTO soilmoisture (temperature, humidity, moisture) VALUES ('$temperature', '$humidity', '$moisture')";
$result = mysqli_query($con, $query);
echo "Insertion Success!!";
?>
