package net.java.deletevehicle.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.java.delete.bean.DeleteBean;
import net.java.deletevehicle.database.DeletevehicleDao;


@WebServlet("/deletevehicle")
public class DeletevehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DeletevehicleDao deletevehicleDao;

	public void init() {
		deletevehicleDao = new DeletevehicleDao();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		 DeleteBean deleteBean = new DeleteBean();
		 deleteBean.setId(id);
		 
		 try {	        		        		
			 	deletevehicleDao.validate(deleteBean);
	            response.sendRedirect("managevehicles.jsp");
	            		            	            	            
	        } catch (Exception e) {	           
	            e.printStackTrace();
	        }
	       
	}

}