<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Park It - Home</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/car.png" rel="icon">
    <link href="assets/img/car.png" rel="apple-touch-icon">
    <link href="assets_admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap"
        rel="stylesheet">
        <link href="assets_admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="assets_admin/vendor/fontawesome-free/css/fontawesome.min.css" rel="stylesheet" type="text/css">

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

<body onload="validDate()">

<% 
 response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
%>
<%
    	if(session.getAttribute("email")==null){
    		response.sendRedirect("login1.jsp");
    	}
 %>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top ">
        <div class="container">

            <div class="logo float-left">
                <a href="index.jsp"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
            </div>
            
            <nav class="nav-menu float-right d-none d-lg-block">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="team.jsp">Partners</a></li>


                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li class="active"><a href="book.jsp">Book Now</a></li>
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

        <!-- ======= Blog Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Book Now</h2>

                    <ol>
                        <li><a href="index.jsp">Home</a></li>
                        <li>Book Now</li>
                    </ol>
                </div>
            </div>
        </section>
         <%
            String location = request.getParameter("location"); 
            session.setAttribute("location",location); 
         %>
         <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body">
                            <h5 class="card-title text-center">When would you like to park?</h5>
                            <form class="form-signin" action="<%=request.getContextPath()%>/avail" method="post">
                                <div>
                                    <label for="p_date">Select Date: </label>
                                    <input type="date" id="p_date" class="form-control" name="p_date" onchange="check()"
                                        required autofocus>            
                                </div>
                                <br>
                                <div>
                                    <label for="p_time">Select Time: </label>
                                    <input type="time" id="p_time" class="form-control" name="p_time" onchange="checkDate()" disabled="disabled" required>
                                    
                                </div>
                                <br>
                               
                                <div class="form-label-group">
                                    <input type="number" id="duration" class="form-control" name="duration"
                                        placeholder="Enter Duration" oninput="checkDuration(this)" required autofocus>
                                    <label for="duration">Enter Duration (in hrs)</label>
                                </div>
                             
                                <button class="btn btn-lg btn-block text-uppercase"
                                    style="background-color: #1E4356; color: white;" type="submit">Look for parking <i class="fas fa-fw fa-arrow-alt-circle-right" ></i></button>
                            </form>
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
                            <strong>Head Office Address: </strong>10th Floor, Godrej BKC Plot - C, "G" Block, BKC,
                            Bandra East,
                            Mumbai, Maharashtra 400051.<br><br>
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

<script>
    function validDate(){
        var today = new Date().toISOString().split('T')[0];
        var nextWeekDate = new Date(new Date().getTime() + 6 * 24 * 60 * 60 * 1000).toISOString().split('T')[0]
        document.getElementsByName("p_date")[0].setAttribute('min', today);
        document.getElementsByName("p_date")[0].setAttribute('max', nextWeekDate);
    }
</script>

<script>
    function check() {
        if(document.getElementById('p_date').value != "")
            document.getElementById('p_time').disabled = false;
        else
            document.getElementById('p_time').disabled = true;
    }
</script>

<script>
    function checkDate(){
        var date =  document.getElementById('p_date').value; 
        var time =  document.getElementById('p_time').value; 
        arr = time.split(':');
        hour1 = parseInt(arr[0]);
        min1 = parseInt(arr[1]);
     
        var inpDate = new Date(date); 
        var currDate = new Date(); 
        
        hour2 = currDate.getHours();
        

            if(inpDate.setHours(0, 0, 0, 0) ==  currDate.setHours(0, 0, 0, 0)) 
            { 
                if(hour1 <= hour2 + 2){
                    alert("Time should be more than 2 hours from now. Please enter a different time"); 
                    window.location.href = "book3.jsp";
                }
            }  
             
    }

</script>

<script>
 function checkDuration(input) {
   if (input.value <= 0 ) {
     input.setCustomValidity('Duration must be greater than zero');
   } else {
     // input is fine -- reset the error message
     input.setCustomValidity('');
   }
 }
</script>

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