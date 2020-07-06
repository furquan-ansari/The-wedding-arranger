<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>
<%
String email=request.getParameter("email");

String qr="delete from user where email=? ";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, email);
int i=ps.executeUpdate();
if(i>0)
{
response.sendRedirect("show_ureg.jsp");	
}
else
{
	response.sendRedirect("error.jsp");
}
%>















