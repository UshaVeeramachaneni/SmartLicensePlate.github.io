<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<head>
<title>QR Code</title>
<meta charset="utf-8">
<!-- Google Fonts -->
<link href='http://fonts.googleapis.com/css?family=Parisienne' rel='stylesheet' type='text/css'>
<!-- CSS Files -->
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="menu/css/simple_menu.css">
<!-- Contact Form -->
<link href="contact-form/css/style.css" media="screen" rel="stylesheet" type="text/css">
<link href="contact-form/css/uniform.css" media="screen" rel="stylesheet" type="text/css">
<!-- JS Files -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="js/jquery.tools.min.js"></script>
<script>
$(function () {
    $("#prod_nav ul").tabs("#panes > div", {
        effect: 'fade',
        fadeOutSpeed: 400
    });
});
</script>
<script>
$(document).ready(function () {
    $(".pane-list li").click(function () {
        window.location = $(this).find("a").attr("href");
        return false;
    });
});
</script>
</head>
<body>
<div class="header">
  <div id="site_title"><a href="index.jsp"><img src="img/qrc.jpg" alt="" height="100" width="200" style="vertical-align: top;"></a></div>
  <!-- Main Menu -->
  <ol id="menu">
  
   <c:choose>
				<c:when test="${sessionScope.role=='ADMIN'}">
				<jsp:include page="adminmenu.jsp"></jsp:include>
				</c:when>
				<c:when test="${sessionScope.role=='USER'}">
				<jsp:include page="usermenu.jsp"></jsp:include>
				</c:when>
				
				<c:when test="${sessionScope.role eq null}">
				<jsp:include page="menu.jsp"></jsp:include>
				</c:when>
				
				
				</c:choose>
  </ol>
</div>

<!-- END header -->
