<div class="box-header with-border">
  <h3 class="box-title">Edit Data Prestasi</h3>

  <div class="box-tools pull-right">
    <a href="?a=prestasi" class="btn btn-info" >Kembali</a>
  </div>
</div>


<?php 
$id=$_GET['id'];
  $q1=mysqli_query($conn, "SELECT * from prestasi where id_prestasi='$id'") or die(mysqli_error());
  $d1=mysqli_fetch_array($q1);
  $j1=mysqli_num_rows($q1);
 ?>

<br>

<form action="form/prestasi/simpanedit_prestasi.php" method="post" enctype="multipart/form-data">
                  <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_prestasi'] ?>">
                
                <div class="form-group">
                  <label>NIS</label>
                    <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_prestasi'] ?>">
                  <input type="text" name="nis" class="form-control" value="<?php echo $d1['nis'] ?>">
              </div> 
              <div class="form-group">
                  <label>Nama Siswa</label>
                   <input type="text" class="form-control" name="nama" value="<?php echo $d1['nama'] ?>">
              </div> 
              <div class="form-group">
                  <label>Kelas</label>
                   <input type="text" class="form-control" name="kelas" value="<?php echo $d1['kelas'] ?>">
              </div> 
              <div class="form-group">
                  <label>Tahun Ajaran</label>
                   <input type="text" class="form-control" name="ta" value="<?php echo $d1['ta'] ?>">
              </div> 
              <div class="form-group">
                  <label>Prestasi</label>
                  <input type="text" class="form-control" name="prestasi" value="<?php echo $d1['prestasi'] ?>">
              </div> 
               
              


              <div class="form-group">
                 <input type="submit" class="btn btn-info"  value="Simpan Perubahan Data">
              </div> 

              
          
</form>