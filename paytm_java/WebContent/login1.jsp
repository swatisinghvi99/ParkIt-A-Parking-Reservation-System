<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Park It - Login</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <link href="assets/img/car.png" rel="icon">
    <link href="assets/img/car.png" rel="apple-touch-icon">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
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

    <header id="header" class="fixed-top ">
        <div class="container">
            <div class="logo float-left">
                <a href="index1.jsp"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
            </div>

            <nav class="nav-menu float-right d-none d-lg-block">
                <ul>
                    <li><a href="index1.jsp">Home</a></li>
                    <li><a href="about1.jsp">About Us</a></li>
                    <li><a href="services1.jsp">Services</a></li>
                    <li><a href="team1.jsp">Partners</a></li>
                    <li><a href="contact1.jsp">Contact Us</a></li>
                    <li class="active"><a href="blog1.jsp">Login/Sign Up</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main id="main">     
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Log In</h2>

                    <ol>
                        <li><a href="index1.jsp">Home</a></li>
                        <li>Log In</li>
                    </ol>
                </div>

            </div>
        </section>

        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <h5 class="card-title text-center">Log In</h5>
                            <form id="form" name="form" class="form-signin" action="<%=request.getContextPath()%>/login" method="post">
                                <div class="form-label-group">
                                    <input type="email" id="email" class="form-control" name="email"
                                        placeholder="Email address" required autofocus>
                                    <label for="email">Email address</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="password" id="password" class="form-control" name="password" placeholder="Password" required>
                                    <label for="password">Password</label>
                                </div>

                                <div class="custom-control custom-checkbox mb-3">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">Remember password</label>
                                </div>
                                <button class="btn btn-lg btn-block text-uppercase"
                                    style="background-color: #1E4356; color: white;" type="submit">Sign
                                    in</button>
                            </form>
                            <hr>
                            <div class="text-center"><a class="small" href="forgot-password1.jsp">Forgot Password?</a>
                            </div>
                            <div class="text-center"><a class="small" href="blog1.jsp">Create an Account!</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

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
                            <strong>Head Office Address: </strong>10th Floor, Godrej BKC Plot - C, "G" Block, BKC,
                            Bandra East, Mumbai, Maharashtra 400051.<br><br>
                            <strong>Phone:</strong> +91 8879217401<br>
                            <strong>Email:</strong> parkitservices123@gmail.com<br>
                        </p>

                    </div>

                    <div class="col-lg-3 col-md-6 footer-info">
                        <h3>About Park It</h3>
                        <p style="text-align: justify;">Park It aims at making the process of parking a car hassle free.
                            No more
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
    <script src="assets/js/main.js"></script>

</body>

</html>