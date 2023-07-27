<?php
session_start();
include "../../../../assets/koneksi.php";
require_once("../../../../assets/dompdf/src/Autoloader.php");
Dompdf\Autoloader::register();
use Dompdf\Dompdf;


$html = '

<center>
  <h3>LAPORAN DATA ALUMNI</h3>
  <p>SD NEGERI 143 MALUKU TENGAH</p>
</center>
<hr>  
    ';
$html .= '
 <table style="font-size:12px;border-collapse: collapse; width:100%" border = 1>
    <thead>
      <tr>
        <td>No</td>
        <td>Nama Siswa</td>
        <td>Tempat /Tanggal Lahir</td>
        <td>NIS</td>
        <td>JK</td>
        <td>Agama</td>
        <td>Alamat</td>
        <td>Nama Ayah</td>
        <td>Nama Ibu</td>
        <td>Pekerjaan Ayah</td>
        <td>Pekerjaan Ibu</td>
        <td>Status Siswa</td>
      </tr>

';
  $perintah="SELECT * From siswa where status_siswa='selesai'";
  $jalan=mysqli_query($conn, $perintah)or die(mysqli_error());
$no = 1;
while ($data=mysqli_fetch_array($jalan))
{ 
  $html .= '
      <tr>
        <td>'.$no++.'</td>
        <td>'.$data['nama_siswa'].'</td>
        <td>'.$data['tmpl'].' / '.$data['tgll'].'</td>
        <td>'.$data['nis'].'</td>
        <td>'.$data['jk'].'</td>
        <td>'.$data['agama'].'</td>
        <td>'.$data['alamat'].'</td>
        <td>'.$data['nama_ayah'].'</td>
        <td>'.$data['nama_ibu'].'</td>
        <td>'.$data['kerja_ayah'].'</td>
        <td>'.$data['kerja_ibu'].'</td> 
        <td>'.$data['status_siswa'].'</td> 
      </tr>

';

}

$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();
$dompdf->stream('Data gURU.pdf', ['Attachment'=>0]);

?>
<p style="font-size: "></p>

