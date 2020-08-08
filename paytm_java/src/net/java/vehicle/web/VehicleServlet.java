package net.java.vehicle.web;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/vehicle")
public class VehicleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	String vehicleType = request.getParameter("vehicleType");
        String vehiclestatus = request.getParameter("vehiclestatus");

        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","");
            PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM vehicle_category where vehicleType='" + vehicleType + "'");
            ResultSet rst1 = ps2.executeQuery();
            int count=0;
            while(rst1.next()){
                count++;
            }
            if(count==0){
                PreparedStatement ps3 = conn.prepareStatement("set @autoid :=0;");
                PreparedStatement ps4 = conn.prepareStatement("update vehicle_category set id = @autoid := (@autoid+1);");
                PreparedStatement ps5 = conn.prepareStatement("alter table vehicle_category Auto_Increment = 1;");
                ps3.executeQuery();
                ps4.executeUpdate();
                ps5.executeUpdate();
                PreparedStatement ps = conn.prepareStatement("INSERT INTO vehicle_category (vehicleType,vehiclestatus) values(?,?);");
                ps.setString(1,vehicleType);
                ps.setString(2,vehiclestatus);
                int x = ps.executeUpdate();
                if(x>0){
                	response.sendRedirect("managevehicles.jsp");
                }
                else{
                	response.sendRedirect("addvehicle.jsp");
                }
            }
            else{
            	response.sendRedirect("addvehicle.jsp");
            }
        }
                                 
         catch (Exception e) {
            e.printStackTrace();
        }      
    }
}