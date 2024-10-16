package com.jsfpmu.app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProcessingServlet
 */
@WebServlet("/ProcessingServlet")
public class ProcessingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String USERNAME = "staff";
	String PASSWORD = "passcode";
	String ADMINISTRATOR = "admin";
	String ADMINISTRATORPASSWORD = "passcode";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProcessingServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String penggunaString = request.getParameter("txtusername");
		String katalaluanString = request.getParameter("txtpassword");

		if (penggunaString.equals("staff")) { // Fixed string comparison
			if (USERNAME.equals(penggunaString) && PASSWORD.equals(katalaluanString)) {

				HttpSession session = request.getSession();
				session.setAttribute("username", penggunaString);
				response.sendRedirect("apply.jsp");
				//request.getRequestDispatcher("apply.jsp").forward(request, response);
			} else {
				request.setAttribute("mesejRalat", "Kata Laluan Atau Nama Pengguna Anda Silap");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} else if (penggunaString.equals("admin")) { // Fixed string comparison
			if (ADMINISTRATOR.equals(penggunaString) && ADMINISTRATORPASSWORD.equals(katalaluanString)) {

				HttpSession session = request.getSession();
				session.setAttribute("username", penggunaString);
				response.sendRedirect("booking.jsp");
				//request.getRequestDispatcher("booking.jsp").forward(request, response);
			} else {
				request.setAttribute("mesejRalat", "Kata Laluan Atau Nama Pengguna Anda Silap");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}

	}

}
