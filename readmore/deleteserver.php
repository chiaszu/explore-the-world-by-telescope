<?php
  	$db = new PDO("mysql:dbname=mis_team_1;hostname=140.117.79.65", "mis_team_1", "sdg1548fg");
    $string = "delete from readmore where id = ".$_POST['id'].';';
    $deletegoal = $db->query($string);

    $db = new PDO("mysql:dbname=mis_team_1;hostname=140.117.79.65", "mis_team_1", "sdg1548fg");
    $string = "delete from post where postID = ".$_POST['id'].';';
    $deletegoal = $db->query($string);


?>
