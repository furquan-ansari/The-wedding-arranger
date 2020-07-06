<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>
<% 
String fn=request.getParameter("fn");
String ln=request.getParameter("ln");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String conta=request.getParameter("conta");
String addr=request.getParameter("addr");
String city=request.getParameter("city");


String qr="update wa set fn=?,ln=?,pwd=?,conta=?,addr=?,city=? where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,fn);
ps.setString(2,ln);
ps.setString(3,pwd);
ps.setString(4,conta);
ps.setString(5,addr);
ps.setString(6,city);
ps.setString(7,email);

int i=ps.executeUpdate();

if(i>0)
{
response.sendRedirect("show_wareg.jsp");
out.println("updated");

}
else
{
	response.sendRedirect("error.jsp");
}

%>