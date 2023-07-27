<!DOCTYPE html>
<html lang="zxx">
  <head>
    <title>SD Negeri 143 Maluku Tengah</title>
    <script language="JavaScript">
      var txt=":: SD Negeri 143 Maluku Tengah ";
      var kecepatan=250;var segarkan=null;function bergerak() { document.title=txt;
      txt=txt.substring(1,txt.length)+txt.charAt(0);
      segarkan=setTimeout("bergerak()",kecepatan);}bergerak();
    </script>
    <!--meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"/>
    <script>
      addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
      }, false);
      
      function hideURLbar() {
        window.scrollTo(0, 1);
      }
    </script>
    <!--//meta tags ends here-->
    <!--booststrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
    <!-- Web-Fonts -->
  <link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Mada:200,300,400,500,600,700,900&amp;subset=arabic" rel="stylesheet">
  <!-- //Web-Fonts -->

  </head>
  <body>
    <!--headder-->
    <div class="main-banner">
      <div class="headder-top" style="background:  Grey ; opacity: 0.9;">
        <!--//navigation section -->
        <!-- nav -->
        <nav >
          <div id="logo">
              <h1><a href="index.php">SISTEM INFORMASI AKADEMIK</a></h1>          
          </div>
          <label for="drop" class="toggle">Menu</label>
          <input type="checkbox" id="drop">
         <ul class="menu mt-2">
            <li class="active"><a href="index.php">Beranda</a></li>
            <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="tentang.php">Tentang Sekolah</a></li>
            <!-- <li class="mx-lg-3 mx-md-2 my-md-0 my-1"> -->
              <!-- First Tier Drop Down -->
              <!-- <label for="drop-2" class="toggle toogle-2">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span>
              </label>
              <a href="#">Dropdown <span class="fa fa-angle-down" aria-hidden="true"></span></a>
              <input type="checkbox" id="drop-2">
              <ul>
                <li><a href="gallery.html" class="drop-text">Gallery</a></li>
                <li><a href="blog.html" class="drop-text">Blog</a></li>
              </ul>
            </li> -->
            <li><a href="contact.php">Kontak</a></li>
            <li><a href="login.php">Login</a></li>
          </ul>
        </nav>
        <!-- //nav -->
      </div>
    </div>
    <!-- short -->
    <br><br><br>
    <div class="using-border py-3" style="background:#DCDCDC">
      <div class="inner_breadcrumb  ml-4">
        <ul class="short_ls">
          <li>
            <a href="index.php" class="mb-2 text-dark">Home</a>
            <span class="mb-2 text-dark">/</span>
          </li>
          <li class="mb-2 text-dark">Kontak</li>
        </ul>
      </div>
    </div>

    <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
      <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Hubungi Kami</h3>
        <div class="row">
          <div class="col-lg-6 col-md-8 about-imgs-txt"><br><br>
              <img src="images/sekolah.jpg" alt="news image" class="img-thumbnail" width="500px"> 
          </div>
          <div class="col-lg-6 col-md-6 contact-form-txt">
            <div class="row mt-lg-5 mt-md-4 mt-3">
              <div class="contact-list-grid col-lg-6 col-md-6 col-sm-6">
                <h4>Alamat</h4>
                <p class="pt-2">Jlm. Lintas Seram, Kode POS 97557</p>
              </div>
              <div class="contact-list-grid col-lg-6 col-md-6 col-sm-6">
                <h4>Email</h4>
                <p class="pt-2"><a href="#">SDNeg143_gmail.com</a> 
                </p>
                <p class="pt-2"><a href="#">SDN_143_gmail.com</a> 
                </p>
              </div>
            </div>
            <div class="row mt-lg-4 mt-3">
              <div class="contact-list-grid col-lg-6 col-md-6 col-sm-6">
                <h4>Phone</h4>
                <p class="pt-2">19999-02</p>
              </div>
              <div class="contact-list-grid col-lg-6 col-md-6 col-sm-6">
                <h4>Web</h4>
                <p class="pt-2"><a href="#">SD Negeri 143 Maluku Tengah</a> 
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--//contact  -->
<?php 
  include 'footer.php';
?>
