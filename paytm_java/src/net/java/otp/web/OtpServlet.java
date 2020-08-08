package net.java.otp.web;

import java.io.*;
import java.util.*;
import java.net.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/otp")
public class OtpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	String fullName=request.getParameter("fullName");
    	String email=request.getParameter("email");
    	String mobile=request.getParameter("mobile");
    	String password=request.getParameter("password");
    	session.setAttribute("fullName",fullName);
    	session.setAttribute("email",email);
    	session.setAttribute("mobile",mobile);
    	session.setAttribute("password",password);

    	try {
    				// Construct data
    	            Random rand = new Random();
    				String apiKey = "apikey=" + "khW5nHqtZjM-glVJ0uQRqxqQ8bFrMcU2vpDFM11srT";
    	           	int otp=rand.nextInt((9999-100)+1)+10;
    	            String text = "Your Park It OTP is: "+otp+".\nNote: Please DO NOT SHARE this OTP with anyone.";
    	           	String message="&message="+ text;      
    				String sender = "&sender=" + "TXTLCL";
    				String numbers = "&numbers=" + mobile;
    				session.setAttribute("otp",otp);
    				// Send data
    				HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
    				String data = apiKey + numbers + message + sender;
    				conn.setDoOutput(true);
    				conn.setRequestMethod("POST");
    				conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
    				conn.getOutputStream().write(data.getBytes("UTF-8"));
    				final StringBuffer stringBuffer;
    				BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
    	                    try{
    	                        stringBuffer = new StringBuffer();
    	                        String line;
    	                        while ((line = rd.readLine()) != null) {
    	                            stringBuffer.append(line);
    	                        }
    	                        stringBuffer.toString();
    	                    }
    	                    finally{
    	                    	rd.close();
    	                    }
    				
    	                    response.sendRedirect("otp_process.jsp");   	   
    			}
                                 
         catch (Exception e) {
            e.printStackTrace();
        }      
    }
}