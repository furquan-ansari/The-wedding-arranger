<!DOCTYPE html>
<html>
<head>

<title>Add Service Updation Form</title>
</head>
<script type="text/javascript" src="JavaScript/reg.js"></script>
<body>
<%

String country=request.getParameter("country");
String state=request.getParameter("state");
String city=request.getParameter("city");
String tradition=request.getParameter("tradition");
String venue=request.getParameter("venue");
%>
<h1 align="center">Add Service Updation Page</h1>
<hr color="black">
<table border="1px" align="center" cellspacing="0">
<form name=addservform action="update_serv.jsp" onsubmit="return validate()">
<tr>
<td>BY COUNTRY</td><td><select name="country" id="country">
<option value="">--None--</option>
<option value="India">India</option>
</select>
</td>
</tr>


<tr>
<td>BY STATE</td><td><select name="state" id="state">
<option value="">--None--</option>
<option value="JK">Jammu and Kashmir</option>
<option value="DELHI">Delhi</option>
<option value="UP">Uttar Pradesh</option>
<option value="MH">Maharashtra</option>
<option value="MP">Madhya Pradesh</option>
<option value="GUJ">Gujrat</option>
<option value="RAJ">Rajasthan</option>
</select>
</td>
</tr>


<tr>
<td>BY CITY</td><td><select name="city" id="city">
<option value="">--None--</option>
<option value="SRINAGAR">Srinagar</option>
<option value="DELHI">Delhi</option>
<option value="LUCKNOW">Lucknow</option>
<option value="MUMBAI">Mumbai</option>
<option value="BHOPAL">Bhopal</option>
<option value="GANDHINAGAR">Gandhinagar</option>
<option value="JAIPUR">Jaipur</option>
</select>
</td>
</tr>
<tr>

<tr>
<td>BY TRADITION</td><td><select name="tradition" id="tradition">
<option value="">--None--</option>
<option value="ISLAMIC">Islamic</option>
<option value="CHRISTIAN">Christian</option>
<option value="HINDUISM">Hiduism</option>
<option value="SIKHISM">Sikhism</option>
<option value="JUDHISM">Judhism</option>
<option value="BUDDHISM">Buddhism</option>
</select>
</td>
</tr>


<td>BY VENUE</td><td><select name="venue" id="venue">
<option value="">--None--</option>
<option value="OFFSITE">Offsite</option>
<option value="GARDEN">Garden</option>
<option value="PALACE">Palace</option>
<option value="HOTEL">Hotel</option>
</select></td>
</tr>

<tr>
<td><td><input type="submit" value="Update"></td></td>
</tr>
<tr>
<td><td><input type="reset" value="CLEAR"></td></td>
</tr>
</form>
</table>

</body>
</html>