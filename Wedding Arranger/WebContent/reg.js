//Below validation for wareg.html and update_spewreg.jsp
function validate()
{

var fn=document.regform.fn.value;
 var ln=document.regform.ln.value;
 var email=document.regform.email.value;
 var pwd=document.regform.pwd.value;
 var conta=document.regform.conta.value;
 var addr=document.regform.addr.value;
 var city=document.regform.city.value;

if( fn=="" ||  ln=="" || email=="" || pwd=="" || conta=="" || addr=="" || city== "")
	{
	alert("Fill up all the form");
	return false;
	}
else
{
	return true;
	}
}

//Below validation for ureg.html and update_speureg.jsp
function validate1()
{

var fn=document.regform1.fn.value;
 var email=document.regform1.email.value;
 var pwd=document.regform1.pwd.value;
 var conta=document.regform1.conta.value;
 var addr=document.regform1.addr.value;
 var city=document.regform1.city.value;

if( fn=="" || email=="" || pwd=="" || conta=="" || addr=="" || city== "")
	{
	alert("Fill up all the form");
	return false;
	}
else
{
	return true;
	}
}

 