package net.java.deleterate.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.java.delete.bean.DeleteBean;
import net.java.deleterate.database.DeleterateDao;


@WebServlet("/deleterate")
public class DeleterateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DeleterateDao deleterateDao;

	public void init() {
		deleterateDao = new DeleterateDao();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		 DeleteBean deleteBean = new DeleteBean();
		 deleteBean.setId(id);
		 
		 try {
	        	
	        		
			 			deleterateDao.validate(deleteBean);
	            		response.sendRedirect("managerates.jsp");
	            	
	            
	            	
	            
	        } catch (Exception e) {
	           
	            e.printStackTrace();
	        }
	       
	}

}
