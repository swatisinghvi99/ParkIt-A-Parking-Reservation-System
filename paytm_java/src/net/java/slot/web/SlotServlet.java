package net.java.slot.web;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/slot")
public class SlotServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	String city = request.getParameter("city");
        String location = request.getParameter("location");
        String locationType = request.getParameter("locationType");
        String levels = request.getParameter("levels");
        String parkings = request.getParameter("parkings");
        String pstatus = request.getParameter("pstatus");
        int total_parking = Integer.parseInt(levels)*Integer.parseInt(parkings);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","");
            PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM slots where location='" + location + "' and city='"+city+"'");
            ResultSet rst1 = ps2.executeQuery();
                        
            int count=0;
            
            
            while(rst1.next()){
                count++;
            }
            
            if(count==0){
                PreparedStatement ps3 = conn.prepareStatement("set @autoid :=0;");
                PreparedStatement ps4 = conn.prepareStatement("update slots set id = @autoid := (@autoid+1);");
                PreparedStatement ps5 = conn.prepareStatement("alter table slots Auto_Increment = 1;");
                ps3.executeQuery();
                ps4.executeUpdate();
                ps5.executeUpdate();
                PreparedStatement ps = conn.prepareStatement("INSERT INTO slots (city, location, locationType, parking_levels, ppl, total_parking, status) values(?,?,?,?,?,?,?)");
                ps.setString(1,city);
                ps.setString(2,location);
                ps.setString(3,locationType);
                ps.setString(4,levels);
                ps.setString(5,parkings);
                ps.setInt(6,total_parking);               
                ps.setString(7,pstatus);
                int x = ps.executeUpdate();
                if(x>0){
                	response.sendRedirect("manageslots.jsp");
                }
                else{
                	response.sendRedirect("addslot.jsp");   
                }
            }
            else{
            	response.sendRedirect("addslot.jsp");
            }
        }
                                 
         catch (Exception e) {
            e.printStackTrace();
        }      
    }
}
