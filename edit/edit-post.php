<?php
require_once "db.php";
$sql = $conn->query("SELECT * FROM post WHERE postID=" . $_GET["postID"]);
$row = $sql->fetch_array();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link href="..\menu\menu.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&family=Merriweather:wght@300;400;700&display=swap" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="..\menu\menu.js" type="text/javascript"></script>
    <script src="./no-submit.js" type="text/javascript"></script>
    <?php echo '<title>Edit Post - ' . $row['title'] . '</title>';
    ?>
    <!-- <title>edit post</title> -->
</head>

<body>
  <?php include '../menu/menu.php'; ?>

    <?php
    if ($sql->num_rows > 0) {
        // $row = $sql->fetch_array();
        // echo '<br><br><br><br><br><br><br><br><br>';
        echo $row['title'];
    } else {
        // header('Location: ../readmore/readmore.php');
        echo "error";
        exit;
    }
    ?>
    <form method="POST" action="./update.php">
        <input type="text" name="postID" value="<?php echo $_GET['postID'] ?>" style="display: none;">
        <div class="header">
            <?php
            if (substr($row['coverPic'], -3) == 'mp4') {
                echo '<video src="../project/' . $row['coverPic'] . '" autoplay muted loop playsinline></video>';
            } else {
                echo '<img src="../project/' . $row['coverPic'] . '" />';
            }
            ?>
            <textarea id=header_v type="text" placeholder="Add Title..." name="title"><?php echo $row['title']; ?></textarea>

        </div>
        <div class=" section1">
            <img src="<?php echo '../project/' . $row['section1_pic']; ?>" />
            <div style="flex-grow: 1;">
                <textarea rows="1" class="sec_title" type="text" placeholder="type title..." name="section1_title"><?php echo $row['section1_title']; ?></textarea>
                <textarea rows="8" class="sec_text" type="text" placeholder="description..." name="section1_text"><?php echo $row['section1_text']; ?></textarea>
                <!-- <h1><?php //echo $row['section1_title']; 
                            ?><span> <?php //echo $row['section1_span']; 
                                        ?></span></h1> -->
            </div>
        </div>
        <div class="section2">
            <div class="sec2">
                <textarea rows="2" columns="1" id="sec2_title" class="sec_title" type="text" placeholder="type title..." name="section2_title"><?php echo $row['section2_title']; ?></textarea>
                <textarea rows="12" columns="1" id="sec2_text" class="sec_text" type="text" placeholder="description..." name="section2_text"><?php echo $row['section2_text']; ?></textarea>
            </div>
            <div class="gallery">
                <img src="<?php echo '../project/' . $row['section2_pic1']; ?> " alt="" />
                <img src="<?php echo '../project/' . $row['section2_pic2']; ?> " alt="" />
                <?php
                if (substr($row['section2_pic3'], -3) == 'mp4') {
                    echo '<video src="../project/' . $row['section2_pic3'] . '" autoplay muted loop playsinline></video>';
                } else {
                    echo '<img src="../project/' . $row['section2_pic3'] . '" />';
                }
                ?>
                <!-- <video src="<?php //echo $row['section2_pic3']; 
                                    ?> " autoplay muted loop playsinline></video> -->
            </div>
        </div>
        <div class="section3">
            <?php
            if (substr($row['section3_pic'], -3) == 'mp4') {
                echo '<video src="../project/' . $row['section3_pic'] . '" autoplay muted loop playsinline></video>';
            } else {
                echo '<img src="../project/' . $row['section3_pic'] . '" />';
            }
            ?>
            <div style="flex-grow: 1;">
                <textarea rows="1" class="sec_title" type="text" placeholder="type title..." name="section3_title"><?php echo $row['section3_title']; ?></textarea>
                <!-- <input class="sec_span" type="text" placeholder="type title..."> -->
                <textarea rows="5" class="sec_text" type="text" placeholder="description..." name="section3_text"><?php echo $row['section3_text']; ?></textarea>
            </div>
        </div>
        <div class="end">
            <img src="<?php echo '../project/' . $row['end_pic']; ?>" />
            <textarea rows="3" columns="10" class="quote" type="text" placeholder="Enter a quote..." name="quote"><?php echo $row['quote']; ?></textarea>
            <textarea rows="1" class="author" type="text" placeholder="by ___" name="author"><?php echo $row['author']; ?></textarea>
        </div>
        <div id="submit">
            <input type="submit" id="update_button" value="+ update post" style="font-family:'Merriweather';">
        </div>
    </form>
</body>

</html>
