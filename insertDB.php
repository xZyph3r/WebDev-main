<html>

<head> <title>Insert Page page</title> </head>

<body>
	<center>
		<?php

		$conn = mysqli_connect("localhost", "root", "", "webshop");
		if(!$conn)
		{
			die('Could not Connect MySql Server:' .mysql_error());
		}

			$name = $_POST['fname'];
			$preis = $_POST['fpreis'];
			$farbe = $_POST['ffarbe'];
			$groeße = $_POST['fgroeße'];
			$anzahl = $_POST['fanzahl'];

			$sql = "INSERT INTO artikel (name, preis) VALUES ('$name','$preis');";
			$sql .= "INSERT INTO anzahl (id,farbe, größe, anzahl) VALUES (LAST_INSERT_ID(),'$farbe','$groeße','$anzahl');";

			if ($conn->multi_query($sql) === TRUE) {
				echo "New records created successfully";
			  } else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			  }

			// Close connection
			$conn->close();
		?>
	</center>
</body>

</html>
