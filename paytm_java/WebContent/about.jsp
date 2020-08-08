<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Park It - About Us</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/car.png" rel="icon">
    <link href="assets/img/car.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
<% 
 response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
 %>
<%
    	if(session.getAttribute("email")==null){
    		response.sendRedirect("login1.jsp");
    	}
 %>
    
    <header id="header" class="fixed-top ">
        <div class="container">

            <div class="logo float-left">
                <a href="index.jsp"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
            </div>
            
            <nav class="nav-menu float-right d-none d-lg-block">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active"><a href="about.jsp">About Us</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="team.jsp">Partners</a></li>


                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li><a href="book.jsp">Book Now</a></li>
                    <li class="drop-down"><a href="">Hello <%=session.getAttribute("fullName") %> </a>
                    <ul>
                        <li><a href="profile.jsp">View Profile</a></li>
                        <li><a href="<%=request.getContextPath()%>/logout">Sign Out</a></li>
              
                    </ul>
                    </li>
                </ul>
            </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>About Us</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>About Us</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= About Section ======= -->
    <section class="about" data-aos="fade-up">
      <div class="container">

        <div class="row">
          <div class="col-lg-6">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">

            <h3>About <strong>PARK IT</strong></h3>
            <p class="font-italic">
              Founded in 2015 with over 100 clients and about 5000+ customers, Park It strives to make car parking an
              easy task for
              people all over India.
            </p>
            <ul>
              <li><i class="icofont-check-circled"></i> Save up to 50% off drive-up rates.</li>
              <li><i class="icofont-check-circled"></i> Book your space in advance.</li>
              <li><i class="icofont-check-circled"></i> Get a parking pass you can access on your phone.</li>
            </ul>
            <p>
              Most parking spaces are manually managed. This makes managing
              multilevel car parking chaotic - a headache for parking lot owners and providers. <i>Park It</i>
              digitizes the end-to-end management of parking spaces and all parking processes related to visitors,
              vehicles, and payments. It eliminates manual monitoring and tracking of vehicles and makes allocation of
              slots easy.
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Facts Section ======= -->
    <section class="facts section-bg" data-aos="fade-up">
      <div class="container">

        <div class="row counters">

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">152</span>
            <p>Clients</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">5,256</span>
            <p>Customers</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">1,463</span>
            <p>Employees</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">15</span>
            <p>Offices all over India</p>
          </div>

        </div>

      </div>
    </section><!-- End Facts Section -->


    <!-- ======= Tetstimonials Section ======= -->
    <section class="testimonials" data-aos="fade-up">
      <div class="container">

        <div class="section-title">
          <h2>Testimonials</h2>
          <p>Here's what our customers had to say about Park It</p>
        </div>

        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
            <h3>John Doe</h3>
            <h4>Ceo &amp; Founder</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              "I have one meeting after another at different locations. Looking for a parking is a hassle. Thanks to
              Park
              It, I can now pre-book the parking for my next location while sitting in my office. It has really made my
              life easy!"
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
            <h3>Jane Doe</h3>
            <h4>Designer</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              "I have to carry a lot of designs in my car and time is always a constraint. Looking for a parking is so
              stressful. Thank you Park It for making it easy!"
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
            <h3>Jena William</h3>
            <h4>Store Owner</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              "I wish I found out about Park It sooner. I don't have to reach early just to look for a parking now. Has
              made my day to day tasks much easier."
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>



          <div class="testimonial-item">
            <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
            <h3>John Larson</h3>
            <h4>Entrepreneur</h4>
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              "Thank you Park It. So cheap and so easy to use! Truly a great idea."
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
          </div>

        </div>

      </div>
    </section><!-- End Ttstimonials Section -->

  </main><!-- End #main -->

  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="about.jsp">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">Services</a></li>
	<li><i class="bx bx-chevron-right"></i> <a href="team.jsp">Partners</a></li>
	<li><i class="bx bx-chevron-right"></i> <a href="contact.jsp">Contact Us</a></li>
             
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
  </footer>

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