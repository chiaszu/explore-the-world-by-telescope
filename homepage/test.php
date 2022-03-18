<?php

 $text = file_get_contents("homepage_up.php");
 print($text);
?>
<?php
   $success_string = "<div><p>web logged in</p></div>";
   $uandp = "<p>User:<input type='text' size = 10 name = 'user'></p><p>Password:<input type='password'size = 10 name = 'password'></p><input type='submit'>";
   $unsuccess_string = "<p id = 'incorrect'>Incorrect password</p>";

   $db = new PDO("mysql:dbname=project;host=localhost", "root", "");
   $rows = $db->query("SELECT * FROM users");



   function compare( $user, $pass){
     $db = new PDO("mysql:dbname=project;host=localhost", "root", "");
     $rows = $db->query("SELECT * FROM users");

     foreach ($rows as $row) {
       if($user == $row["username"] &&  $pass ==  $row["password"]){
         return 1;
       }
     }
     return 0;
   }

   if(isset($_POST['user'])):
     $user = $_POST['user'];
     $password = $_POST['password'];
     // print"$user";
     if(compare($user, $password)):
       print "$success_string";
     else:
       print "$unsuccess_string";
       print "$uandp";
     endif;
   else:
     print "$uandp";
   endif;

?>
<?php
$text = file_get_contents("homepage_down.php");
print($text);
 ?>
