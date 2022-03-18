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
  <link href="..\homepage\test2.css" rel="stylesheet">
  <script src="..\homepage\test3.js" type="text/javascript"></script>
  <?php echo '<title>' . $row['title'] . '</title>';
  ?>
</head>

<body>
  <section>
    <div id="menu">
      <div id="icondiv">
        <a href="..\homepage\homepage.php">
          <img src="..\menu\telescope.png">
        </a>
      </div>
      <div>
        <a href="../homepage/homepage_fake.php#othersection">LATEST POST</a> |
        <a href="../homepage/homepage_fake.php#beensofarouter">BEEN SO FAR</a> |
        <a href="../homepage/homepage_fake.php#glass">CONTACT US</a> ||
        <p id="logintext"><img src="..\homepage\portrait.svg" id="portraitimg">
        <p>
      </div>
    </div>
    <div id="logindiv" style="display:none;">
      <form action="" method="post">
        <?php
        $success_string = "<div class = 'inbox' id = 'success'>
                              <p><img src='..\homepage\plus.svg'><a href='../edit/new-post.php'>ADD POST</a></p><br>
                              <p><img src='..\homepage\logout.svg'><a onclick='logout();'>LOG OUT</a></p>
                           </div>"; //登入成功
        $uandp = "<div class = 'inbox'><p>User:<input type='text' size = 10 name = 'user'></p><p>Password:<input type='password'size = 10 name = 'password'></p><input id='login_submit' type='submit'></div>"; //輸入內容
        $unsuccess_string = "<div class = 'inbox'><p id = 'incorrect'>Incorrect password</p></div>"; //登入失敗

        $db = new PDO("mysql:dbname=project;host=localhost", "root", "");
        $rows = $db->query("SELECT * FROM users");



        function compare($user, $pass)
        {
          $db = new PDO("mysql:dbname=project;host=localhost", "root", "");
          $rows = $db->query("SELECT * FROM users");

          foreach ($rows as $row) {
            if ($user == $row["username"] &&  $pass ==  $row["password"]) {
              return 1;
            }
          }
          return 0;
        }

        if (isset($_POST['user'])) :
          $user = $_POST['user'];
          $password = $_POST['password'];
          // print"$user";
          if (compare($user, $password)) :
            print "$success_string";
          else :
            print "$unsuccess_string";
            print "$uandp";
          endif;
        else :
          print "$uandp";
        endif;


        ?>

    </div>
    </div>

    </form>
    <!-- <div id = "logindiv">
      <p>testingtestingtesting</p>
    <div> -->


  </section>

  <?php
  $conn = new mysqli("localhost", 'root', "", "project");

  $sql = $conn->query("SELECT * FROM post WHERE postID=" . $_GET["postID"]);
  if ($sql->num_rows > 0) {
    $row = $sql->fetch_array();
  } else {
    header('Location: ../readmore/readmore.php');
    exit;
  }
  ?>

  <div class="header">
    <!-- <h1>Greenwich</h1> -->
    <?php
    if (substr($row['coverPic'], -3) == 'mp4') {
      echo '<video src="' . $row['coverPic'] . '" autoplay muted loop playsinline></video>';
    } else {
      echo '<img src="' . $row['coverPic'] . '" />';
    }
    ?>
    <h1><?php echo $row['title']; ?></h1>
  </div>
  <div class="section1">
    <img src="<?php echo $row['section1_pic']; ?>" />
    <div style="flex-grow: 1;" s>
      <h1><?php echo $row['section1_title']; ?><span> <?php echo $row['section1_span']; ?></span></h1>
      <p>
        <?php echo $row['section1_text']; ?>
      </p>
    </div>
  </div>
  <div class="section2">
    <div class="sec2">
      <h1><?php echo $row['section2_title']; ?></h1>
      <p>
        <?php echo $row['section2_text']; ?>
      </p>
    </div>
    <div class="gallery">
      <img src="<?php echo $row['section2_pic1']; ?> " alt="" />
      <img src="<?php echo $row['section2_pic2']; ?> " alt="" />
      <?php
      if (substr($row['section2_pic3'], -3) == 'mp4') {
        echo '<video src="' . $row['section2_pic3'] . '" autoplay muted loop playsinline></video>';
      } else {
        echo '<img src="' . $row['section2_pic3'] . '" />';
      }
      ?>
    </div>
  </div>
  <div class="section3">
    <?php
    if (substr($row['section3_pic'], -3) == 'mp4') {
      echo '<video src="' . $row['section3_pic'] . '" autoplay muted loop playsinline></video>';
    } else {
      echo '<img src="' . $row['section3_pic'] . '" />';
    }
    ?>
    <div style="flex-grow: 1;">
      <h1><?php echo $row['section3_title']; ?> </h1>
      <p>
        <?php echo $row['section3_text']; ?>
      </p>
    </div>
  </div>
  <div class="end">
    <img src="<?php echo $row['end_pic']; ?>" />
    <h3>
      <?php echo $row['quote']; ?>
      <br />
      <span><?php echo $row['author']; ?></span>
    </h3>
  </div>
</body>

</html>