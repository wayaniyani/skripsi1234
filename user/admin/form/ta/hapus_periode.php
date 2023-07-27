<?php
include '../../../../assets/koneksi.php';
$id=$_GET['id'];


$sql="DELETE from tahun_ajaran where id_ta='$id'";
$result=mysqli_query($conn, $sql) or die ('GAGAL');
?>
<script type="text/javascript">
	alert('Data Tahun Ajaran Dihapus');
	window.location.href='../../?a=tahun_ajaran'
</script>