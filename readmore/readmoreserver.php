<?php
	if (isset($_POST['getData'])) {
		$conn = new mysqli("localhost", 'mis_team_1',"sdg1548fg", "mis_team_1");

		$start = $conn->real_escape_string($_POST['start']);
		$limit = $conn->real_escape_string($_POST['limit']);

		$sql = $conn->query("SELECT * FROM `readmore` LIMIT $start, $limit");
		if ($sql->num_rows > 0) {
      session_start();
			$response = "";

			while($data = $sql->fetch_array()) {
				$response .= '
				<div class = "singleouter">
					<div><a href = "'.$data['link'].'"><img src='.$data['imgsrc'].'></a></div>
					<div class = "besidecontain"><a href = "'.$data['link'].'">
						<h2>'.$data['title'].'</h2>
						<p>'.$data['description'].'</p></a>
					</div>
				';
        if (isset($_SESSION['user'])) {
          $response .= '
            <div class = "eandd">
              <a href = "../edit/edit-post.php?postID='.$data['id'].'"><img src = "edit.png"></a>
              <button class = "deletebutton" id = "'.$data['id'].'"style="background-color:inherit;border:0;padding:0;"><img src="delete.png"></button>
            </div>
          </div>
          ';
        } else {
          $response .= '</div>';
        }
			}

			exit($response);
		} else
			exit('reachedMax');
	}
?>
