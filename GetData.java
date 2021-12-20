package com.nit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nit.beans.VehicleBean;
import com.nit.service.UserService;

/**
 * Servlet implementation class GetData
 */
public class GetData extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().print(req.getParameter("userId"));
		UserService service=new UserService();
		VehicleBean vh=service.getEntireData(req.getParameter("userId"));
	req.getSession().setAttribute("entireData",vh);
	RequestDispatcher rd=req.getRequestDispatcher("ShowUserData.jsp");
	rd.forward(req, resp);
	}

}
