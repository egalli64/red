package com.example.red.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewReservation
 */
@WebServlet("/reservation/new")
public class NewReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String citta =request.getParameter("citta");
		String ristorante= request.getParameter("ristorante");
		String giorno = request.getParameter("giorno");
		String ora =request.getParameter("ora");
		String coperti =request.getParameter("coperti");
		String menu = request.getParameter("menu");
		
		String url;
				
		
		if (citta == null ||ristorante == null || giorno == null || ora == null|| coperti == null || menu == null){
			url = "/welcome.jsp";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("citta", citta);
			session.setAttribute("giorno", giorno);
			session.setAttribute("ora", ora);
			session.setAttribute("coperti", coperti);
			session.setAttribute("menu", menu);
			url = "done.jsp";
		}
		request.getRequestDispatcher("done.jsp").forward(request, response);
		
	}
}
	
	

	


