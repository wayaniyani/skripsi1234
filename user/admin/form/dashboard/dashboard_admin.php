<?php 
$id = $_SESSION['id_user'];
$nama_semester = [1=>'Ganjil','Genap'];



  $q = mysqli_query($conn, "SELECT * from admin   where id='$id'");
$d = mysqli_fetch_array($q);
$d1 = $d;
$namauser =  $d['nama_admin']; 
   


?>
	
<h1>Dashboard</h1>

	<div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-info">
              <div class="widget-user-image">
                <img class="img" src="<?php echo $gambar ?>" alt="User Avatar">
              </div>
              <!-- /.widget-user-image -->
              <h5 class="widget-user-desc">Selamat Datang di Halaman User</h5>
              <h3 class="widget-user-desc"><?php echo $namauser ?></h3>
              <h4 class="widget-user-desc">Hak Akses : <?php echo $_SESSION['level'] ?></h4>
              
            </div>
            <br>
              <!-- ./col -->
  <div class="col-lg-4 col-6">
    <!-- small box -->
    <div class="small-box bg-blue">
      <div class="inner">
        <p>Jumlah Data Siswa</p>
           <h3>
            <?php
            include "../../koneksi.php";
             $sql ="select *from siswa where status_siswa= 'aktif'";
             $data =mysqli_query($conn,$sql);
             $jumlah_siswa =mysqli_num_rows($data);
            ?>
            <?php echo $jumlah_siswa ?>
          </h3>
          </div>
          <div class="icon">
            <i class="ion ion-person-add"></i>
          </div>
          <div class="small-box-footer"><br></div>
        </div>
      </div>

 <div class="col-lg-4 col-6">
    <!-- small box -->
    <div class="small-box bg-yellow">
      <div class="inner">
        <p>Jumlah Data Alumni</p>
           <h3>
            <?php
            include "../../koneksi.php";
             $sql ="select *from siswa where status_siswa= 'selesai'";
             $data =mysqli_query($conn,$sql);
             $jumlah_siswa =mysqli_num_rows($data);
            ?>
            <?php echo $jumlah_siswa ?>
          </h3>
          </div>
          <div class="icon">
            <i class="ion ion-flag"></i>
          </div>
          <div class="small-box-footer"><br></div>
        </div>
      </div>
 
  <div class="col-lg-4 col-6">
    <!-- small box -->
    <div class="small-box bg-green">
      <div class="inner">
        <p>Jumlah Data Guru</p>
           <h3>
            <?php
            include "../../koneksi.php";
             $sql ="select *from guru";
             $data =mysqli_query($conn,$sql);
             $jumlah_guru =mysqli_num_rows($data);
            ?>
            <?php echo $jumlah_guru ?>
          </h3>
          </div>
          <div class="icon">
            <i class="ion ion-person-stalker"></i>
          </div>
          <div class="small-box-footer"><br></div>
        </div>
      </div>

      <div class="col-lg-4 col-6">
    <!-- small box -->
    <div class="small-box bg-red">
      <div class="inner">
        <p>Jumlah Data Kelas</p>
           <h3>
            <?php
            include "../../koneksi.php";
             $sql ="select *from Kelas";
             $data =mysqli_query($conn,$sql);
             $jumlah_kelas =mysqli_num_rows($data);
            ?>
            <?php echo $jumlah_kelas ?>
          </h3>
          </div>
          <div class="icon">
            <i class="ion ion-easel"></i>
          </div>
          <div class="small-box-footer"><br></div>
        </div>
      </div>

      <div class="col-lg-4 col-6">
    <!-- small box -->
    <div class="small-box bg-purple">
      <div class="inner">
        <p>Jumlah Data Mapel</p>
           <h3>
            <?php
            include "../../koneksi.php";
             $sql ="select *from Mapel";
             $data =mysqli_query($conn,$sql);
             $jumlah_mapel =mysqli_num_rows($data);
            ?>
            <?php echo $jumlah_mapel ?>
          </h3>
          </div>
          <div class="icon">
            <i class="ion ion-grid"></i>
          </div>
          <div class="small-box-footer"><br></div>
        </div>
      </div>

</p>













<div class="clearfix"></div>
