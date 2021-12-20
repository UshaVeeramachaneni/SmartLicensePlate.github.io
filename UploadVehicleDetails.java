package com.nit.controller;


import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.google.zxing.WriterException;
import com.nit.beans.PersonalBean;
import com.nit.beans.VehicleBean;
import com.nit.service.UserService;
import com.nit.util.QRCodeGenerator;

public class UploadVehicleDetails extends HttpServlet {

	protected void doPost(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp) throws javax.servlet.ServletException ,java.io.IOException
	{
		VehicleBean v=new VehicleBean();
		
	UserService service=new UserService();
	
	DiskFileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	String target="generateqr.jsp";
	try {

		List fileItems = upload.parseRequest(req);
			
		FileItem userId=(FileItem)fileItems.get(0);
		PersonalBean p=new PersonalBean();
		p.setUserId(userId.getString());
		v.setPersonalBean(p);
		
		
		v.setUserId(userId.getString());
		
		// driving licence
		
		FileItem driving=(FileItem)fileItems.get(1);
		byte[] dbytes = driving.get();
		v.setDrivingImage(dbytes);
		
		
		FileItem dval=(FileItem)fileItems.get(2);
		v.setDriving_validity(Integer.parseInt(dval.getString()));
		

		
	// reg certificates
		
		FileItem reg=(FileItem)fileItems.get(3);
		byte[] rbytes = reg.get();
		v.setRegImage((rbytes));
		
		
		FileItem rval=(FileItem)fileItems.get(4);
		v.setReg_validity(Integer.parseInt(rval.getString()));
		
		
		
		
	// insurance 
		
		FileItem insurance=(FileItem)fileItems.get(5);
		byte[] ibytes = insurance.get();
		v.setInsuranceImage(ibytes);
		
		
		FileItem ival=(FileItem)fileItems.get(6);
		v.setInsurance_validity(Integer.parseInt(ival.getString()));
		
		
	// pollution licence
		
		FileItem pollution=(FileItem)fileItems.get(7);
		byte[] pbytes = pollution.get();
		v.setPollutionImage(pbytes);
		
		
		FileItem pval=(FileItem)fileItems.get(8);
		v.setPollution_validity(Integer.parseInt(pval.getString()));
		
		v.setCurrentYear(Calendar.getInstance().get(Calendar.YEAR));
		
		if(service.uploadVehicle(v)>0)
		{
			
			
			String url=QRCodeGenerator.ROOT_PATH+"/QRCode/GetData?userId="+userId.getString();
			String path=QRCodeGenerator.QR_CODE_IMAGE_PATH+"\\"+userId.getString()+".png";
			try {
				QRCodeGenerator.generateQRCodeImage(url, 350, 350,path);
				req.getSession().setAttribute("file", userId.getString()+".png");
				target="generateqr.jsp?path="+path;
				System.out.println("path in upload----"+path);
			
			} catch (WriterException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			//target="generateqr.jsp?status=Successfully Uploaded&userId="+userId.getString());
		}
		else
		{
			target="vehicledetails.jsp?status=Something went wrong";
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	
	RequestDispatcher rd = req.getRequestDispatcher(target);
	rd.forward(req, resp);

	
	
	}
	
	
}
