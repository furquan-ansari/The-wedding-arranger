<%@page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
	String qr="select * from add_serv";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next()){
		%>
		<table border="1px"  cellspacing="0">
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
					<td><a href="delete_add_serv.jsp?tradition=<%=tradition %>">DELETE</a></td>
					
				</tr>
			<%
		}while(rs.next());
		%>
		</table>
		<%
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("show_add_serv.jsp");
		rd.include(request, response);
		%>
		<%= "No record found" %>
		<%
	}
%>