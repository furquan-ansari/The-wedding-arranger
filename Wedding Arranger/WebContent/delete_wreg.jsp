<%@page import="java.sql.*" %>
<%
	String email=request.getParameter("email");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homeseeker","root","2526336");
	String qr="delete from landlord where email=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, email);
	int i=ps.executeUpdate();
	if(i>0){
		RequestDispatcher rd=request.getRequestDispatcher("show_wareg.jsp");
		rd.include(request, response);
		%>
		<%="Delete Successfully" %>
		<%
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("show_wareg.jsp");
		rd.include(request, response);
		%>
		<%="Data not Deleted" %>
		<%
	}
%>