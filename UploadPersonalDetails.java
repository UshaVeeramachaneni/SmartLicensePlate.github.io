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

public class UploadPersonalDetails extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

	PersonalBean p=new PersonalBean();
	UserService service=new UserService();
	
	DiskFileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	String target="personaldetails.jsp";
	try {

		List fileItems = upload.parseRequest(req);
			
		FileItem userName=(FileItem)fileItems.get(0);
		p.setUserName(userName.getString());
	
		FileItem userId=(FileItem)fileItems.get(1);
		p.setUserId(userId.getString());
	
		
		FileItem pin=(FileItem)fileItems.get(2);
		p.setPin(pin.getString());
	
		FileItem address=(FileItem)fileItems.get(4);
		p.setAddress(address.getString());
	
		
		
		FileItem phone=(FileItem)fileItems.get(5);
		p.setPhone(phone.getString());
	
		
		
		FileItem email=(FileItem)fileItems.get(6);
		p.setEmail(email.getString());
	
		
		
		FileItem aadhar=(FileItem)fileItems.get(7);
		p.setAadhar(aadhar.getString());
	
		
		
		FileItem gen=(FileItem)fileItems.get(8);
		p.setGender(gen.getString());
	
		
		
		FileItem dob=(FileItem)fileItems.get(9);
		p.setDob(dob.getString());
	
		
		
		FileItem image=(FileItem)fileItems.get(10);
		
		byte[] bytes = image.get();

		/*File f = new File("E://"+image.getName() + ".jpg");

		FileOutputStream fos = new FileOutputStream(f);
		fos.write(bytes);
		fos.close();*/
		p.setPersonImage(bytes);
		
		if(service.uploadPersonal(p)>0)
		{
			target="personaldetails.jsp?status=Successfully Uploaded";
		}
		else
		{
			target="personaldetails.jsp?status=Something went wrong";
		}
		
		
		
		
		}catch(Exception e)
		{
			target="personaldetails.jsp?status=Something went wrong or User Id Already Registered..";
		}
	
	RequestDispatcher re=req.getRequestDispatcher(target);
	re.forward(req, resp);
	
	}

}
