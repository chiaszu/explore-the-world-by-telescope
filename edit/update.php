<?php
require_once 'db.php';

if ($_POST['title'] === '') {
    echo 'No Title!';
    exit;
}

$postID = $_POST['postID'];
$title = $_POST['title'];
$section1_title = $_POST['section1_title'];
$section1_text = $_POST['section1_text'];
$section2_title = $_POST['section2_title'];
$section2_text = $_POST['section2_text'];
$section3_title = $_POST['section3_title'];
$section3_text = $_POST['section3_text'];
$quote = $_POST['quote'];
$author = $_POST['author'];

$sql = "UPDATE `post` SET `title` = '$title', `section1_title` = '$section1_title', 
`section1_text` = '$section1_text', `section2_title` = '$section2_title',
`section2_text` = '$section2_text', `section3_title` = '$section3_title',
`section3_text` = '$section3_text', `quote` = '$quote', `author` = '$author'
WHERE `postID` = '$postID'";

if ($conn->query($sql) === TRUE) {
    echo 'Post updated! Redirecting...';

    $result = $conn->query("SELECT `section1_text`  FROM `post` WHERE `postID`='$postID'");
    //$result = $conn->query("SELECT `postID`, `section1_text`  FROM `post` WHERE `title`='$title'");
    $row = $result->fetch_array();
    // $postID = $row[0];
    $desc = implode(" ", array_slice(explode(" ", $row[0]), 0, 50));

    $sql = "UPDATE `readmore` SET `title` = '$title', `description` = '$desc' 
    WHERE `id` = '$postID'";

    if (!$conn->query($sql)) {
        echo $conn->error;
        exit;
    }

    header("refresh:3; url=../project/city.php?postID=$postID");
} else {
    echo "Error: " . $conn->error;
}


$conn->close();
