<%
String user=(String)session.getAttribute("userName");
if(user==null)
{
	response.sendRedirect("login.jsp");
}
%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="middle.jsp"></jsp:include>
  <!-- END prod wrapper -->
  <div style="clear:both"></div>
  <div class="one-third">
    <h2>Personal Details</h2>
    <p>
-------------------------------------
-------------------------------------
-------------------------------------
-------------------------------------
-------------------------------------

</p>
    <p style="text-align:right; margin-right: 15px"><a href="personaldetails.jsp" class="button_small">Click here</a></p>
  </div>
  <div class="one-third">
    <h2>Vehicle Details</h2>
    <p>
-------------------------------------
-------------------------------------
-------------------------------------
-------------------------------------
-------------------------------------

</p>
    <p style="text-align:right; margin-right: 15px"><a href="vehicledetails.jsp" class="button_small">Click here</a></p>
  </div>
  
  <jsp:include page="footer.jsp"></jsp:include>