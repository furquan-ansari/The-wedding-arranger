<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>
<%
String country=request.getParameter("country");

String qr="delete from add_serv where country=? ";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, country);
int i=ps.executeUpdate();
if(i>0)
{
response.sendRedirect("show_add_serv.jsp");	
}
else
{
	response.sendRedirect("error.jsp");
}
%>

