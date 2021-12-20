<%@page import="com.nit.beans.PersonalBean"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.nit.beans.VehicleBean"%>
<jsp:include page="header.jsp"></jsp:include>
<div id="container">
  <!-- tab panes -->
  <div id="prod_wrapper">
    <div id="panes">
      <div> 
      
    
    <table border="1">
    <tr>
    
    <td>
    <%
    VehicleBean vb=(VehicleBean)session.getAttribute("entireData");
    PersonalBean pb =vb.getPersonalBean();
    
    %>
    <img src="userimage2.jsp" alt="" height="200" width="200" class="float-left">
    </td>
    <td style="vertical-align: top;">
     <h1>Smart Licence Plate</h1>
        <p>
        ----------------------------------
        ----------------------------------
        ----------------------------------
        ----------------------------------
        
        --------------------------------------------------------------------
        --------------------------------------------------------------------
        
        </p>
        <p style="text-align:right; margin-right: 16px"><a href="ShowUserData.jsp?id=yes" class="button">Personal Details</a> </p>
    </td>
    <td>
    
    <img src="img/qr/<%=vb.getUserId()%>.png" alt="" height="200" width="200" class="float-right">
      
    </td>
   
      
      
    
      
      	
       
    
      
      
       </tr>
    </table>  
      
      
      </div>
      <%
      session.setAttribute("dr", vb.getDrivingImage());
      
      int d=vb.getCurrentYear()+vb.getDriving_validity();
      
      int cu=Calendar.getInstance().get(Calendar.YEAR);
      System.out.println("d-----"+d);
      System.out.println("d-----"+cu);
      if(d>=cu)
      {
     %>
       <div> <img src="driving.jsp" alt="" height="300" width="400">
         <h2>Driving Licence</h2>
         <p>
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         
         
          </p>
         <font color="red" size="4">Validity:</font><h2><%=vb.getDriving_validity() %> Year</h2>
       </div>
       <%
      }
        session.setAttribute("reg",vb.getRegImage());
  int r=vb.getCurrentYear()+vb.getReg_validity();
        
      
        
        if(r>=cu)
        {
     %>
       <div> <img src="reg.jsp" alt="" height="300" width="400">
         <h2>Registration Certificates</h2>
         <p>
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         
         </p>
         <font color="red" size="4">Validity:</font><h2><%=vb.getReg_validity() %> Year</h2>
       </div>
        <%
        }
        session.setAttribute("insur",vb.getInsuranceImage());
  int i=vb.getCurrentYear()+vb.getInsurance_validity();
        
       
        
        if(i>=cu)
        {
     %>
       <div> <img src="insur.jsp" alt="" height="300" width="400">
         <h2>Insurance Certificates</h2>
        <p>
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         
         </p>
         <font color="red" size="4">Validity:</font><h2><%=vb.getInsurance_validity() %> Year</h2>
        
       </div>
        <%
        }
        session.setAttribute("pollution",vb.getPollutionImage());
        int p=vb.getCurrentYear()+vb.getPollution_validity();
        
       
        
        if(p>=cu)
        {
     %>
       <div> <img src="pollution.jsp" alt="" height="300" width="400">
         <h2>Pollution Certificates</h2>
         <p>
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         ------------------------------------
         
         </p>
         
         <font color="red" size="4">Validity:</font><h2><%=vb.getPollution_validity() %> Year</h2>
       </div>
       <%
        }
       %>
     </div>
    <!-- END tab panes -->
    <br clear="all">
    <!-- navigator -->
    <div id="prod_nav">
      <ul>
        <li><a href="#1"><img src="img/demo/1.jpg" width="160" alt=""><strong>Home Page</strong> </a></li>
        <li><a href="#2"><img src="img/demo/2.jpg" width="160" alt=""><strong>Driving Licence</strong> </a></li>
        <li><a href="#3"><img src="img/demo/3.jpg" width="160" alt=""><strong>Reg Certificate</strong></a></li>
        <li><a href="#4"><img src="img/demo/4.jpg" width="160" alt=""><strong>Insurance Certificate</strong> </a></li>
        <li><a href="#5"><img src="img/demo/5.jpg" width="160" alt=""><strong>Pollution Certificate</strong> </a></li>
      </ul>
    </div>
    <!-- END navigator -->
    
    
  </div>
  
  
  
  <!-- END prod wrapper -->
  <div style="clear:both"></div>
  <div class="one-third">
  <%
  if(request.getParameter("id")!=null)
  {
  %>
     <form action="UploadPersonalDetails" class="TTWForm" onsubmit="return validate();" method="post" name="myForm" enctype="multipart/form-data">
      <font color="blue" size="4"><b>Personal Information</b></font>
      <table>
      <tr><td>Name</td><td style="color: red;font-weight: bold;"><%=pb.getUserName() %></td></tr>
       <tr><td>Address</td><td style="color: red;font-weight: bold;"><%=pb.getAddress() %></td></tr>
        <tr><td>Phone No</td><td style="color: red;font-weight: bold;"><%=pb.getPhone() %></td></tr>
         <tr><td>Email</td><td style="color: red;font-weight: bold;"><%=pb.getEmail() %></td></tr>
          <tr><td>Aadhar No</td><td style="color: red;font-weight: bold;"><%=pb.getAadhar() %></td></tr>
           <tr><td>Gender</td><td style="color: red;font-weight: bold;"><%=pb.getGender() %></td></tr>
            <tr><td>Date of Birth</td><td style="color: red;font-weight: bold;"><%=pb.getDob() %></td></tr>
      
      </table>
      
    
     
      
    </form>
    <%
  }
    %>
  </div>
  <div style="clear:both; height: 40px"></div>

<!-- END container -->
<jsp:include page="footer.jsp"></jsp:include>