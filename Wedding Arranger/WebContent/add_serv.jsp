<%@include file="db.jsp"%>

<%
String country=request.getParameter("country");
String state=request.getParameter("state");
String city=request.getParameter("city");
String tradition=request.getParameter("tradition");
String venue=request.getParameter("venue");
	
	
	String qr="insert into add_serv values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, country);
	ps.setString(2, state);
	ps.setString(3, city);
	ps.setString(4, tradition);
	ps.setString(5, venue);
	int i=ps.executeUpdate();
	if(i>0)
{
response.sendRedirect("wahome.html");	
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("add_serv.html");
	rd.include(request, response);
	%>
	<%="Data not Inserted" %>
	<%	
}

%>
