<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>

<%
    String orderid  = (String)session.getAttribute("ord");
    String custid = (String)session.getAttribute("cust");
    String fullName = (String)session.getAttribute("fullName");
    String vehicleNo = (String)session.getAttribute("vehicleNo");
    String city = (String)session.getAttribute("city");
    String location = (String)session.getAttribute("location");
    String date = (String)session.getAttribute("p_date");
    String time = (String)session.getAttribute("p_time");
    String duration = (String)session.getAttribute("duration"); 
    String vehicleType = (String)session.getAttribute("vehicleType");
    String amount  = (String)session.getAttribute("amount");
    String waitlist = "No";
    String paid_status = "Paid";
    String status = "Open";
    String[] str = time.split(":");
    int hr = Integer.parseInt(str[0]);
    //int min = Integer.parseInt(str[1]);
    int endhr = hr+Integer.parseInt(duration);
    if(endhr>23){
    	endhr-=24;
    }
    int in_time = Integer.parseInt(str[0]+str[1]);
    int out_time= Integer.parseInt(endhr+str[1]);
    int dur = Integer.parseInt(duration);
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","");
        PreparedStatement ps1 = conn.prepareStatement("select * from slots where location='" + location + "' and city='"+city+"'");
        ResultSet rst = ps1.executeQuery();
        rst.last();
        int k=rst.getRow();      
        if(k!=0){
            PreparedStatement ps2 = conn.prepareStatement("set @autoid :=0;");
            PreparedStatement ps3 = conn.prepareStatement("update parking set id = @autoid := (@autoid+1);");
            PreparedStatement ps4 = conn.prepareStatement("alter table parking Auto_Increment = 1;");
            ps2.executeQuery();
            ps3.executeUpdate();
            ps4.executeUpdate();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO parking (orderid, custid, fullName, vehicle_no, city, location, locationType, date, in_time, duration, out_time,vehicleType, amount, waitlist, paid_status, status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,orderid);
            ps.setString(2,custid);
            ps.setString(3,fullName);
            ps.setString(4,vehicleNo);
            ps.setString(5,city);
            ps.setString(6,location);
            ps.setString(7,rst.getString("locationType"));
            ps.setString(8,date);
            ps.setInt(9,in_time);
            ps.setInt(10,dur);
            ps.setInt(11,out_time);
            ps.setString(12,vehicleType);
            ps.setString(13,amount);
            ps.setString(14,waitlist);
            ps.setString(15,paid_status);
            ps.setString(16,status);
            int x = ps.executeUpdate();
            if(x>0){
              	
                response.sendRedirect("mailJSP.jsp");
            }
            else{
    %>
                <script> 
                    alert("Error Occurred! Please try again later.");
                    window.location.href = "book.jsp";
                </script>
    <%    
            }
        }
        else {
%>

            <script>
                alert("Failed");
                window.location.href = "book.jsp";
            </script>
<%
        }
    }
        
    catch(Exception e){
        out.println(e);
    }
%>
