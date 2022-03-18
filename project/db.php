<?php
$host = 'localhost';
$user = 'mis_team_1';
$pwd = 'sdg1548fg';
$db = 'mis_team_1';
$conn = mysqli_connect($host, $user, $pwd, $db);
if ($conn) {
    mysqli_query($conn, "SET NAMES 'utf8'");
} else {
    echo "connect error" . mysqli_connect_error();
}
