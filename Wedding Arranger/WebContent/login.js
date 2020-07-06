//Below functionality for the alog.html
function validateform()
{
/*var id=document.form["loginform"]["name"].value;*/
var name=document.loginform.name.value;
var pwd=document.loginform.pwd.value;

if(name==null || name=="")
	{
	alert("Name can't be left blank");
	return false;
	}
else if((pwd.length<5)||(pwd.length>5))
	{
	alert("pwd must be exact 5 Integer type");
	return false;
	}
	}

//Below functionality for the Wa.html and user.html page

function validateform1()
{
/*var id=document.form["loginform"]["name"].value;*/
var email=document.loginform.email.value;
var pwd=document.loginform.pwd.value;

if(email==null || email=="")
	{
	alert("Email can't be left blank");
	return false;
	}
else if((pwd.length<5)||(pwd.length>5))
	{
	alert("Password must be exact 5 Integer type");
	return false;
	}
	}