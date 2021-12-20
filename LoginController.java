package com.nit.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nit.beans.PersonalBean;
import com.nit.beans.User;
import com.nit.beans.VehicleBean;
import com.nit.service.UserService;

public class LoginController extends HttpServlet {
	private String utype = "";
	private String username = "";

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	    System.out.println("login path-------"+new File("").getAbsolutePath());
		
		UserService service = new UserService();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		User rb = new User();
		session.setAttribute("userName", request.getParameter("userName"));
		rb.setUserName(request.getParameter("userName"));
		rb.setPassword(request.getParameter("password"));
		
		String role= service.loginCheck(rb);
		
		String target = "login.jsp?status=Internal Proublem Please Try again!";
		session.setAttribute("uid", request.getParameter("userName"));
		
		if (role.equals("ADMIN")) {
				target = "AdminHome.jsp?status=Welcome " + username;
				session.setAttribute("user", username);
				session.setAttribute("role", role);
		} 
		
		else if (role.equals("USER")) {
			
			
			PersonalBean v=service.getPersonalDetails(request.getParameter("userName"));
			
			request.getSession().setAttribute("userData", v);
			
			target = "UserHome.jsp?status=Welcome " + username;
			session.setAttribute("user", username);
			session.setAttribute("role", role);
		} 
		else {
			target = "login.jsp?status=Invalid username or password";
		}

		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request, response);
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		doGet(request, response);
		out.flush();
		out.close();
	}

}
