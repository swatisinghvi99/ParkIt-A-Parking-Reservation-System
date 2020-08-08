package net.java.city.web;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import net.java.city.bean.CityBean;
import net.java.city.database.CityDao;

@WebServlet("/city")
public class CityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CityDao cityDao;

	public void init() {
		cityDao = new CityDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String city = request.getParameter("city");
		
		CityBean cityBean = new CityBean();
		cityBean.setCity(city);
		

		try {
			if (cityDao.validate(cityBean)) {
				
				HttpSession session = request.getSession();
				session.setAttribute("city",city);
	            response.sendRedirect("book2.jsp");
			} 
			else {				
				response.sendRedirect("book.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}