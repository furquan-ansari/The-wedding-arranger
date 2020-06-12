<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%

	String tradition=request.getParameter("tradition");
	String state=request.getParameter("state");
	String city=request.getParameter("city");
	String venue=request.getParameter("venue");
	
 try{ 
	//Class.forName("oracle.jdbc.driver.OracleDriver");
	//Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");  

		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
	String qr=("insert into add_serv (tradition,state,city,venue)values (?,?,?,?)");
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, tradition);
	ps.setString(2, state);
	ps.setString(3, city);
	ps.setString(4, venue);
	
	int i=ps.executeUpdate();
	RequestDispatcher rd=request.getRequestDispatcher("wahome.html");
	if(i>0){
		
		rd.include(request, response);
		%>
		
		<%= "Successfully added" %>  
		<%
	}
	else{
		
		rd.include(request, response);
		%>
		<%= "Not added" %>
		<%
	}
 }
catch(Exception e)
{out.print(e);}
 
%>