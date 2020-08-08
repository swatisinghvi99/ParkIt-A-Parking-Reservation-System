package net.java.moveuser.web;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/moveuser")
public class MoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/parking";
		String user = "root";
		String psw = "";
		
		    String id = request.getParameter("id");
		    String name = request.getParameter("name");
		    
		    if(id != null)
		    {
		        Connection con = null;
		        PreparedStatement ps = null;
		        PreparedStatement ps2 = null;
		        try
		        {
		            Class.forName(driverName);
		            con = DriverManager.getConnection(url,user,psw);
		            String sql3 = "UPDATE waitlist SET waitlist='No',status='Open' WHERE id="+id;
		            PreparedStatement ps6 = con.prepareStatement(sql3);
		            ps6.executeUpdate();
		            PreparedStatement ps7 = con.prepareStatement("set @autoid :=0;");
		            PreparedStatement ps8 = con.prepareStatement("update parking set id = @autoid := (@autoid+1);");
		            PreparedStatement ps9 = con.prepareStatement("alter table parking Auto_Increment = 1;");
		            ps7.executeQuery();
		            ps8.executeUpdate();
		            ps9.executeUpdate();
		            PreparedStatement ps10 = con.prepareStatement("select * from registration where fullName='" + name + "'");
		            ResultSet rst2 = ps10.executeQuery();
		            rst2.last();
		            int l=rst2.getRow();
		            if(l!=0){
		            	HttpSession session = request.getSession();
		                String val = rst2.getString("email");
		                session.setAttribute("mail", val);
		            }
		            String sql="INSERT INTO parking (orderid, custid, fullName, vehicle_no, city, location, locationType, date, in_time, duration, out_time,vehicleType, amount, waitlist, paid_status, status) SELECT orderid, custid, fullName, vehicle_no, city, location, locationType, date, in_time, duration, out_time, vehicleType, amount, waitlist, paid_status, status FROM waitlist where id="+id;

		            String sql2 = "DELETE FROM waitlist WHERE id = '" + id+"'";
		            
		            ps = con.prepareStatement(sql);
		            ps2 = con.prepareStatement(sql2);
		            int i = ps.executeUpdate();
		            int j = ps2.executeUpdate();
		            PreparedStatement ps3 = con.prepareStatement("set @autoid :=0;");
		            PreparedStatement ps4 = con.prepareStatement("update waitlist set id = @autoid := (@autoid+1);");
		            PreparedStatement ps5 = con.prepareStatement("alter table waitlist Auto_Increment = 1;");
		            ps3.executeQuery();
		            ps4.executeUpdate();
		            ps5.executeUpdate();
		            if(i > 0 && j>0) {
		            	response.sendRedirect("waitclearmail.jsp");
		     
		            }
		            else{
		            	response.sendRedirect("parkingdata.jsp");
		           }
		        }
		        catch (Exception e) {	           
		        	e.printStackTrace();
		        }
		    }
		    else {
    	    	response.sendRedirect("parkingdata.jsp");
    	    }
	       
		}
	}