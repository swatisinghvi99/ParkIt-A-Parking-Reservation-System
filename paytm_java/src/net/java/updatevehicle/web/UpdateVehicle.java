package net.java.updatevehicle.web;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatevehicle")
public class UpdateVehicle extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	String driverName = "com.mysql.jdbc.Driver";
    	String url = "jdbc:mysql://localhost:3306/parking";
    	String user = "root";
    	String psw = "";
    	
    	String id = request.getParameter("id");
        String vehicleType = request.getParameter("vehicleType");
        String vehiclestatus = request.getParameter("vehiclestatus");

        if(id != null)
        {
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
                Class.forName(driverName);
                con = DriverManager.getConnection(url,user,psw);
                String sql="Update vehicle_category set id=?,vehicleType=?, vehiclestatus=? where id="+id;
                ps = con.prepareStatement(sql);
                ps.setString(1, id);
                ps.setString(2,vehicleType);
                ps.setString(3,vehiclestatus);
                int i = ps.executeUpdate();
                if(i > 0)
                {
                	response.sendRedirect("managevehicles.jsp");
                }
                else{
                	response.sendRedirect("addvehicle.jsp");
                }
            }
                                 
		         catch (Exception e) {
		            e.printStackTrace();
		        }    
    	    }
    	    else {
    	    	response.sendRedirect("addvehicle.jsp");
    	    }
    }
}
