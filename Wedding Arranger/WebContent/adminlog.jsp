<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert the page value</title>
</head>
<body>

<%
	String name=request.getParameter("name");
	String pwd=request.getParameter("pwd");
	if(name.equals("admin") && pwd.equals("12345")){
		response.sendRedirect("adminhome.html");
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("alog.html");
		rd.include(request, response);
		%>
		<%="Incorrect User Name or Password"%>
		<%}%>



</body>
</html>