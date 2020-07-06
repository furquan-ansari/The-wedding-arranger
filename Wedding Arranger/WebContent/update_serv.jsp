<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>
<% 
String country=request.getParameter("country");
String state=request.getParameter("state");
String city=request.getParameter("city");
String tradition=request.getParameter("tradition");
String venue=request.getParameter("venue");

String qr="update add_serv set state=?,city=?,tradition=?,venue=? where country=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,state);
ps.setString(2,city);
ps.setString(3,tradition);
ps.setString(4,venue);
ps.setString(5,country);

int i=ps.executeUpdate();

if(i>0)
{
response.sendRedirect("show_add_serv.jsp");
out.println("updated");

}
else
{
	response.sendRedirect("error.jsp");
}

%>