<?php 
include "../../../../assets/koneksi.php";

$nis=$_POST['nis'];
$nama=$_POST['nama'];
$kelas=$_POST['kelas'];
$ta=$_POST['ta'];
$prestasi=$_POST['prestasi'];
	$q1=mysqli_query($conn, "INSERT into prestasi set nis = '$nis', nama='$nama', kelas= '$kelas', ta='$ta', prestasi = '$prestasi'")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data prestasi belajar berhasil disimpan');
		window.location.href="../../?a=prestasi"

	</script>
