package net.java.updateslot.web;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateslot")
public class UpdateSlot extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	String driverName = "com.mysql.jdbc.Driver";
    	String url = "jdbc:mysql://localhost:3306/parking";
    	String user = "root";
    	String psw = "";
    	
    	    String id = request.getParameter("id");
    	    String city = request.getParameter("city");
    	    String location = request.getParameter("location");
    	    String locationType = request.getParameter("locationType");
    	    String levels = request.getParameter("levels");
    	    String parkings = request.getParameter("parkings");
    	    String pstatus = request.getParameter("pstatus");
    	    int total_parking = Integer.parseInt(levels)*Integer.parseInt(parkings);

    	    if(id != null)
    	    {
    	        Connection con = null;
    	        PreparedStatement ps = null;
    	        try
    	        {
    	            Class.forName(driverName);
    	            con = DriverManager.getConnection(url,user,psw);
    	            String sql="Update slots set id=?,city=?,location=?,locationType=?,parking_levels=?,ppl=?,total_parking=?,status=? where id="+id;
    	            ps = con.prepareStatement(sql);
    	            ps.setString(1, id);
    	            ps.setString(2,city);
    	            ps.setString(3, location);
    	            ps.setString(4, locationType);
    	            ps.setString(5, levels);
    	            ps.setString(6, parkings);
    	            ps.setInt(7,total_parking);
    	            ps.setString(8,pstatus);
    	            int i = ps.executeUpdate();
    	            if(i > 0)
    	            {
    	            	response.sendRedirect("manageslots.jsp");
    	               
    	            }
    	            else{
    	            	response.sendRedirect("addslot.jsp");
    	            }
    	        }
                                 
		         catch (Exception e) {
		            e.printStackTrace();
		        }    
    	    }
    	    else {
    	    	response.sendRedirect("addslot.jsp");
    	    }
    }
}
