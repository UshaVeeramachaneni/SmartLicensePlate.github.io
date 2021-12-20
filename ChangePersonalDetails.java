package com.nit.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.nit.beans.PersonalBean;
import com.nit.service.UserService;


public class ChangePersonalDetails extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserService service=new UserService();
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		PersonalBean p=new PersonalBean();
		try {

			List fileItems = upload.parseRequest(req);
				
		
		
			FileItem address=(FileItem)fileItems.get(0);
			p.setAddress(address.getString());
		
			
			
			FileItem phone=(FileItem)fileItems.get(1);
			p.setPhone(phone.getString());
		
			
			
			FileItem email=(FileItem)fileItems.get(2);
			p.setEmail(email.getString());
		
			
			
		
			
			
			FileItem image=(FileItem)fileItems.get(3);
			
			
				System.out.println("image selected.....");
			byte[] bytes = image.get();
			p.setPersonImage(bytes);
			
			String target="personaldetails.jsp";
			p.setUserId((String)req.getSession().getAttribute("userName"));
			if(service.changePersonal(p)>0)
			{
				PersonalBean pr=service.getPersonalDetails((String)req.getSession().getAttribute("userName"));
				req.getSession().setAttribute("userData", pr);
				target="changepersonaldetails.jsp?status=Successfully Uploaded";
			}
			else
			{
				target="changepersonaldetails.jsp?status=Something went wrong";
			}
			
			RequestDispatcher re=req.getRequestDispatcher(target);
			re.forward(req, resp);
			
			
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		
		
	
	}
	

}
