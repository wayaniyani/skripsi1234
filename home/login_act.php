<?php 
session_start();
include '../assets/koneksi.php';
$username=$_POST['username'];
$password=$_POST['password'];
$level=$_POST['level'];
if ($level=="") { ?>
	<script>
		alert('Anda belum memilih hak akses\nSilahkan pilih hak akses terlebih dahulu');
			window.location.href='../home/login.php';
	</script>
	
<?php }
else{
	if ($level=='Wali Kelas') {
		$q = mysqli_query($conn, "SELECT * from wali_kelas where username='$username' and password='$password'");	
		$j = mysqli_num_rows($q);
		$d = mysqli_fetch_array($q);

		if ($j>0) {
				$_SESSION['id_user'] = $d['id_guru'];
				$_SESSION['level'] = "Wali Kelas";
				$_SESSION['login']=true;
				header("location:../user/admin");
			}else{ ?>
				<script>
					alert('Username dan password salah');
					window.location.href='../home/login.php';
				</script>
			<?php }	
	}
	else{
		$q = mysqli_query($conn, "SELECT * from admin where username='$username' and password='$password'");	
		$j = mysqli_num_rows($q);
		$d = mysqli_fetch_array($q);

		if ($j>0) {
				$_SESSION['id_user'] = $d['id'];
				$_SESSION['level'] = "Admin";
				$_SESSION['login']=true;
				header("location:../user/admin");
			}else{ ?>
				<script>
					alert('Username dan password salah');
					window.location.href='../home/login.php';
				</script>
			<?php }	
	}
} ?>