<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Custom fonts for this template-->
  <link href="assets_admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="assets_admin/vendor/fontawesome-free/css/fontawesome.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="assets_admin/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">
<% 
 response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
 %>
<%
    	if(session.getAttribute("email")==null){
    		response.sendRedirect("login1.jsp");
    	}
 %>
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-dark accordion" style="background: #1e4356;" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminindex.jsp">
        
        <div class="sidebar-brand-text mx-3"><img src="assets/img/logo.png" width="116.91px" height="39.99px" ></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="adminindex.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Add/Manage
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCategory"
          aria-expanded="true" aria-controls="collapseCategory">
          <i class="fas fa-fw fa-shopping-cart" ></i>
          <span>Category</span>
        </a>
        <div id="collapseCategory" class="collapse" aria-labelledby="headingCategory" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            
            <a class="collapse-item" href="addvehicle.jsp">Add Vehicle</a>
            <a class="collapse-item" href="managevehicles.jsp">Manage Vehicles</a>
            
          </div>
        </div>
      </li>
       <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRates"
          aria-expanded="true" aria-controls="collapseRates">
          <i class="fas fa-fw fa-rupee-sign" ></i>
          <span>Rates</span>
        </a>
        <div id="collapseRates" class="collapse" aria-labelledby="headingRates" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            
            <a class="collapse-item active" href="addrate.jsp">Add Rate</a>
            <a class="collapse-item" href="managerates.jsp">Manage Rates</a>
            
          </div>
        </div>
      </li>
      <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
          aria-controls="collapseTwo">
          <i class="fas fa-fw fa-car"></i>
          <span>Parking Locations</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
    
            <a class="collapse-item" href="addslot.jsp">Add Location</a>
            <a class="collapse-item" href="manageslots.jsp">Manage Locations</a>
          </div>
        </div>
      </li>

      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
       View
      </div>
<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-table"></i>
          <span>Database</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="userdata.jsp">User Data</a>
            <a class="collapse-item" href="parkingdata.jsp">Parking Data</a>
            
          </div>
        </div>
      </li>
      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="reports.jsp">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Reports</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">


            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=session.getAttribute("fullName") %></span>
                <img class="img-profile rounded-circle" src="assets_admin/img/user.png">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">              
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Add Rate</h1>
            </div>
             <form id="form" name="form" class="form-signin" action="<%=request.getContextPath()%>/rate" method="post">
                <div class="form-group col-lg-6 mx-0" >
                    <label for="vehicle">Vehicle Type</label>
                    <select name="vehicle" class="custom-select">
                      <option selected>--Select Vehicle Type--</option>
                      <%
                      try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","");
                        PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM vehicle_category");
                        ResultSet rst1 = ps2.executeQuery();
                        
                        while(rst1.next()){
                      %>
                          <option name="vehicle1" id="vehicle1" value="<%=rst1.getString("vehicleType")%>"><%=rst1.getString("vehicleType") %></option>
                      <%
                        }
                      }
                      catch(Exception e){
                        out.println(e);
                      }
                      %>
                    </select>
                </div>
                <div class="form-group col-lg-6 mx-0" >
                    <label for="rateType">Rate Type</label>
                    <select class="custom-select" name="rateType">
                      <option selected>--Select Rate Type--</option>
                      <option value="Hourly" name="rateType" id="rateType1">Hourly</option>
                      <option value="Half-Hourly" name="rateType" id="rateType2">Half-Hourly</option>
                    </select>
                </div>
                <div class="form-group col-lg-6 mx-0" >
                    <label for="rate">Rate</label>
                    <input type="number" name="rate" class="form-control" id="rate" aria-describedby="cost" placeholder="Enter Rate in Rupees">
                </div>
                <div class="form-group col-lg-6 mx-0">
                    <label for="statuss">Status</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status1" value="Active" checked>
                        <label class="form-check-label" for="status1">Active</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status2" value="Inactive">
                        <label class="form-check-label" for="status2">Inactive</label>
                    </div>
                </div>
                
                <input class="btn text-uppercase col-lg-6 mx-0" style="background-color: #1E4356; color: white;"
                  type="submit" value="Add">
            </form>

      </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
             &copy; Copyright <strong><span>Swati Singhvi</span></strong>. All Rights Reserved
          </div>
        </div>
      </footer>
      <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">X</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="<%=request.getContextPath()%>/logout">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="assets_admin/vendor/jquery/jquery.min.js"></script>
  <script src="assets_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="assets_admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="assets_admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="assets_admin/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="assets_admin/js/demo/chart-area-demo.js"></script>
  <script src="assets_admin/js/demo/chart-pie-demo.js"></script>

</body>

</html>