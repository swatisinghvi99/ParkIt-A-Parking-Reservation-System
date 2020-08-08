package net.java.deleteloc.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.java.delete.bean.DeleteBean;
import net.java.deleteloc.database.DeletelocDao;


@WebServlet("/deleteloc")
public class DeletelocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DeletelocDao deletelocDao;

	public void init() {
		deletelocDao = new DeletelocDao();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		 DeleteBean deleteBean = new DeleteBean();
		 deleteBean.setId(id);
		 
		 try {	        		        		
			 	deletelocDao.validate(deleteBean);
	            response.sendRedirect("manageslots.jsp");	            		           	            	
	            
	        } catch (Exception e) {
	           
	            e.printStackTrace();
	        }
	       
	}

}