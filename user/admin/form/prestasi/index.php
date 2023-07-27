<div class="box-header with-border">
  <h3 class="box-title">Data Prestasi Siswa</h3>

  <div class="box-tools pull-right">
    <!-- <a href="" class="btn btn-default btn-sm"  target="_blank">Print Data Paket</a> -->
    
    <a href="#" class="btn btn-info btn-sm"  data-toggle="modal" data-target="#addballroom">Tambah Data Prestasi</a>
  </div>
</div>

<form action="form/prestasi/simpan_prestasi.php" method="post" enctype="multipart/form-data">
<div class="modal fade" id="addballroom">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Data Prestasi</h4>
                
              </div>
              <div class="modal-body">
                  
              <div class="form-group">
                  <label>NIS</label>
                  <input type="text" name="nis" class="form-control" required>
              </div>
              <div class="form-group">
                  <label>Nama Siswa</label>
                  <input type="text" name="nama" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Kelas</label>
                  <input type="text" name="kelas" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Tahun Ajaran</label>
                  <input type="text" name="ta" class="form-control" required>
              </div>               
              <div class="form-group">
                  <label>Prestasi</label>
                  <input type="text" name="prestasi" class="form-control" required>
              </div> 
              
            
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan Data Prestasi Belajar</button>
            
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>


<hr>
<?php 
  $q1=mysqli_query($conn, "SELECT * from prestasi
    ");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        <td>NIS</td>
        <td>Nama</td>
        <td>Kelas</td>
        <td>Tahun Ajaran</td>
        <td>Prestasi</td>
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
    <td><?php echo $d1['nis'] ?></td>
    <td><?php echo $d1['nama'] ?></td>
    <td><?php echo $d1['kelas'] ?></td>
    <td><?php echo $d1['ta'] ?></td>
    <td><?php echo $d1['prestasi'] ?></td>
    

    <td>
      <a href="?a=edit_prestasi&id=<?php echo $d1['id_prestasi'] ?>" title="Ubah" class="btn btn-warning btn-sm">
          <i class="fa fa-edit"></i></a>
      <a href="form/prestasi/hapus_prestasi.php?id=<?php echo $d1['id_prestasi'] ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')"
               title="Hapus" class="btn btn-danger btn-sm">
                <i class="fa fa-trash"></i></a>   
    </td>
  </tr>
  <?php } ?>
</table>