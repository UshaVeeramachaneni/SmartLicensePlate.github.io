<%@page import="com.nit.beans.VehicleBean"%>
<%@page import="com.nit.beans.PersonalBean"%>
<%@ page isELIgnored="false" %>
<%@page import="java.io.OutputStream"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
try
{

 
byte[] img=(byte[])session.getAttribute("dr");
System.out.println("size--------"+img.length);
					OutputStream oImage;
			        response.setContentType("image/gif");
			        oImage=response.getOutputStream();
			        oImage.write(img);
 	        oImage.flush();
 	       oImage.close();
		     
}
catch(Exception e)
{
e.printStackTrace();	
}
			        
			        
			        
			        
			        
					%> 
					