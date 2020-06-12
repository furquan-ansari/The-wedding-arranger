<%@page import="java.sql.*" %>

<%

	String fn=request.getParameter("fn");
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	String cont=request.getParameter("cont");
	String add=request.getParameter("add");
	String city=request.getParameter("city");
	
	try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
	String qr="insert into user (fn,email,pwd,cont,addr,city)values(?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, fn);
	ps.setString(2, email);
	ps.setString(3, pwd);
	ps.setString(4, cont);
	ps.setString(5, add);
	ps.setString(6, city);
	int i=ps.executeUpdate();
	RequestDispatcher rd=request.getRequestDispatcher("user.html");
	if(i>0){
		
		rd.include(request, response);
		%>
		<%= "Successfully Registerd"%>
		<%
	}
	else{
		
		rd.include(request, response);
		%>
		<%= "Not Registerd"%>
		<%
	}
	}
	catch(Exception e)
	{out.print(e);}
%>



    