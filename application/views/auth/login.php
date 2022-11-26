<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SEKOLAH</title>
    <link rel="icon" href="favic.ico">
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/tim/css/main.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/tim/login/style.css" />
  </head>
  <body>
    <main>
      <div class="box">
        <div class="inner-box">
          <div class="forms-wrap">
          <?php echo form_open('auth/check_login'); ?>
              <div class="logo">
                <img src="<?php echo base_url(); ?>/assets/tim/login/img/logo.png"/>
                <h4>SEKOLAH</h4>
              </div>

              <div class="heading">
                <h2>Welcome Back</h2>
              </div>

              <div class="actual-form">
                <div class="input-wrap">
                  <input
                    type="text"
                    name="username"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Name</label>
                </div>

                <div class="input-wrap">
                  <input
                    type="password"
                    name="password"
                    class="input-field"
                    autocomplete="off"
                    required
                  />
                  <label>Password</label>
                </div>

                <button class="sign-btn" name="submit" type="submit">Login</button>
               

                <p class="text">
                  Kembali ke halaman 
                  <a href="<?php echo base_url(); ?>">Utama</a>?
                </p>
              </div>
              <?php echo form_close(); ?>
          </div>
          <div class="carousel">
            <div class="images-wrapper">
              <img src="<?php echo base_url(); ?>/assets/tim/login/img/image1.png" class="image img-1 show" alt="" />
              <img src="<?php echo base_url(); ?>/assets/tim/login/img/image2.png" class="image img-2" alt="" />
              <img src="<?php echo base_url(); ?>/assets/tim/login/img/image3.png" class="image img-3" alt="" />
            </div>

            <div class="text-slider">
              <div class="text-wrap">
                <div class="text-group">
                  <h2>VISION</h2>
                  <h2>MISSION</h2>
                  <h2>ACTION</h2>
                </div>
              </div>

              <div class="bullets">
                <span class="active" data-value="1"></span>
                <span data-value="2"></span>
                <span data-value="3"></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Javascript file -->

    <script src="<?php echo base_url(); ?>/assets/tim/login/app.js"></script>
  </body>
</html>
