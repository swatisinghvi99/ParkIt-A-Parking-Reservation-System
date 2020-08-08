package net.java.rate.web;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/rate")
public class RateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
        String vehicle = request.getParameter("vehicle");
        String rateType = request.getParameter("rateType");
        String rate = request.getParameter("rate");
        String status = request.getParameter("status");

        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","");
            PreparedStatement ps2 = conn.prepareStatement("SELECT * FROM rate_details where vehicle='" + vehicle + "' and rateType='"+rateType+"'");
            ResultSet rst1 = ps2.executeQuery();
            int count=0;
            while(rst1.next()){
                count++;
            }
            if(count==0){
                PreparedStatement ps3 = conn.prepareStatement("set @autoid :=0;");
                PreparedStatement ps4 = conn.prepareStatement("update rate_details set id = @autoid := (@autoid+1);");
                PreparedStatement ps5 = conn.prepareStatement("alter table rate_details Auto_Increment = 1;");
                ps3.executeQuery();
                ps4.executeUpdate();
                ps5.executeUpdate();
                PreparedStatement ps = conn.prepareStatement("INSERT INTO rate_details (vehicle, rateType, rate, status) values(?,?,?,?)");
                ps.setString(1,vehicle);
                ps.setString(2,rateType);
                ps.setString(3,rate);
                ps.setString(4,status);
                int x = ps.executeUpdate();
                if(x>0){
                	
                	response.sendRedirect("managerates.jsp");
        
                }
                else{
                	response.sendRedirect("addrate.jsp");
                }
            }
            else{
            	response.sendRedirect("addrate.jsp");
            }
        }
                                 
         catch (Exception e) {
            e.printStackTrace();
        }      
    }
}
