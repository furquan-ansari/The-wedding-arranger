<!DOCTYPE html>
<html>
<head>
<title>User Updation Form</title>
</head>
<script type="text/javascript" src="JavaScript/reg.js"></script>
<body>
<%

String fn=request.getParameter("fn");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String conta=request.getParameter("conta");
String addr=request.getParameter("addr");
String city=request.getParameter("city");
%>
<h1 align="center">User Updation Page</h1>
<hr color="black">

<table border="1px" align="center" cellspacing="0">
<form name=regform1 action="update_ureg.jsp" onsubmit="return validate1()">
<tr>
<td>FULL NAME</td><td><input type="text" name="fn" <%-- value="<%=fn%>" --%>/></td>
</tr>
<tr>
<td>EMAIL</td><td><input type="email" name="email"  placeholder="Email can't be update..."></td>
</tr>
<tr>
<td>PASSWORD</td><td><input type="password" name="pwd" ></td>
</tr>
<tr>
<td>CONTACT</td><td><input type="text" name="conta"></td>
</tr>
<tr>
<td>ADDRESS</td><td><input type="text" name="addr"></td>
</tr>
<tr>
<td>CITY</td><td><select name="city" id="city">
<option value="">--None--</option>
<option value="indore">INDORE</option>
<option value="bhopal">BHOPAL</option>
<option value="ujjain">UJJAIN</option>
<option value="gwalior">GWALIOR</option>
<option value="ratlam">RATLAM</option>
<option value="jabalpur">JABALPUR</option>
<option value="mandsaur">MANDSAUR</option>
</select>
</td>
</tr>
<tr>
<td><td><input type="submit" value="update"></td></td>
</tr>
<tr>
<td><td><input type="reset" value="CLEAR"></td></td>
</tr>
</form>
</table>
</body>
</html>
