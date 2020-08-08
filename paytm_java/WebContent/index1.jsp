<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Park It - Home</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <link href="assets/img/car.png" rel="icon">
  <link href="assets/img/car.png" rel="apple-touch-icon">


  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
    rel="stylesheet">


  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container">

      <div class="logo float-left">
        <a href="index1.jsp"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav class="nav-menu float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="index1.jsp">Home</a></li>
         <li><a href="about1.jsp">About Us</a></li>
          <li><a href="services1.jsp">Services</a></li>
          <li><a href="team1.jsp">Partners</a></li>

          <li><a href="contact1.jsp">Contact Us</a></li>
          <li><a href="blog1.jsp">Login/Sign Up</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">

      <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Parking Just Got a Lot Simpler</h2>
          <p class="animate__animated animate__fadeInUp">Want to avoid the hassle of looking for a car parking when
            you are already running late? With <i>Park It</i> you can now pre-book the parking space and time slot
            of your choice hours before you arrive!
          </p>
          <a href="about1.jsp" class="btn-get-started animate__animated animate__fadeInUp">Read More</a>
        </div>
      </div>

      <!-- Slide 2 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Create an Account</h2>
          <p class="animate__animated animate__fadeInUp">Sign up today to enjoy the benefits of <i>Park It</i> so
            that your next parking is stress free!</p>
          <a href="blog1.jsp" class="btn-get-started animate__animated animate__fadeInUp">Click Here</a>
        </div>
      </div>

      <!-- Slide 3 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">About our Partners</h2>
          <p class="animate__animated animate__fadeInUp">Find out about the malls, offices, restaurants and other
            such spaces that we are tied up with!
          </p>
          <a href="team1.jsp" class="btn-get-started animate__animated animate__fadeInUp">Click here</a>
        </div>
      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Services Section ======= -->
    <section class="services">

      <div class="container">
        <div class="section-title">
          <h2>Benefits</h2>
          <p><i>Park It</i> provides the following benefits and more ... </p>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bx-car"></i></div>
              <h4 class="title"><a href="">Slots per vehicle type</a></h4>
              <p class="description">Allocate slots as per two-wheeler and four-wheeler vehicles to utilise all
                available space.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bxs-barcode"></i></div>
              <h4 class="title"><a href="">Auto-generated passes</a></h4>
              <p class="description">QR code-based passes are instantly auto-generated for a visitor.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bx-card"></i></div>
              <h4 class="title"><a href="">On spot or monthly pay</a></h4>
              <p class="description">Parking passes generated can be on pay-&-park or a monthly pay basis.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bxs-report"></i></div>
              <h4 class="title"><a href="">View live reports</a></h4>
              <p class="description">No more manual checking of empty space, view it on your phone along with reports.
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bx-money"></i></div>
              <h4 class="title"><a href="">Secure Payment</a></h4>
              <p class="description">Online payment is secure and receipt will be sent to the email address of customer.
              </p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bx-mail-send"></i></div>
              <h4 class="title"><a href="">Multi-factor authentication</a></h4>
              <p class="description">Secure login through OTP sent to the mobile number as well as email ID of
                customer.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bx-list-check"></i></div>
              <h4 class="title"><a href="">Waiting List</a></h4>
              <p class="description">Shows the live count of people before you waiting for a parking slot</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex " data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bx-body"></i></div>
              <h4 class="title"><a href="">Admin Monitoring</a></h4>
              <p class="description">All the slots are monitored by an admin; no chance for any error </p>
            </div>
          </div>

        </div>
      </div>
    </section><!-- End Services Section -->

    <!-- ======= Why Us Section ======= -->
    <section class="why-us section-bg" data-aos="fade-up" date-aos-delay="200">
      <div class="container">

        <div class="row">
          <div class="col-md-6 video-box">
            <img src="assets/img/why-us.jpg" class="img-fluid" alt="">
            <a href="https://youtu.be/eTCiAFOvElU" class="venobox play-btn mb-4" data-vbtype="video"
              data-autoplay="true"></a>
          </div>

          <div class="col-lg-6 d-flex flex-column justify-content-center p-5">

            <div class="icon-box">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">Access Control System</a></h4>
              <p class="description">Parking passes integrated with access control system - boom barriers, biometrics,
                etc. </p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-fullscreen"></i></div>
              <h4 class="title"><a href="">Live slot display</a></h4>
              <p class="description">Display empty slot info such as floor and bay on LED screens in the parking bay and
                on app.</p>
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Features Section ======= -->
    <section class="features">
      <div class="container">

        <div class="section-title">
          <h2>Process</h2>
          <p>Follow the steps mentioned below to book a slot atleast 2 hours early. </p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="assets/img/features-1.gif" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-4">
            <h3><b>STEP 1</b> - Make an account.</h3>
            <p class="font-italic" style="text-align: justify;">
              If account already exists, login directly. Else click on the signup button and make an account. Fill in
              all the
              details required. An OTP will be sent to your registered mobile number and email address.
            </p>


            <p style="text-align: justify;">
              You will then be redirected to the login page. Fill in the email address and password. Before each
              login you will be sent an OTP on the registered mobile number.
            </p>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/features-2.png" class="img-fluid" style="border: 3px solid black" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3><b>STEP 2</b> - Book a slot</h3>
            <p class="font-italic" style="text-align: justify;">
              Select the city, location, date, time, duration and vehicle type of your choice
            </p>
            <p style="text-align: justify;">
              If a slot is available you will be redirected to the payment page, else you will be shown the waitlist.
            </p>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="assets/img/features-3.gif" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5">
            <h3><b>STEP 3</b> - Make payment</h3>
            <p style="text-align: justify;">You can choose from a variety of options to pay for the parking such as Net
              Banking, Credit/Debit Card,
              Online Wallets and many more</p>
            <ul>
              <li><i class="icofont-check"></i> Secure gateway</li>
              <li><i class="icofont-check"></i> Receipt will be sent to registered email ID</li>

            </ul>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="assets/img/features-5.gif" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3><b>STEP 4</b> - Ready to Park</h3>
            <p class="font-italic" style="text-align: justify;">
              QR code on receipt will be scanned on arrival at the parking loft. Once scanned you will be guided to the
              selected parking
            </p>
            <p style="text-align: justify;">
              While exiting you will again be required to show the receipt. QR code will be scanned again and a message
              will be sent denoting your parking session has ended.
            </p>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">



    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
             <li><i class="bx bx-chevron-right"></i> <a href="index1.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="about1.jsp">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services1.jsp">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p style="text-align: justify;">
              <strong>Head Office Address: </strong>10th Floor, Godrej BKC Plot - C, "G" Block, BKC, Bandra East,
              Mumbai, Maharashtra 400051.<br><br>
              <strong>Phone:</strong> +91 8879217401<br>
              <strong>Email:</strong> parkitservices123@gmail.com<br>
            </p>

          </div>

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>About Park It</h3>
            <p style="text-align: justify;">Park It aims at making the process of parking a car hassle free. No more
              searching for a parking spot.
              Pre-book the slot and location you like with secure payment and authentication.</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 footer-info">
            <img src="assets/img/logo.png" style="margin-top: 65px;" alt="" class="img-fluid">
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Swati Singhvi</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>