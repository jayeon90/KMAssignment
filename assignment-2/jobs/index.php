<?php
	include '../config/config.php';
	include '../config/db_con.php';
	include '../header.php';
	
	$sql = "SELECT DISTINCT city FROM list";
	$res = mysqli_query($conn, $sql);
	
	if (mysqli_num_rows($res) > 0) {
		// output data of each row
		$idx = 1;
		while($row = mysqli_fetch_assoc($res)) {
			$sql2 = "SELECT  * FROM list WHERE city = '".$row['city']."'";
		//	echo '<br/>sql2: '.$sql2;
			$res2 = mysqli_query($conn, $sql2);
			if (mysqli_num_rows($res2) > 0) {
				while($row2 = mysqli_fetch_assoc($res2)) {
					$sub2[$row['city']]['00000'.$idx]['department'] = $row2['department'];
					$sub2[$row['city']]['00000'.$idx]['title'] = $row2['title'];
					$sub2[$row['city']]['00000'.$idx]['position'] = $row2['position'];
					$idx++;
				}
			}else {
				echo "0 results in second depth";
			}
		}
	} else {
		echo "0 results";
	}
	
//	echo '<pre>';
//		print_r($sub2);
//	echo '</pre>';
	
	echo '['.json_encode($sub2).']';

?>

<?php
	include '../footer.php';
?>
