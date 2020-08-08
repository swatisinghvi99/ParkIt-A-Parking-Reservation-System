package net.java.registration.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.java.registration.dao.UserDao;
import net.java.registration.model.User;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	HttpSession session = request.getSession();
        String fullName = (String)session.getAttribute("fullName");
        String email = (String)session.getAttribute("email");
        String mobile = (String)session.getAttribute("mobile");
        String password = (String)session.getAttribute("password");
        int otp= (Integer) session.getAttribute("otp");
        String otpvalue=request.getParameter("otpvalue");
        int enterOtp=Integer.parseInt(otpvalue);
        
        User user = new User();
        user.setFullName(fullName);
        user.setEmail(email);
        user.setMobile(mobile);
        user.setPassword(password);
        
        try {
        	if(otp==enterOtp) {
        		if(userDao.validate2(user)==false) {
            		userDao.registerUser(user);
            		response.sendRedirect("login2.jsp");
            	}
            	else {
                	response.sendRedirect("blog1.jsp");
                }
        	}
        	else {
        		response.sendRedirect("blog1.jsp");
        	}
            
            	
            
        } catch (Exception e) {
           
            e.printStackTrace();
        }
       
        
    }
}