<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
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
    %>
    <img src="userimage2.jsp" alt="" height="200" width="200" class="float-left">
    </td>
    <td style="vertical-align: top;">
     <h1>Smart Licence Plate</h1>
        <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam. </p>
        <p style="text-align:right; margin-right: 16px"><a href="showPersonalDetails.jsp" class="button">Personal Details</a> <a href="showVehicleDetails.jsp" class="button">Vehicle Details</a></p>
    </td>
    <td>
    
    <img src="img/qr/<%=vb.getUserId()%>.png" alt="" height="200" width="200" class="float-right">
      
    </td>
   
      
      
    
      
      	
       
    
      
      
       </tr>
    </table>  
      
      
      </div>
     <%
      session.setAttribute("dr",vb.getDrivingImage());
     
     if(Calendar.getInstance().get(Calendar.YEAR)<=vb.getCurrentYear()+vb.getDriving_validity())
     {
    %>
      <div> <img src="driving.jsp" alt="">
        <h2>Meet Our Team</h2>
        <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam. </p>
        <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>
      </div>
      <%
     }
       session.setAttribute("reg",vb.getRegImage());
       if(Calendar.getInstance().get(Calendar.YEAR)<=vb.getCurrentYear()+vb.getReg_validity())
       {
    %>
      <div> <img src="reg.jsp" alt="">
        <h2>Mauris elementum</h2>
        <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam. </p>
        <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>
      </div>
       <%
       }
       session.setAttribute("insur",vb.getInsuranceImage());
       if(Calendar.getInstance().get(Calendar.YEAR)<=vb.getCurrentYear()+vb.getInsurance_validity())
       {
    %>
      <div> <img src="insur.jsp" alt="">
        <h2>Nam tempor nibh</h2>
        <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam. </p>
        <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>
      </div>
       <%
       }
       session.setAttribute("pollution",vb.getPollutionImage());
       if(Calendar.getInstance().get(Calendar.YEAR)<=vb.getCurrentYear()+vb.getPollution_validity())
       {
    %>
      <div> <img src="pollution.jsp" alt="">
        <h2>Supercar</h2>
        <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. Ut vitae nunc a libero volutpat gravida. Nullam egestas mi sit amet dui scelerisque eu laoreet nisi ultrices. Ut vitae nunc a libero volutpat gravida. Nam tempor nibh a purus aliquam. </p>
        <p style="text-align:right; margin-right: 16px"><a href="#" class="button">More Info</a> <a href="#" class="button">Buy Now</a></p>
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
        <li><a href="#1"><img src="img/demo/1.jpg" width="160" alt=""><strong>Home Page</strong> $ 199</a></li>
        <li><a href="#2"><img src="img/demo/2.jpg" width="160" alt=""><strong>Driving Licence</strong> </a></li>
        <li><a href="#3"><img src="img/demo/3.jpg" width="160" alt=""><strong>Reg Certificate</strong> $ 480</a></li>
        <li><a href="#4"><img src="img/demo/4.jpg" width="160" alt=""><strong>Insurance Certificate</strong> $ 1099</a></li>
        <li><a href="#5"><img src="img/demo/5.jpg" width="160" alt=""><strong>Pollution Certificate</strong> $ 99</a></li>
      </ul>
    </div>
    
    <!-- END navigator -->
  </div>
  <!-- END prod wrapper -->
  <div style="clear:both"></div>
  <div class="one-third">
    <h2>Business Solutions</h2>
    <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida.</p>
    <p style="text-align:right; margin-right: 15px"><a href="#" class="button_small">Find out more</a></p>
  </div>
  <div class="one-third">
    <h2>Become a Partner</h2>
    <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida.</p>
    <p style="text-align:right; margin-right: 15px"><a href="#" class="button_small">Contact Us Today</a></p>
  </div>
  <div class="one-third last">
    <h2>Latest News</h2>
    <p>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida.</p>
    <p style="text-align:right; margin-right: 15px"><a href="#" class="button_small">Read Article</a></p>
  </div>
  <div style="clear:both"></div>
  <div class="box_highlight" style="margin-top:40px">
    <h2 style="text-align:center">Some kind of sales pitch goes here!</h2>
  </div>
  <div class="one-half">
    <div class="heading_bg">
      <h2>About Us</h2>
    </div>
    <blockquote>Nulla hendrerit commodo tortor, vitae elementum magna convallis nec. Nam tempor nibh a purus aliquam et adipiscing elit gravida. </blockquote>
    <p style="text-align:right; margin-right: 16px; margin-bottom: 15px"><a href="#" class="button" style="font-size: 18px">Find out more</a></p>
    <div class="heading_bg">
      <h2>Video</h2>
    </div>
    <iframe src="http://player.vimeo.com/video/22884674?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="465" height="262" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
  </div>
  <div class="one-half last">
    <div class="heading_bg">
      <h2>Contact us today!</h2>
    </div>
    <form action="#" class="TTWForm" method="post">
      <div id="field1-container" class="field f_50">
        <label for="field1">Name</label>
        <input name="name" id="field1" type="text">
      </div>
      <div id="field2-container" class="field f_50">
        <label for="field2">Telephone</label>
        <input name="tel" id="field2" type="text">
      </div>
      <div id="field5-container" class="field f_50">
        <label for="field5">Email</label>
        <input name="email" id="field5" type="email">
      </div>
      <div id="field4-container" class="field f_100">
        <label for="field4">Message</label>
        <textarea rows="5" cols="20" name="message" id="field4"></textarea>
      </div>
      <div id="form-submit" class="field f_100 clearfix submit">
        <input value="Submit" type="submit">
      </div>
    </form>
  </div>
  <div style="clear:both; height: 40px"></div>
</div>
<!-- END container -->
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