<%@include file="db.jsp" %>
<%
	String qr="select * from wa";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	%>
	
<h1 align="center">Wedding Arranger list</h1>
<hr color="black">
<table border="1px" align="center" cellspacing="0">
	<tr>
	<th><%="FIRST_NAME"%></th>
		<th><%="LAST_NAME" %></th>
		<th><%="EMAIl" %></th>
		<th><%="PWD" %></th>
		<th><%="CONATCT" %></th>
		<th><%="ADDRESS" %></th>
		<th><%="CITY" %></th>
		<th colspan="2">ACTION</th>
	</tr>
	<% 
	if(rs.next())
	{
		do
		{
			String fn=rs.getString("fn");
			String ln=rs.getString("ln");
			String email=rs.getString("email");
			String pwd=rs.getString("pwd");
			String conta=rs.getString("conta");
			String addr=rs.getString("addr");
			String city=rs.getString("city");
			%>
			<tr>
			<td><%=fn %></td>
					<td><%=ln %></td>
					<td><%=email %></td>
					<td><%=pwd %></td>
					<td><%=conta %></td>
					<td><%=addr %></td>
					<td><%=city %></td>
					<td><a href="delete_wreg.jsp?email=<%=email %>">DELETE</a></td>
					<td><a href="update_spewreg.jsp?fn=<%=fn %>&ln=<%=ln %>&email=<%=email %>&pwd=<%=pwd %>&conta=<%=conta %>&addr=<%=addr %>&city=<%=city%>">UPDATE</a></td>
				</tr>
	<%
		}
		while(rs.next());
	}
	else
	{
	out.println("No Data Found");	
	}
	%>
		</table>