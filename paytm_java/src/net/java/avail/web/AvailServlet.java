package net.java.avail.web;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/avail")
public class AvailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String city = (String)session.getAttribute("city");
		String location = (String)session.getAttribute("location");
		String p_date=request.getParameter("p_date");
		String time=request.getParameter("p_time");
		String duration=request.getParameter("duration");
		String[] str = time.split(":");
	    int hr = Integer.parseInt(str[0]);
	    int dur = Integer.parseInt(duration);
	    int endhr = hr+dur;
	    if(endhr>23){
	    	endhr-=24;
	    }
	    int in_time = Integer.parseInt(str[0]+str[1]);
	    int out_time= Integer.parseInt(endhr+str[1]);
	    
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","");
			PreparedStatement ps = conn.prepareStatement("select * from parking where (city = '"+city+"' AND location = '"+location+"' AND date = '"+p_date+"') AND (in_time="+in_time+" OR ("+in_time+" BETWEEN in_time AND out_time))");
			ResultSet rst = ps.executeQuery();
			PreparedStatement ps2 = conn.prepareStatement("select * from slots where location='"+location+"' AND city='"+city+"'");
			ResultSet rst2 = ps2.executeQuery(); 
			rst.last();
			int k = rst.getRow();
			
			
			rst2.last();
			int t = rst2.getRow();
			if(t!=0){
				int total = Integer.parseInt(rst2.getString("total_parking"));
				
				
				if(k<total){
					session.setAttribute("p_date",p_date);
					session.setAttribute("p_time",time);
					session.setAttribute("duration",duration);
					session.setAttribute("out_time",out_time);
					response.sendRedirect("book4.jsp");			
				}
				else{
					session.setAttribute("p_date",p_date);
					session.setAttribute("p_time",time);
					session.setAttribute("duration",duration);
					session.setAttribute("out_time",out_time);
					response.sendRedirect("waitlist.jsp");
				}
			}
			else{
				response.sendRedirect("book.jsp");
			}
			
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}