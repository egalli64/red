package com.example.red.servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.example.red.dao.CityDao;

/**
 * Servlet implementation class Cities
 */
@WebServlet("/cities")
public class CityReader extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/red")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try (CityDao dao = new CityDao(ds)) {
			request.setAttribute("cities", dao.getAll());
			request.getRequestDispatcher("/test/cities2.jsp").forward(request, response);
		}
		
	}

}
