<html>
<head>
	<title>Validasi</title>
</head>
<body>

	<form action="" method="GET">
		<input type="text" name="username">
		<button name="submit">Submit</button>
	</form>
	<?php
		if (isset($_GET['submit'])) {
			$user = $_GET['username'];
			if (preg_match("/[a-z]{5}[_'.'][0-9]{2}/", $user)) {  
				echo "username valid"; 
			}else{
				echo "username not valid";
			}
		}
	?>
</body>
</html>