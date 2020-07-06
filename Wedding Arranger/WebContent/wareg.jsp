<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<script type="text/javascript" src="JavaScript/reg.js"></script>
<body>
<%@include file="db.jsp"%>
<%
	String fn=request.getParameter("fn");
	String ln=request.getParameter("ln");
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	String conta=request.getParameter("conta");
	String addr=request.getParameter("addr");
	String city=request.getParameter("city");
	
	String qr="insert into wa values(?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, fn);
	ps.setString(2, ln);
	ps.setString(3, email);
	ps.setString(4, pwd);
	ps.setString(5, conta);
	ps.setString(6, addr);
	ps.setString(7, city);
	int i=ps.executeUpdate();
	if(i>0)
{
response.sendRedirect("wa.html");	
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("wareg.html");
	rd.include(request, response);
	%>
	<%="Data not Inserted" %>
	<%	
}

%>
</body>
</html>