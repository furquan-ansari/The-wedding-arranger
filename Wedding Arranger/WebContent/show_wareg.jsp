<%@page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
	String qr="select * from wa";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	if(rs.next()){
		%>
		<table border="1px"  cellspacing="0">
		<tr>
		<th>FIRST_NAME</th>
		<th>LAST_NAME</th>
		<th>EMAIl</th>
		<th>CONATCT</th>
		<th>ADDRESS</th>
		<th>CITY</th>
		<th colspan="2">ACTION</th>
		</tr>
		<%
		do{
			String fn=rs.getString("fn");
			String ln=rs.getString("ln");
			String email=rs.getString("email");
			String cont=rs.getString("conta");
			String add=rs.getString("addr");
			String city=rs.getString("city");
			%>
				<tr>
					<td><%=fn %></td>
					<td><%=ln %></td>
					<td><%=email %></td>
					<td><%=cont %></td>
					<td><%=add %></td>
					<td><%=city %></td>
					<td><a href="delete_wareg.jsp?email=<%=email %>">DELETE</a></td>
					
				</tr>
			<%
		}while(rs.next());
		%>
		</table>
		<%
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("adminhome.html");
		rd.include(request, response);
		%>
		<script>alert("No record Found");</script>
		<%
	}
%>