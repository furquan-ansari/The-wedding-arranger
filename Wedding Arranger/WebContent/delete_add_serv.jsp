<%@page import="java.sql.*" %>
<%
	String tradition=request.getParameter("tradition");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
	String qr="delete from add_serv where tradition=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, tradition);
	int i=ps.executeUpdate();
	if(i>0){
		RequestDispatcher rd=request.getRequestDispatcher("show_add_serv.jsp");
		rd.include(request, response);
		%>
		<%="Delete Successfully" %>
		<%
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("show_add_serv.jsp");
		rd.include(request, response);
		%>
		<%="Data not Deleted" %>
		<%
	}
%>