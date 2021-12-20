package com.nit.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nit.beans.User;
import com.nit.service.UserService;


public class RegistrationController extends HttpServlet {
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {

	/*Map map=req.getParameterMap();
	User user=new User();
	
	try {
		BeanUtils.populate(user,map);
	} catch (IllegalAccessException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (InvocationTargetException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	UserService service=new UserService();
	int i=service.register(user);
	if(i>0)
	{
		resp.sendRedirect("login.jsp?status=Successfully Registered");
	}
	else
	{
		resp.sendRedirect("registration.jsp?status="+req.getParameter("userName")+" already Registered");
	}*/
	
}
	

}
