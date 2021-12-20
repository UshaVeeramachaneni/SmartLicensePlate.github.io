<%
String user=(String)session.getAttribute("userName");
if(user==null)
{
	response.sendRedirect("login.jsp");
}
%>
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


<!-- END header -->
<div id="container">
  <h1>Personal Details</h1>
  <div class="one-half">
    <div class="heading_bg">
      <h2>XXXXXXX</h2>
    </div>
    <p><strong>------------</strong><br>
      ---------<br>
      <br>
    --------------<br>
      ------------------ </p>
   
    <br>
</div>
  <div class="one-half last">
    <div class="heading_bg">
      <h2>Details</h2>
    </div>
     <font color="red" size="4"><b>
      <%
    String status=request.getParameter("status");
    if(status!=null)
    {
    	out.println(status);
    }
    %>
    </b>
    </font>
    <form action="UploadPersonalDetails" class="TTWForm" onsubmit="return validate();" method="post" name="myForm" enctype="multipart/form-data">
      <div id="field1-container" class="field f_50">
        <label for="field1">Name</label>
        <input name="userName" id="field1" type="text" required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">User Id</label>
        <input name="userId" id="field5" type="text"  required><font color="red">(Vehicle Number)</font>
      </div>
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Pin</label>
        <input name="pin" id="field5" type="number"  required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Confirm Pin</label>
        <input name="cpin" id="field5" type="number"   required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Address</label>
         <textarea rows="5" cols="15" name="address" id="field4" required></textarea>
       
      </div>
      
        <div id="field5-container" class="field f_50">
        <label for="field5">Phone No</label>
        <input name="phone" id="field5" type="text" pattern="[6-9]{1}[0-9]{9}"  required>
      </div>
      
      
        <div id="field5-container" class="field f_50">
        <label for="field5">Email</label>
        <input name="email" id="field5" type="email"   required>
      </div>
      
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Aadhar No</label>
        <input name="aadhar" id="field5" type="text"   required>
      </div>
      
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Gender</label>
        <input name="gender" id="field5" type="radio" value="Male" checked="checked" >Male
        <input name="gender" id="field5" type="radio" value="Female" >FeMale
      </div>
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Date Of Birth</label>
        <input name="dob" id="field5" type="date"   required>
      </div>
      
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Upload Image</label>
        <input name="image" id="field5" type="file"   required>
      </div>
      
      <div id="form-submit" class="field f_100 clearfix submit">
        <input value="Submit" type="submit">
      </div>
    </form>
  </div>
  <div style="clear:both; height: 40px"></div>

<jsp:include page="footer.jsp"></jsp:include>