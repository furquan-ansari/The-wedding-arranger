<%@page import= "java.sql.*" %>
<%@page import= "javax.sql.*" %>
<%

	String fn=request.getParameter("fn");
	String ln=request.getParameter("ln");
	String email=request.getParameter("email");
	String pwd=request.getParameter("pwd");
	String cont=request.getParameter("cont");
	String add=request.getParameter("addr");
	String city=request.getParameter("city");
	
 try{ 
	//Class.forName("oracle.jdbc.driver.OracleDriver");
	//Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");  

		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wed_arr","root","2526336");
	String qr=("insert into wa (fn,ln,email,pwd,conta,addr,city)values (?,?,?,?,?,?,?)");
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1, fn);
	ps.setString(2, ln);
	ps.setString(3, email);
	ps.setString(4, pwd);
	ps.setString(5, cont);
	ps.setString(6, add);
	ps.setString(7, city);
	int i=ps.executeUpdate();
	RequestDispatcher rd=request.getRequestDispatcher("wa.html");
	if(i>0){
		
		rd.include(request, response);
		%>
		
		out.println("registeration done");
		<!-- <script type="text/javascript">
		function showAlert()
		{
		alert("Successfully Registered");	
		}
		</script>  -->
		<%
	}
	else{
		
		rd.include(request, response);
		%>
		out.println("not done");
		<!-- <script type="text/javascript">
		function showAlert()
		{
		alert("Not Registered");	
		}
		</script> --> 
		<%
	}
 }
catch(Exception e)
{out.print(e);}
 
%>



