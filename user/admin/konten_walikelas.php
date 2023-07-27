<?php 
@$menu = $_GET['a'];
if ($menu=='') {
  include "form/dashboard/dashboard_wali_kelas.php";
  // echo "Segera Aktif";
}
else if ($menu=='siswa_pj_wk') {
  include "form/siswa_walikelas/index.php";
}
else if ($menu=='absensi') {
  include "form/absensi/index.php";
}

else if ($menu=='edit_akun') {
  include "form/dashboard/edit_akun.php";
}
else if ($menu=='laporan_nilai') {
  include "form/laporan_nilai/index.php";
}
else if ($menu=='data_siswa_kelas_wk') {
  include "form/siswa_walikelas/data_siswa_kelas_wk.php";
}
else if ($menu=='data_absensi_siswa_perkelas') {
  include "form/absensi/data_absensi_siswa_perkelas.php";
}
else if ($menu=='detail_siswa') {
  include "form/siswa_walikelas/detail_siswa.php";
}
elseif ($menu=='prestasi') {
  include "form/prestasi/index.php";
}
elseif ($menu=='edit_prestasi') {
  include "form/prestasi/edit_prestasi.php";
}
else{
	echo "Fitur ini belum tersedia";
}
 ?>

