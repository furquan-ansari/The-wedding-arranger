<%@page import="java.sql.*" %>
<%
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
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