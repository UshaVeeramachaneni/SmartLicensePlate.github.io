<%@page import="java.io.File"%>
<jsp:include page="header.jsp"/>
<!-- END header -->
<div id="container">
  <h1>Login Page</h1>
  <div class="one-half">
    <div class="heading_bg">
      <h2>Contact</h2>
      <%
      System.out.println(new File("").getAbsolutePath());
      %>
    </div>
    <p><strong>xxxxxxxxxxxxxxxxx</strong><br>
      ================<br>
      <br>
      Tel: --------------<br>
      mail: ---------- </p>
      <!-- http://maps.google.no/maps?f=q&amp;source=s_q&amp;hl=no&amp;geocode=&amp;q=Hafstadvegen+35,+F%C3%B8rde&amp;aq=0&amp;oq=hafstadvegen+35&amp;sll=61.143235,9.09668&amp;sspn=17.454113,57.084961&amp;ie=UTF8&amp;hq=&amp;hnear=Hafstadvegen+35,+6800+F%C3%B8rde,+Sogn+og+Fjordane&amp;t=m&amp;z=14&amp;iwloc=A&amp;ll=61.450253,5.859145&amp;output=embed -->
    <iframe width="465" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d243667.82000667328!2d78.3230288487423!3d17.39691947463942!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3bcb99daeaebd2c7%3A0xae93b78392bafbc2!2sHyderabad%2C+Telangana!3m2!1d17.385044!2d78.486671!5e0!3m2!1sen!2sin!4v1543488177564"></iframe>
    <br>
    </div>
  <div class="one-half last">
    <div class="heading_bg">
      <h2>Login</h2>
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
    <form action="LoginController" class="TTWForm" method="post">
  
    
    
      <div id="field1-container" class="field f_50">
        <label for="field1">Name</label>
        <input name="userName" id="field1" type="text" required>
      </div>
     
      <div id="field5-container" class="field f_50">
        <label for="field5">Password</label>
        <input name="password" id="field5" type="password" required>
      </div>
     
      <div id="form-submit" class="field f_100 clearfix submit">
        <input value="Submit" type="submit">
      </div>
    </form>
  </div>
  <div style="clear:both; height: 40px"></div>

<jsp:include page="footer.jsp"></jsp:include>