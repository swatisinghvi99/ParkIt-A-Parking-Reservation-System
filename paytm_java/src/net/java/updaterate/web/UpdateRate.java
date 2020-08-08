package net.java.updaterate.web;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updaterate")
public class UpdateRate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	String driverName = "com.mysql.jdbc.Driver";
    	String url = "jdbc:mysql://localhost:3306/parking";
    	String user = "root";
    	String psw = "";
    	
    	String id = request.getParameter("id");
        String vehicle = request.getParameter("vehicle");
        String rateType = request.getParameter("rateType");
        String rate = request.getParameter("rate");
        String status = request.getParameter("status");

        if(id != null)
        {
            Connection con = null;
            PreparedStatement ps = null;
            try
            {
                Class.forName(driverName);
                con = DriverManager.getConnection(url,user,psw);
                String sql="Update rate_details set id=?,vehicle=?,rateType=?,rate=?,status=? where id="+id;
                ps = con.prepareStatement(sql);
                ps.setString(1, id);
                ps.setString(2,vehicle);
                ps.setString(3,rateType);
                ps.setString(4,rate);
                ps.setString(5,status);
                int i = ps.executeUpdate();
                if(i > 0)
                {
                	response.sendRedirect("managerates.jsp");
                }
                else{
                	response.sendRedirect("addrate.jsp");
                }
            }
                                 
		         catch (Exception e) {
		            e.printStackTrace();
		        }    
    	    }
    	    else {
    	    	response.sendRedirect("addrate.jsp");
    	    }
    }
}
