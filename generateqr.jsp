<jsp:include page="header.jsp"/>
<!-- END header -->
<div id="container">
  <h1>QR Code</h1>
  
  <div class="one-half">
  
   
    <%
   // System.out.println("path-----"+request.getParameter("path") );
  
   /* String path=request.getParameter("path");  */
    %>

    <img src="img/qr/<%=(String)session.getAttribute("file")%>">
    
    </div>
  <div class="one-half last">
   
    <form action="LoginController" class="TTWForm" method="post">
     
      
     
      <div id="form-submit" class="field f_100 clearfix submit" >
        <input value="Print" type="button" style="width: 500px;margin-top: 150px;" onclick="window.print()">
      </div>
      
      
      
      
    </form>
  </div>
  <div style="clear:both; height: 40px"></div>
<jsp:include page="footer.jsp"></jsp:include>