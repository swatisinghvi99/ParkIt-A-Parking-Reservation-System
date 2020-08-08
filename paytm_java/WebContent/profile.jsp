<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
   
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "parking";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

%>

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
      <!-- Custom styles for this page -->
  <link href="assets_admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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
                    <li><a href="book.jsp">Book Now</a></li>
                    <li class="drop-down"><a href="">Hello <%=session.getAttribute("fullName") %> </a>
                    <ul>
                        <li class="active"><a href="profile.jsp" >View Profile</a></li>
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
                    <h2>Profile</h2>
                    <ol>
                        <li><a href="index.jsp">Home</a></li>
                        <li>Profile</li>
                    </ol>
                </div>
            </div>
        </section><!-- End Blog Section -->
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-12 mx-auto">                  
                    <div class="card shadow my-5 mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Previous Bookings</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Order ID</th>
                                            <th>Customer ID</th>
                                            <th>Full Name</th>
                                            <th>Number Plate</th>
                                            <th>City</th>
                                            <th>Location</th>
                                            <th>Location Type</th>
                                            <th>Date</th>
                                            <th>In Time</th>
                                            <th>Duration</th>
                                            <th>Out Time</th>
                                            <th>Vehicle Type</th>
                                            <th>Amount</th>
                                            <th>Waitlist</th>
                                            <th>Amount Status</th>
                                            <th>Booking Status</th>
                                        </tr>
                                    </thead>
                            
                                    <tbody>
                                    <%
                                        try{
                                        Connection connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                                        Statement statement=connection.createStatement();
                                        String sql ="select * from parking where fullName='"+session.getAttribute("fullName")+"'";
                                        ResultSet resultSet = statement.executeQuery(sql);
                                        while(resultSet.next()){
                                        %>
                                        <tr>
                                            <td><%=resultSet.getString("id") %></td>
                                            <td><%=resultSet.getString("orderid") %></td>
                                            <td><%=resultSet.getString("custid") %></td>
                                            <td><%=resultSet.getString("fullName") %></td>
                                            <td><%=resultSet.getString("vehicle_no") %></td>
                                            <td><%=resultSet.getString("city") %></td>
                                            <td><%=resultSet.getString("location") %></td>
                                            <td><%=resultSet.getString("locationType") %></td>
                                            <td><%=resultSet.getString("date") %></td>
                                            <td><%=resultSet.getString("in_time") %></td>
                                            <td><%=resultSet.getString("duration") %></td>
                                            <td><%=resultSet.getString("out_time") %></td>
                                            <td><%=resultSet.getString("vehicleType") %></td>
                                            <td><%=resultSet.getString("amount") %></td>
                                            <td><%=resultSet.getString("waitlist") %></td>
                                            <td><%=resultSet.getString("paid_status") %></td>
                                            <td><%=resultSet.getString("status") %></td>
                                        </tr>
                                        <%
                                        }
                                        connection.close();
                                        } catch (Exception e) {
                                        e.printStackTrace();
                                        }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-12 mx-auto">                  
                    <div class="card shadow my-5 mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Waitlisted Bookings</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Order ID</th>
                                            <th>Customer ID</th>
                                            <th>Full Name</th>
                                            <th>Number Plate</th>
                                            <th>City</th>
                                            <th>Location</th>
                                            <th>Location Type</th>
                                            <th>Date</th>
                                            <th>In Time</th>
                                            <th>Duration</th>
                                            <th>Out Time</th>
                                            <th>Vehicle Type</th>
                                            <th>Amount</th>
                                            <th>Waitlist</th>
                                            <th>Amount Status</th>
                                            <th>Booking Status</th>
                                        </tr>
                                    </thead>
                            
                                    <tbody>
                                    <%
                                        try{
                                        Connection connection2 = DriverManager.getConnection(connectionUrl+database, userid, password);
                                        Statement statement1=connection2.createStatement();
                                        String sql2 ="select * from waitlist where fullName='"+session.getAttribute("fullName")+"'";
                                        ResultSet rst = statement1.executeQuery(sql2);
                                        while(rst.next()){
                                        %>
                                        <tr>
                                            <td><%=rst.getString("id") %></td>
                                            <td><%=rst.getString("orderid") %></td>
                                            <td><%=rst.getString("custid") %></td>
                                            <td><%=rst.getString("fullName") %></td>
                                            <td><%=rst.getString("vehicle_no") %></td>
                                            <td><%=rst.getString("city") %></td>
                                            <td><%=rst.getString("location") %></td>
                                            <td><%=rst.getString("locationType") %></td>
                                            <td><%=rst.getString("date") %></td>
                                            <td><%=rst.getString("in_time") %></td>
                                            <td><%=rst.getString("duration") %></td>
                                            <td><%=rst.getString("out_time") %></td>
                                            <td><%=rst.getString("vehicleType") %></td>
                                            <td><%=rst.getString("amount") %></td>
                                            <td><%=rst.getString("waitlist") %></td>
                                            <td><%=rst.getString("paid_status") %></td>
                                            <td><%=rst.getString("status") %></td>
                                        </tr>
                                        <%
                                        }
                                        connection2.close();
                                        } catch (Exception e) {
                                        e.printStackTrace();
                                        }
                                        %>
                                    </tbody>
                                </table>
                            </div>
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





  <!-- Custom scripts for all pages-->
  <script src="assets_admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="assets_admin/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="assets_admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="assets_admin/js/demo/datatables-demo.js"></script>
    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

</body>

</html>