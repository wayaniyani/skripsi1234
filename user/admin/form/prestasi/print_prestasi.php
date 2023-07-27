<?php
session_start();
include "../../../../assets/koneksi.php";
require_once("../../../../assets/dompdf/src/Autoloader.php");
Dompdf\Autoloader::register();
use Dompdf\Dompdf;


$html = '

<center>
  <h3>LAPORAN DATA PRESTASI SD NEGERI 143 MALUKU TENGAH</h3>
</center>
<hr>  
    ';




$html .= '
 <table style="font-size:12px;border-collapse: collapse; width:100%" border = 1>
    <thead>
     <tr>
    <td >No</td>
      <td >NIS</td>
      <td >NISN</td>
      <td >Nama siswa</td>
      <td >Jenis Kelamin</td>
      <td >Kelas Saat Ini</td>
    <td >Option</td>
    </tr>

';
  $perintah="SELECT * From prestasi";
  $jalan=mysqli_query($conn, $perintah)or die(mysqli_error());
$no = 1;
while ($data=mysqli_fetch_array($jalan))
{ 
  $html .= '
     <td><?php echo $data['nis']; ?></td>
  <td><?php echo $data['nisn']; ?></td>
  <td><?php echo $data['nama_siswa']; ?></td>
  <td><?php echo $data['jk']; ?></td>
  <td><?php echo $d_kelas_sktif['tingkat'].' - '.$d_kelas_sktif['nama_kelas']; ?></td>
';

}




$dompdf = new Dompdf();

$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();
$dompdf->stream('Data prestasi.pdf', ['Attachment'=>0]);

?>
<p style="font-size: "></p>

