<%
String user=(String)session.getAttribute("userName");
if(user==null)
{
	response.sendRedirect("login.jsp");
}
%>
<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="middle.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>