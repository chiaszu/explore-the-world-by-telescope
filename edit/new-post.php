<!-- <?php
      // $conn = new mysqli("localhost", 'root', "", "project");

      // $sql = $conn->query("SELECT * FROM post WHERE postID=" . $_GET["postID"]);
      // if ($sql->num_rows > 0) {
      //   $row = $sql->fetch_array();
      // } else {
      //   header('Location: ../readmore/readmore.php');
      //   exit;
      // }
      ?> -->

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
  <script src="./image-preview.js" type="text/javascript"></script>
  <title>New Post</title>
</head>

<body>
  <?php include '../menu/menu.php'; ?>

  <form method="POST" action="./insert.php" enctype="multipart/form-data">
    <div class="header">
      <input class="upload_image" id="coverPic" name="coverPic" type="file" accept="image/png, image/jpeg">
      <img src="img/insert-cover.png" onclick="document.getElementById('coverPic').click()">
      <textarea id=header_v type="text" placeholder="Add title..." name="title"></textarea>
    </div>
    <div class="section1">
      <input class="upload_image" id="section1_pic" name="section1_pic" type="file" accept="image/png, image/jpeg">
      <img src="img/insert-sec1.png" onclick="document.getElementById('section1_pic').click()">
      <div style="flex-grow: 1;">
        <textarea rows="1" class="sec_title" type="text" placeholder="type title..." name="section1_title"></textarea>
        <!-- <input class="sec_span" type="text" placeholder="type title..."> -->
        <textarea rows="8" class="sec_text" type="text" placeholder="description..." name="section1_text"></textarea>
      </div>
    </div>
    <div class="section2">
      <div class="sec2">
        <textarea rows="2" columns="1" id="sec2_title" class="sec_title" type="text" placeholder="type title..." name="section2_title"></textarea>
        <!-- <input class="sec_span" type="text" placeholder="type title..."> -->
        <textarea rows="12" columns="1" id="sec2_text" class="sec_text" type="text" placeholder="description..." name="section2_text"></textarea>
      </div>
      <div class="gallery">
        <input class="upload_image" id="section2_pic1" name="section2_pic1" type="file" accept="image/png, image/jpeg">
        <img src="img/insert-sec2.png" onclick="document.getElementById('section2_pic1').click()">
        <input class="upload_image" id="section2_pic2" name="section2_pic2" type="file" accept="image/png, image/jpeg">
        <img src="img/insert-sec2.png" onclick="document.getElementById('section2_pic2').click()">
        <input class="upload_image" id="section2_pic3" name="section2_pic3" type="file" accept="image/png, image/jpeg">
        <img src="img/insert-sec2.png" onclick="document.getElementById('section2_pic3').click()">
        <!-- <video src="<?php echo $row['section2_pic3']; ?> " autoplay muted loop playsinline></video> -->
      </div>
    </div>
    <div class="section3">
      <input class="upload_image" id="section3_pic" name="section3_pic" type="file" accept="image/png, image/jpeg">
      <img src="img/insert-sec3.png" onclick="document.getElementById('section3_pic').click()">
      <div style="flex-grow: 1;">
        <textarea rows="1" class="sec_title" type="text" placeholder="type title..." name="section3_title"></textarea>
        <!-- <input class="sec_span" type="text" placeholder="type title..."> -->
        <textarea rows="5" class="sec_text" type="text" placeholder="description..." name="section3_text"></textarea>
      </div>
    </div>
    <div class="end">
      <input class="upload_image" id="end_pic" name="end_pic" type="file" accept="image/png, image/jpeg">
      <img src="img/insert-end.png" onclick="document.getElementById('end_pic').click()">
      <textarea rows="3" columns="10" class="quote" type="text" placeholder="Enter a quote..." name="quote"></textarea>
      <textarea rows="1" class="author" type="text" placeholder="by ___" name="author"></textarea>

    </div>
    <div id="submit">
      <input id="new_post_button" type="submit" value="+ add new post" style="font-family:'Merriweather';">
    </div>
  </form>
</body>

</html>
