<%@include file="db.jsp" %>
<%@page errorPage="error.jsp" %>
<% 
String fn=request.getParameter("fn");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String conta=request.getParameter("conta");
String addr=request.getParameter("addr");
String city=request.getParameter("city");


String qr="update user set fn=?,pwd=?,conta=?,addr=?,city=? where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,fn);
ps.setString(2,pwd);
ps.setString(3,conta);
ps.setString(4,addr);
ps.setString(5,city);
ps.setString(6,email);

int i=ps.executeUpdate();

if(i>0)
{
response.sendRedirect("show_ureg.jsp");
out.println("updated");

}
else
{
	response.sendRedirect("error.jsp");
}

%>