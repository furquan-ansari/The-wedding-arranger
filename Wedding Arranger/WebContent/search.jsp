<%@include file="db.jsp" %>
<%
	String qr="select * from add_serv";
Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(qr);
	%>
	
<h1 align="center">Search List </h1>
<hr color="black">
<table border="1px" align="center" cellspacing="0">
	<tr>
	<th><%="country"%></th>
		<th><%="state" %></th>
		<th><%="city" %></th>
		<th><%="tradition"%></th>
		<th><%="venue" %></th>
		
		<th colspan="2">ACTION</th>
	</tr>
	<% 
	if(rs.next())
	{
		do
		{
			String country=rs.getString("country");
			String state=rs.getString("state");
			String city=rs.getString("city");
			String tradition=rs.getString("tradition");
			String venue=rs.getString("venue");
			%>
			<tr>
					<td><%=country %></td>
					<td><%=state %></td>
					<td><%=city %></td>
					<td><%=tradition %></td>
					<td><%=venue %></td>
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