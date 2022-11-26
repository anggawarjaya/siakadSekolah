<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--========== BOX ICONS ==========-->
    <link
      href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css"
      rel="stylesheet"
    />

    <!--========== CSS ==========-->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/tim/css/main.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/tim/css/styles.css" />
    <link type="image/png" sizes="32x32" rel="icon" href="https://seeklogo.com/images/T/tut-wuri-handayani-logo-3438094E7B-seeklogo.com.png">

    <title>SMA Pintar Abadi</title>
  </head>
  <body>
    <!--========== SCROLL TOP ==========-->
    <a href="#" class="scrolltop" id="scroll-top">
      <i class="bx bx-chevron-up scrolltop__icon"></i>
    </a>

    <!--========== HEADER ==========-->
    <header class="l-header" id="header" >
      <nav class="nav bd-container">
        <img src="https://seeklogo.com/images/T/tut-wuri-handayani-logo-3438094E7B-seeklogo.com.png" id="logo" alt="">
        <a href="#" class="nav__logo">SMA Pintar Abadi</a>

        <div class="nav__menu" id="nav-menu">
          <ul class="nav__list">
            <li class="nav__item">
              <a href="#berita" class="nav__link active-link">Berita Sekolah</a>
            </li>
            <li class="nav__item">
              <a href="#home" class="nav__link">Tentang Sekolah</a>
            </li>
            <li class="nav__item">
              <a href="#menu" class="nav__link">Jurusan</a>
            </li>
            <li class="nav__item">
              <a href="#kontak" class="nav__link">Kontak</a>
            </li>
            <li class="nav__item">
              <a href="<?php echo base_url(); ?>auth" class="nav__link btn__login"
                >Login</a>
            </li>
          </ul>
        </div>

        <div class="nav__toggle" id="nav-toggle">
          <i class="bx bx-menu"></i>
        </div>
      </nav>
    </header>

    <main class="l-main">
      <section class="services section bd-container" id="berita">
        <h2 class="section-title">Berita Sekolah</h2>

        <div class="services__container bd-grid">
          <div class="services__content">
            <img src="https://smapramita.sch.id/wp-content/uploads/2021/12/pengambilan-rapot-01.jpg" alt="" class="services__img" />
            <h3 class="services__title">Pembagian Rapot</h3>
            <p class="services__description">
              Pembagian Rapot akan dilaksanakan pada Kamis, 23 Agustus 2022
            </p>
          </div>

          <div class="services__content">
            <img src="https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/ayobandung/bank_image/medium/cuti-bersama-desember-2020-terbaru-hanya-5-hari.jpg" alt="" class="services__img" />
            <h3 class="services__title">Libur Sekolah</h3>
            <p class="services__description">
              Libur Sekolah akan dimulai pada tanggal Jumat, 24 Agustus 2022 sampai 12 September 2022
            </p>
          </div>

          <div class="services__content">
            <img src="https://cdn1-production-images-kly.akamaized.net/yOFiy0dK-p16UVMlwcuqNHDhdJs=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2332408/original/088424600_1534416186-Napak-Tilas-Kemerdekaan-RI-di-Tugu-Proklamasi6.jpg" alt="" class="services__img" />
            <h3 class="services__title">Acara Pramuka</h3>
            <p class="services__description">
              Kegiatan Pramuka rutin akan tetap dilaksanakan selama libur sekolah
            </p>
          </div>
        </div>
      </section>
      <!--========== HOME ==========-->
      <section class="home" id="home">
        <div class="home__container bd-container bd-grid">
          <div class="home__data">
            <h1 class="home__title">SMA Pintar Abadi</h1>
            <h2 class="home__subtitle" id="tes">Sebuah sekolah yang mengedepankan akhlaqul karimah serta iman dan taqwa</h2>
            
          </div>  
          <img src="https://static.republika.co.id/uploads/images/inpicture_slide/sejumlah-siswa-smpn-2-ambarawa-kecamatan-ambarawa-kabupaten-semarang_220209122118-427.jpg" alt="" class="home__img" />
        </div>
      </section>



      <!--========== MENU ==========-->
      <section class="menu section bd-container" id="menu">
        
        <h2 class="section-title">Jurusan</h2>

        <div class="menu__container bd-grid">
          <div class="menu__content">
            <img src="https://pahamify.com/wp-content/uploads/2020/02/pahami-logo-ipa.svg" alt="" class="menu__img" />
            <h3 class="menu__name">IPA</h3>
            <span class="menu__detail">Ilmu Pengetahuan Alam</span>
            
            
          </div>

          <div class="menu__content">
            <img src="https://pahamify.com/wp-content/uploads/2020/02/pahami-logo-ips.svg" alt="" class="menu__img" />
            <h3 class="menu__name">IPS</h3>
            <span class="menu__detail">Ilmu Pengetahuan Sosial</span>
            
            
          </div>

          
        </div>
      </section>

      

      

    <!--========== FOOTER ==========-->
    <footer class="footer section bd-container" id="kontak">
      <div class="footer__container bd-grid">
        <div class="footer__content">
          <a href="#" class="footer__logo">SMA Pintar Abadi</a>
          <span class="footer__description">Sekolah Unggulan Terbaik</span>
          <div>
            <a href="#" class="footer__social"
              ><i class="bx bxl-facebook"></i
            ></a>
            <a href="#" class="footer__social"
              ><i class="bx bxl-instagram"></i
            ></a>
            <a href="#" class="footer__social"
              ><i class="bx bxl-twitter"></i
            ></a>
          </div>
        </div>

        

        <div class="footer__content">
          <h3 class="footer__title">Informasi</h3>
          <ul>
            <li><a href="#" class="footer__link">Kegiatan</a></li>
            <li><a href="#" class="footer__link">Profil Sekolah</a></li>
            <li><a href="#" class="footer__link">Sertifikat Sekolah</a></li>
        
          </ul>
        </div>

        <div class="footer__content">
          <h3 class="footer__title">Alamat</h3>
          <ul>
            <li>Medan, Indonesia</li>
            <li>Jl. Williem Iskandar</li>
            <li>+62 812-3333-9999</li>
            <li>smapintarabadi@sch.id</li>
          </ul>
        </div>
      </div>

      <p class="footer__copy">&#169; 2022 Kelompok 19. All right reserved</p>
    </footer>

    <!--========== SCROLL REVEAL ==========-->
    <script src="https://unpkg.com/scrollreveal"></script>

    <!--========== MAIN JS ==========-->
    <script src="<?php echo base_url(); ?>assets/tim/js/main.js"></script>
  </body>
</html>
