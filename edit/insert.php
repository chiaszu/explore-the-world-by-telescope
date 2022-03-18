<?php
if ($_POST['title'] === '') {
    echo 'No Title!';
    exit;
}

$title = $_POST['title'];

require_once 'db.php';

$images = [
    "coverPic",
    "section1_pic",
    "section2_pic1",
    "section2_pic2",
    "section2_pic3",
    "section3_pic",
    "end_pic",
];

foreach ($images as &$image) {
    if (isset($_FILES[$image])) {
        move_uploaded_file($_FILES[$image]['tmp_name'], "../project/img/$title-$image.webp");
        $_POST[$image] = "img/$title-$image.webp";
    }
}

$schema = ['postID', 'title', 'coverPic', 'section1_title', 'section1_span', 'section1_text', 'section1_pic', 'section2_title', 'section2_span', 'section2_text', 'section2_pic1', 'section2_pic2', 'section2_pic3', 'section3_title', 'section3_span', 'section3_text', 'section3_pic', 'quote', 'author', 'end_pic'];
foreach ($schema as &$value) {
    // replace ' with \'
    if (isset($_POST[$value])) {
        $_POST[$value] = str_replace("'", "\\'", $_POST[$value]);
    }
}

$sql = 'INSERT INTO post (';

foreach ($schema as &$value) {
    $sql .= "$value, ";
}

$sql[-2] = ')';

$sql .= 'VALUES (';
foreach ($schema as &$value) {
    if (isset($_POST[$value])) {
        $sql .= "'$_POST[$value]', ";
    } else {
        $sql .= "DEFAULT, ";
    }
}

$sql[-2] = ')';


if ($conn->query($sql) === TRUE) {
    echo 'New record created successfully, redirecting...';

    $title = $_POST['title'];
    $result = $conn->query("SELECT `postID`, `coverPic`, `section1_text`  FROM `post` WHERE `title`='$title'");
    // if (!$result) {
    //     echo $conn->error;
    //     exit;
    // }
    $row = $result->fetch_array();
    $postID = $row[0];
    $coverPic = $row[1];
    $desc = implode(" ", array_slice(explode(" ", $row[2]), 0, 50));

    $sql = "INSERT INTO `readmore` (`id`, `title`, `imgsrc`, `description`, `link`) VALUES (NULL, '$title', '../project/$coverPic', '$desc', '../project/city.php?postID=$postID')";

    if (!$conn->query($sql)) {
        echo $conn->error;
        exit;
    }

    header("refresh:3; url=../project/city.php?postID=$postID");
} else {
    echo "Error: " . $conn->error;
}


$conn->close();
