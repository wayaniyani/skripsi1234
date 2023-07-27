<?php 
 $qta = mysqli_query($conn, "SELECT * from tahun_ajaran where status_ta='Aktif'");
          $jta = mysqli_num_rows ($qta);
          $dta = mysqli_fetch_array($qta);
          $id_ta = $dta['id_ta'];

if ($jta==0) { ?>


<div class="alert alert-info">
  <p >
    Data Kelas Terkunci karena tidak ada tahun ajaran aktif. <br>Data kelas akan terbuka jika ada tahun ajaran aktif <br>
    Silahkan tambahkan dulu tahun ajaran di menu Tahun Ajaran
  </p>
  
  
</div>
<?php }else{
           ?>
<div class="box-header with-border">
  <h3 class="box-title">
    Data Kelas <br>
    Tahun Ajaran <?php echo $dta['nama_ta'] ?>
  </h3>
  <div class="pull-right">
    <a href="" class=" btn btn-info btn-sm"  data-toggle="modal" data-target="#addkelas" style="background: #4682b4">Tambah Kelas</a>
  </div>
  
</div>

<form action="form/kelas/simpan_kelas.php" method="post"  enctype="multipart/form-data">
<div class="modal fade" id="addkelas">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Kelas</h4>
              </div>
              <div class="modal-body">

              <div class="form-group">
                  <label>Kelas</label>
                  <select name="tingkat" class="form-control">
                    <?php
                      $kelas = [1,2,3,4,5,6];
                      foreach ($kelas as $kls) { ?>
                        <option value="<?php echo$kls ?>"><?php echo $kls ?></option>
                      <?php } ?>
                    
                  </select>
              </div>
              <div class="form-group">
                  <label>Lokal</label>
                  <input type="text" name="kelas" class="form-control">
              </div>
            
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-info pull-left" style="background: #4682b4" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" style="background: #4682b4">Simpan Kelas</button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>

<div class="clearfix"></div>



<?php



  
  $perintah="SELECT * From kelas ";
  $jalan=mysqli_query($conn, $perintah);

  $total = mysqli_num_rows($jalan);
  $no=1;
?>
<table class="table table-striped table-bordered" id="example1">
	<thead>
	<tr>
		<td>No</td>
    <td>Kelas</td>
    <td>Lokal</td>
    
		<td>Wali Kelas</td>
    <td>Jumlah Siswa</td>
		<td class="text-center">Option</td>
	</tr>
</thead>
<?php

while ($data=mysqli_fetch_array($jalan))
{ 
  $idkelas = $data['id_kelas'];
$q = mysqli_query($conn, "SELECT b.nama_guru, a.status_wali_kelas from wali_kelas a left join guru b on a.id_guru = b.id_guru where a.status_wali_kelas='1' and a.id_kelas = '$idkelas'");
$d = mysqli_fetch_array($q);
$j = mysqli_num_rows($q);

$qmapel = mysqli_query($conn, "SELECT * from kelas_siswa where id_kelas='$idkelas' and id_ta='$id_ta' and status_ks='Aktif'");
$jmapel = mysqli_num_rows($qmapel);
$status_wali_kelas = $d['status_wali_kelas'];
if ($status_wali_kelas>0) {
  $walikelas = $d['nama_guru'];
}else{
  $walikelas = "Wali kelas belum ditentukan";

}
$id=$data['id_kelas'];
$kelas=$data['nama_kelas'];
;

?>
	<tr>
		<td><?php echo $no++; ?></td>
  <td><?php echo $data['tingkat']; ?></td>
  <td><?php echo $kelas; ?></td>
  <td>  <?php echo  $walikelas; ?></td>
  <td>  <?php echo  $jmapel; ?></td>
	
	<td class="text-center">
    <a href="?a=edit_kelas&id=<?php echo $id ?>" class="btn btn-warning btn-xs" title="Edit"><i class="fa fa-edit"></i></a> 
    <a href="form/kelas/hapus_kelas.php?id=<?php echo $id ?>" class="btn btn-danger btn-xs" title="Hapus" onclick="return confirm('Apakah anda akan menghapus Kelas <?php echo $kelas ?>.?')"><i class="fa fa-trash"></i></a> 
    <a href="?a=manage_kelas&id=<?php echo $id ?>" class="btn btn-success btn-xs">Management kelas</a> 
	</td>
		</tr>

		<?php } ?>
				
	</table>
<?php } ?>