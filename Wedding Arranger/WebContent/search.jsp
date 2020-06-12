<%-- <%@page import="java.sql.*" %>
<%
	String tradition=(String)session.getAttribute("tradition");
	String state=request.getParameter("state");
String city=request.getParameter("city");
String venue=request.getParameter("venue");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
	String qr="select * from add_serv where tradition=? and state=? and city=? and venue=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,tradition);
	ps.setString(2,state);
	ps.setString(3,city);
	ps.setString(4,venue);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		%>
		<table border="1px" align="center">
		<tr>
		<th>tradition</th>
		<th>state</th>
		<th>city</th>
		<th>venue</th>
	
		<th colspan="2">ACTION</th>
		</tr>
		<%
		do{
			String tradition=rs.getString("tradition");
			String state=rs.getString("state");
			String city=rs.getString("city");
			String venue=rs.getString("venue");
			
			%>
				<tr>
					<td><%=tradition %></td>
					<td><%=state %></td>
					<td><%=city %></td>
					<td><%=venue %></td>
					
					<td><a href="book.jsp?tradition="<%=tradition%>">BOOK</td>
				</tr>
			<%
		}while(rs.next());
		%>
		</table>
		<%
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("uhome.html");
		rd.include(request, response);
		%>
		<%= "No record Found" %>
		<%
	}
%>
 --%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "wed_arr";
String userid = "root";
String password = "2526336";
String tradition=request.getParameter("tradition");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<h1>Search Data</h1>
<table border="1">
<tr>
<td>tradition</td>
<td>state</td>
<td>city</td>
<td>venue</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from add_serv where tradition=?, state=?, city=?, venue=?";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("tradition") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("venue") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>



