// Below functionality used in add_serv.html and update_spe_serv.jsp

  function validate()
	{
	var country=document.addservform.country.value
	 var state=document.addservform.state.value;
	 var city=document.addservform.city.value;
	 var tradition=document.addservform.tradition.value;
	 var venue=document.addservform.venue.value;


	if( country=="" ||   state=="" || city=="" ||tradition==""|| venue=="")
		{
		alert("Fill up all the form");
		return false;
		}
	else
	{
		return true;
		}
	}

	