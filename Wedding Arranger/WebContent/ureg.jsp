<%@include file="db.jsp"%>
<%
	String fn=request.getParameter("fn");
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	String conta=request.getParameter("conta");
	String addr=request.getParameter("addr");
	String city=request.getParameter("city");
	
	String qr="insert into user values(?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, fn);
	ps.setString(2, email);
	ps.setString(3, pwd);
	ps.setString(4, conta);
	ps.setString(5, addr);
	ps.setString(6, city);
	int i=ps.executeUpdate();
	if(i>0)
	{
	response.sendRedirect("user.html");	
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("ureg.html");
		rd.include(request, response);
		%>
		<%="Data not Inserted" %>
		<%	
	}

	%>

    