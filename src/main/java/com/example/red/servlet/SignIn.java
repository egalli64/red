package com.example.red.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/start/signIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String password = request.getParameter("password");

		String url;
		if (nome == null || cognome == null || username == null || email == null && telefono == null || password == null
				|| password.isBlank()) {
			url = "/signin.html";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			url = "welcome.jsp";
		}
		request.setAttribute("username", username);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
