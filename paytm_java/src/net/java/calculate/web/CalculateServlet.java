package net.java.calculate.web;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/calculate")
public class CalculateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	
    	String vehicleType = request.getParameter("vehicleType"); 
        String duration = (String)session.getAttribute("duration"); 
        String vehicleNo=request.getParameter("vehicleNo");
            
            
           
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","");
            PreparedStatement ps = conn.prepareStatement("select * from rate_details where vehicle='" + vehicleType + "'");
            ResultSet rst = ps.executeQuery();
            rst.last();
            int k=rst.getRow();      
            if(k!=0){
                 
                int rate = Integer.parseInt(rst.getString("rate"));
                int dur = Integer.parseInt(duration);
                double total = rate*dur;
                double cgst = 0.09*total;
                double sgst = 0.09*total;
                double amount = total+cgst+sgst;
                
                session.setAttribute("price", String.format("%.2f",total));
                session.setAttribute("cgst", String.format("%.2f",cgst));
                session.setAttribute("sgst", String.format("%.2f",sgst));
                session.setAttribute("amount", String.format("%.2f",amount));
                session.setAttribute("vehicleNo",vehicleNo);
                session.setAttribute("vehicleType",vehicleType);
                response.sendRedirect("book5.jsp");
            }
            else {
            	response.sendRedirect("book.jsp");
            }

            
        }
                                 
         catch (Exception e) {
            e.printStackTrace();
        }      
    }
}
