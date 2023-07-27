<?php 
include "../../../../assets/koneksi.php";

$id=$_POST['id'];
$nis=$_POST['nis'];
$nama=$_POST['nama'];
$kelas=$_POST['kelas'];
$ta=$_POST['ta'];
$prestasi=$_POST['prestasi'];


	$sql = "UPDATE prestasi set nis = '$nis', nama='$nama', kelas='$kelas', ta='$ta', prestasi = '$prestasi' where id_prestasi = '$id'";
	mysqli_query($conn, $sql)or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data prestasi belajar berhasil diperbaharui');
		window.location.href="../../?a=prestasi"

	</script>
