<section>
<div id="menu" style="<?php if (strpos($_SERVER['REQUEST_URI'], 'homepage') !== false) echo 'display: none'; ?>">
    <div id="icondiv">
      <a href="../homepage/homepage.php">
        <img src="..\menu\telescope.png">
      </a>
    </div>
    <div>
      <!-- <a href="homepage_fake.php#special_post">LASTEST POST</a> | -->
      <a href="../homepage/homepage_fake.php#othersection">LATEST POST</a> |
      <a href="../homepage/homepage_fake.php#beensofarouter">BEEN SO FAR</a> |
      <a href="../homepage/homepage_fake.php#glass">CONTACT US</a> ||
      <p id="logintext"><img src="../menu/portrait.svg" id="portraitimg">
      <p>
    </div>
  </div>

  <div id="logindiv" style="display:none;" class="unlog">
    <form action="" method="post" id="login">
    <!-- hidden post paramter for logout only -->
    <input type="text" name="logout" id="logout" style="display: none;">
      <?php
      $success_string = "
        <div class = 'inbox' id = 'success'>
          <p><img src='../menu/plus.svg'><a href='../edit/new-post.php'>ADD POST</a></p><br>
          <p><img src='../menu/logout.svg'><a onclick='userLogout();'>LOG OUT</a></p>
        </div>"; //登入成功
      $uandp = "
        <div class = 'inbox'>
          <p>User:<input type='text' size = 10 name = 'user'></p>
          <p>Password:<input type='password'size = 10 name = 'password'></p>
          <input type='submit'>
        </div>"; //輸入內容
      $unsuccess_string = "<div class = 'inbox'><p id = 'incorrect'>Incorrect password</p></div>"; //登入失敗

      $db = new PDO("mysql:dbname=mis_team_1;hostname=140.119.79.65", "mis_team_1", "sdg1548fg");
      $rows = $db->query("SELECT * FROM `users`");



      function compare($user, $pass)
      {
        $db = new PDO("mysql:dbname=mis_team_1;hostname=140.119.79.65", "mis_team_1", "sdg1548fg");
        $rows = $db->query("SELECT * FROM `users`");

        foreach ($rows as $row) {
          if ($user == $row["username"] &&  $pass ==  $row["password"]) {
            return 1;
          }
        }
        return 0;
      }

      session_start();
      if (isset($_POST['logout']) && $_POST['logout'] === 'yes') {
        session_unset();
        print "$uandp";
      }
      else if (isset($_SESSION['user'])) {
        print "$success_string";
      }
      else {
        if (isset($_POST['user'])) {
          $user = $_POST['user'];
          $password = $_POST['password'];
          if (compare($user, $password)) {
            $_SESSION['user'] = $user;
            print "$success_string";
          }
          else {
            print "$unsuccess_string";
            print "$uandp";
          }
        }
        else {
          print "$uandp";
        }
      }

      ?>

    </form>
  </div>
    <!--
    <div style="display:none;" class="enlog">
      <a href="">HI <?php # echo $_SESSION['username'] ?></a>
      <a href="">LOG OUT</a>
    </div>
    -->

</section>

<script>
   function userLogout () {
     const form = document.getElementById('login')
     document.getElementById('logout').value = 'yes';
     form.submit()
   }
</script>
