
<%
String user=(String)session.getAttribute("userName");
if(user==null)
{
	response.sendRedirect("login.jsp");
}
%>
<%@page import="com.nit.beans.PersonalBean"%>
<jsp:include page="header.jsp"/>
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

<%
PersonalBean p=(PersonalBean)session.getAttribute("userData");
%>
<!-- END header -->
<div id="container">
  <h1>Personal Details</h1>
  <div class="one-half">
    <div class="heading_bg">
      <h2>Xxxxxxxxx</h2>
    </div>
    <p><strong>---------</strong><br>
      ---------<br>
      <br>
      ---------<br>
     ---------</p>
    
    <br>
    </div>
  <div class="one-half last">
    <div class="heading_bg">
      <h2>Send Email</h2>
    </div>
    <form action="ChangePersonalDetails" class="TTWForm"  name="myForm" method="post" enctype="multipart/form-data">
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Address</label>
         <textarea rows="5" cols="15" name="address" id="field4"  required><%=p.getAddress() %></textarea>
      </div>
      
        <div id="field5-container" class="field f_50">
        <label for="field5">Phone No</label>
        <input name="phone" id="field5" type="number" value="<%=p.getPhone() %>"   required>
      </div>
      
      
        <div id="field5-container" class="field f_50">
        <label for="field5">Email</label>
        <input name="email" id="field5" type="email" value="<%=p.getEmail() %>"  required>
      </div>
      
      
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Upload Image</label><font color="red">&nbsp;&nbsp;&nbsp;(Optional)</font>
        <input name="image" id="field5" type="file" >
      </div>
      
      <div id="form-submit" class="field f_100 clearfix submit">
        <input value="Submit" type="submit">
      </div>
    </form>
  </div>
  <div style="clear:both; height: 40px"></div>

<!-- close container -->
<jsp:include page="footer.jsp"></jsp:include>