<?php
include '../../../../assets/koneksi.php';
$id=$_GET['id'];
$id_siswa=$_GET['id_siswa'];




$sql="DELETE from siswa where id_siswa='$id'";
$result=mysqli_query($conn, $sql) or die ('GAGAL');
?>
<script type="text/javascript">
	alert('Data Alumni Dihapus');
	window.location.href='../../?a=alumni<?php echo $id_siswa ?>'
</script>