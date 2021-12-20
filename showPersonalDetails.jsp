<%@page import="com.nit.beans.PersonalBean"%>
<%@page import="com.nit.beans.VehicleBean"%>
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
  <h1>Full Width Page</h1>
  <div class="one-half">
    <div class="heading_bg">
      <h2>Contact</h2>
    </div>
    <p><strong>Professional Studios</strong><br>
      NORWAY<br>
      <br>
      Tel: (+47) 99 88 77 66<br>
      mail: mail@studios.com </p>
    <iframe width="465" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.no/maps?f=q&amp;source=s_q&amp;hl=no&amp;geocode=&amp;q=Hafstadvegen+35,+F%C3%B8rde&amp;aq=0&amp;oq=hafstadvegen+35&amp;sll=61.143235,9.09668&amp;sspn=17.454113,57.084961&amp;ie=UTF8&amp;hq=&amp;hnear=Hafstadvegen+35,+6800+F%C3%B8rde,+Sogn+og+Fjordane&amp;t=m&amp;z=14&amp;iwloc=A&amp;ll=61.450253,5.859145&amp;output=embed"></iframe>
    <br>
    <small><a href="#" style="color:#0000FF;text-align:left">Enlarge Map</a></small> </div>
  <div class="one-half last">
    <div class="heading_bg">
      <h2>Send Email</h2>
    </div>
    <%
    VehicleBean vb=(VehicleBean)session.getAttribute("entireData");
    PersonalBean pb=vb.getPersonalBean();
    
    %>
    <form action="UploadPersonalDetails" class="TTWForm" onsubmit="return validate();" method="post" name="myForm" enctype="multipart/form-data">
      <div id="field1-container" class="field f_50">
        <label for="field1">Name</label><br>
       <label for="field1" style="color: red;font-weight: bold;"><%=pb.getUserName() %></label>
      </div>
     
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Address</label><br>
       <label for="field1" style="color: red;font-weight: bold;"><%=pb.getAddress() %></label>
       
      </div>
      
        <div id="field5-container" class="field f_50">
        <label for="field5">Phone No</label><br>
       <label for="field1" style="color: red;font-weight: bold;"><%=pb.getPhone() %></label>
       
      </div>
      
      
        <div id="field5-container" class="field f_50">
        <label for="field5">Email</label><br>
       <label for="field1" style="color: red;font-weight: bold;"><%=pb.getEmail() %></label>
       
      </div>
      
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Aadhar No</label><br>
       <label for="field1" style="color: red;font-weight: bold;"><%=pb.getAadhar() %></label>
       
      </div>
      
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Gender</label><br>
       <label for="field1" style="color: red;font-weight: bold;"><%=pb.getGender()%></label>
       
      </div>
      
       <div id="field5-container" class="field f_50">
        <label for="field5">Date Of Birth</label><br>
       <label for="field1" style="color: red;font-weight: bold;"><%=pb.getDob() %></label>
       
      </div>
      
      
    </form>
  </div>
  <div style="clear:both; height: 40px"></div>
</div>
<!-- close container -->
<div id="footer">
  <!-- First Column -->
  <div class="one-fourth">
    <h3>Useful Links</h3>
    <ul class="footer_links">
      <li><a href="#">Lorem Ipsum</a></li>
      <li><a href="#">Ellem Ciet</a></li>
      <li><a href="#">Currivitas</a></li>
      <li><a href="#">Salim Aritu</a></li>
    </ul>
  </div>
  <!-- Second Column -->
  <div class="one-fourth">
    <h3>Terms</h3>
    <ul class="footer_links">
      <li><a href="#">Lorem Ipsum</a></li>
      <li><a href="#">Ellem Ciet</a></li>
      <li><a href="#">Currivitas</a></li>
      <li><a href="#">Salim Aritu</a></li>
    </ul>
  </div>
  <!-- Third Column -->
  <div class="one-fourth">
    <h3>Information</h3>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet enim id dui tincidunt vestibulum rhoncus a felis.
    <div id="social_icons"> Theme by <a href="http://www.csstemplateheaven.com">CssTemplateHeaven</a><br>
      Photos © <a href="http://dieterschneider.net">Dieter Schneider</a> </div>
  </div>
  <!-- Fourth Column -->
  <div class="one-fourth last">
    <h3>Socialize</h3>
    <img src="img/icon_fb.png" alt=""> <img src="img/icon_twitter.png" alt=""> <img src="img/icon_in.png" alt=""> </div>
  <div style="clear:both"></div>
</div>
<!-- END footer -->
</body>
</html>