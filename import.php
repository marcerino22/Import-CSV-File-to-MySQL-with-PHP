<!DOCTYPE html>
<html>
<head>
	<title>Upload CSV</title>
</head>
<body>
<?php
	//Koneksi
	$host = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'belajar_web';
	$conn = mysqli_connect($host, $username, $password);
	mysqli_select_db($conn,$database);

	if (isset($_POST['submit'])) {
		//Script Upload
		if(is_uploaded_file($_FILES['filename']['tmp_name'])) {
			echo "<h1>" . "File " . $_FILES['filename']['name'] . " Berhasil di Upload" . "</h1>";
			echo "<h2>Menampilkan Hasil Upload : </h2>";
			readfile($_FILES['filename']['tmp_name']);
		}

		//Import Uploaded files
		$handle = fopen($_FILES['filename']['tmp_name'], "r"); //Membuka file dan membacanya
    	while(($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
    		// data array sesuaikan dengan jumlah kolom pada CSV anda mulai dari “0” bukan “1”
        	$import = mysqli_query($conn,"INSERT INTO student VALUES ('$data[0]', '$data[1]', '$data[2]', '$data[3]', '$data[4]', '$data[5]')");
		}
		

		fclose($handle);
		echo "<br><strong>Import data selesai.</strong>";
	} else {?>
		<!-- Form Upload File CSV -->
		Silahkan masukkan file csv yang ingin diupload<br />
		<form enctype="multipart/form-data" action="" method="post">
			Cari file anda :
			<input type="file" name="filename" size="100"><br>
			<input type="submit" name="submit" value="Upload">
		</form>
	<?php }
?>
</body>
</html>