
<%
String user=(String)session.getAttribute("userName");
if(user==null)
{
	response.sendRedirect("login.jsp");
}
%>
<jsp:include page="header.jsp"></jsp:include>
<div id="container">
  <!-- tab panes -->
  <div id="prod_wrapper">
    <div id="panes">
      <div> 
      
    
    <table border="1">
    <tr>
    
    <td>
    <img src="userimage.jsp" alt="" height="200" width="200" class="float-left">
    </td>
    <td style="vertical-align: top;">
     <h1>Smart Licence Plate</h1>
        <p>
        ----------------------------------
        ----------------------------------
        ----------------------------------
        ----------------------------------
           ----------------------------------
        ----------------------------------
        ----------------------------------
        ----------------------------------  
        ----------------------------------
        ----------------------------------
        ----------------------------------
        
        </p>
       
    
    </td>
    <td>
    <img src="img/qr/<%=(String)session.getAttribute("userName") %>.png" alt="" height="200" width="200" class="float-right">
      
    </td>
   
      
      
    
      
      	
       
    
      
      
       </tr>
    </table>  
      
      
      </div>
     
    </div>
    <!-- END tab panes -->
    <br clear="all">
    <!-- navigator -->
    <div id="prod_nav">
      <ul>
     
      </ul>
    </div>
    <!-- END navigator -->
  </div>
  <!-- END prod wrapper -->
  <div style="clear:both"></div>
  
 

   
  
<jsp:include page="footer.jsp"></jsp:include>
