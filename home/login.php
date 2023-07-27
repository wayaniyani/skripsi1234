<!--A Design by W3layouts
  Author: W3layout
  Author URL: http://w3layouts.com
  License: Creative Commons Attribution 3.0 Unported
  License URL: http://creativecommons.org/licenses/by/3.0/
  -->
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
    <div class="main-banner" id="home">
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
    <!-- //Navigation -->

   
  <!-- short -->
    <br><br><br>
    <div class="using-border py-3" style="background:#DCDCDC">
      <div class="inner_breadcrumb  ml-4">
        <ul class="short_ls">
          <li>
            <a href="index.php" class="mb-2 text-dark">Home</a>
            <span class="mb-2 text-dark">/</span>
          </li>
          <li class="mb-2 text-dark">Login</li>
        </ul>
      </div>
    </div>
    <!-- //short-->
    <!-- service -->
    <br>
    <section class="service py-lg-4 py-md-3 py-sm-3 py-3" id="service">
      <div class="container col-4 col-md-4" style="background:#DCDCDC">
        <br>
        <img src="logo1.png" class="tengah" width="170px"/> 
            <style>
              .tengah{
                margin-left: auto;
                margin-right: auto;
                display: block;
                width: 120px;
              }
          </style>
        <form action="login_act.php" method="post">
          <div class="w3pvt-wls-contact-mid">
            <div class="form-group contact-forms">
              <label class="control-label" for="username"><b>Username</b></label>
              <input type="text" name="username" autofocus="" class="form-control" placeholder="Email" required="">
            </div>
            <div class="form-group contact-forms">
              <label class="control-label" for="username"><b>Password</b></label>
              <input type="password" name="password" class="form-control" placeholder="Password" required="">
            </div>
            <div class="form-group contact-forms">
              <label class="control-label" for="username"><b>Pilih Hak Akses</b></label>
              <select name="level" class="form-control">
                 <option value="Wali Kelas"></option>
                <option value="Wali Kelas">Wali Kelas</option>
                <option value="ad">Admin</option>
              </select>
            </div>
            <button type="submit" class="btn sent-butnn" style="background: #4682b4"><b>LOGIN</b></button><br><br><br><br>
          </div>
        </form>
      </div>
    </section>
    <!-- //service -->
<?php
  include 'footer.php';
?>