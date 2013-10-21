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

(function(){
  var fieldNames = [ ".instrument_name", ".instrument_friendly_name", ".instrument_description", ".instrument_units", ".instrument_interest_rate", ".instrument_begin_value", ".instrument_buy_date", ".instrument_capitalisation" ];

  var instrumentSettings = {
    "Share" :    [true, true, true, true, false, true, true, false],
    "Fund" :     [true, true, true, true, false, true, true, false],
    "Currency" : [true, true, true, true, false, true, true, false],
    "Gilt" :     [true, true, true, true, true, true, true, false],
    "Deposit" :  [true, true, true, false, true, true, true, true],
    "Bond" :     [true, true, true, true, true, true, true, false]
  };

  var toggleField = function(instrument){
    for (var i = 0; i < fieldNames.length; i++) {
      $(fieldNames[i]).toggle(instrumentSettings[instrument][i]);
    }
  };

  $(function() {
    var itype = document.getElementById("instrument_type");
    itype.onchange = function(){
      toggleField(itype.value);
    };
    toggleField(itype.value);
  });
})();

