
<?php 
include "../../../../assets/koneksi.php";
$id=$_GET['id'];

	$q1=mysqli_query($conn, "DELETE from prestasi where id_prestasi='$id'") or die(mysqli_error()); 
	
?>

	<script type="text/javascript">
		alert('Data prestasi siswa dihapus');
		window.location.href="../../?a=prestasi"

	</script>