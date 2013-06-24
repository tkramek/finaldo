function myFunction()
{
	var sel = document.getElementById('instrument_instrumentType');
if (sel.options[sel.selectedIndex].value == '2') 
{
	hideShow("instrument_capitalisation", 0);
	hideShow("instrument_percent", 0);
	hideShow("instrument_period", 0);
}
else
{
	hideShow("instrument_capitalisation", 1);
	hideShow("instrument_percent", 1);
	hideShow("instrument_period", 1);
}
}

function hideShow(element, show)
{
	var flag = "hidden";
	if(show == 1)
	{
		flag = "visible"	
	}
	document.getElementById(element).style.visibility=flag;
}
