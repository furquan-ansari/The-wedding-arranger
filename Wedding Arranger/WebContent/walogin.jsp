<%@include file="db.jsp"%>
<%
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	
	String qr="select * from wa where email=? and pwd=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, email);
	ps.setString(2, pwd);
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
	{
		session.setAttribute("email",email);
	response.sendRedirect("wahome.html");
	}
	
%>	