<%
String user=(String)session.getAttribute("userName");
if(user==null)
{
	response.sendRedirect("login.jsp");
}
%>
<%@page import="com.nit.dao.UserDAO"%>
<%@page import="java.util.List"%><jsp:include page="header.jsp"/>
<script>
function  validate()
{
if(document.myForm.pin.value!=document.myForm.cpin.value)
{
alert("Pin and Confirm Pin number doesn't match");
return false;
}

}

</script>


<!-- END header -->
<div id="container">
  <h1>Vehicle Details</h1>
  <div class="one-half">
    <div class="heading_bg">
      <h2>Xxxxxxxxxxxx</h2>
    </div>
    <p><strong>------------</strong><br>
      ------------<br>
      <br>
      ------------<br>
     ------------</p>
  
    <br>
  </div>
  <div class="one-half last">
    <div class="heading_bg">
      <h2>Details</h2>
    </div>
    <form action="UploadVehicleDetails" class="TTWForm" onsubmit="return validate();" method="post" name="myForm" enctype="multipart/form-data">
     
     
      <div id="field1-container" class="field f_50">
        <label for="field1">UserId</label>
       <%
       UserDAO dao=new UserDAO();
       List<String> list=dao.getUserIds();
       
        %>
       <select name="userId" id="field1" >
       <%
       if(list!=null && list.size()>0)
       {
       for(String s:list)
       out.println("<option>"+s+"</option>");
       }
        %>
       </select>
       
      </div>
     
      <div id="field1-container" class="field f_50">
        <label for="field1">Driving Licence</label>
        <input name="driving" id="field1" type="file" required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Validity</label>
        <input name="dval" id="field5" type="text" pattern="[1-9]{1}" required>
      </div>
      
      
       <div id="field1-container" class="field f_50">
        <label for="field1">Reg Certificate</label>
        <input name="reg" id="field1" type="file" required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Validity</label>
        <input name="rval" id="field5"  type="text" pattern="[1-9]{1}"   required>
      </div>
       <div id="field1-container" class="field f_50">
        <label for="field1">Insurance</label>
        <input name="insurance" id="field1" type="file" required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Validity</label>
        <input name="dval" id="field5"  type="text" pattern="[1-9]{1}"   required>
      </div>
      
      
       <div id="field1-container" class="field f_50">
        <label for="field1">Pollution UC Certificate</label>
        <input name="driving" id="field1" type="file" required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Validity</label>
        <input name="dval" id="field5"  type="text" pattern="[1-9]{1}"   required>
      </div>
      
      
      
      <div id="form-submit" class="field f_100 clearfix submit">
        <input value="Submit" type="submit">
      </div>
    </form>
  </div>
  <div style="clear:both; height: 40px"></div>
<jsp:include page="footer.jsp"></jsp:include>