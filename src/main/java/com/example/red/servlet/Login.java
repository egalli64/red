package com.example.red.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/start/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		String url;
		if (username == null || username.isBlank() || password == null || password.isBlank()) {
			url = "/login.html";
		} else {
			url = "welcome.jsp";
		}
		request.setAttribute("username", username);
		request.getRequestDispatcher(url).forward(request, response);

	}
}
