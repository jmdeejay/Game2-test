// Invoked by: obj_ButtonRandomOKAY
// Objectives: enact the effects of myCard, destroy myCard, and proceed with boat animation.

var _amt = myCard.myAmount;
var _type = myCard.myType;
var _category = myCard.myCategory;
var _remainder = 0;
var _count = ds_list_size(obj_MyCaptain.myCrewManifest); // The number of crew

switch (_type)
{
	case "Money":
	if (_category == "Good")
	{
		var thisFloater = instance_create_layer(sprite_width/2, y, "UI", obj_EndTurnFloater);
		thisFloater.myString = "+ $" + string(_amt);
		thisFloater.myColor = COLOR_GREEN_LIGHT;		
		obj_MyLedger.Cash += _amt;
		show_debug_message("Doing Good Money Event. " + thisFloater.myString + " added to Cash.");
		
		// Modify Morale
		for (var i = 0; i <= _count; i ++) // For every crew member on board...
		{
			var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is the current crew member
			_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.Fortune);
		}
		
	} if (_category == "Bad")
	{
		var thisFloater = instance_create_layer(sprite_width/2, y, "UI", obj_EndTurnFloater);
		thisFloater.myString = "- $" + string(_amt);
		thisFloater.myColor = COLOR_RED_LIGHT;		
		obj_MyLedger.Cash -= _amt;
		show_debug_message("Doing Bad Money Event. " + thisFloater.myString + " subtracted from Cash.");
		
		if (obj_MyLedger.Cash < 0)
		{
			show_debug_message("Not enough Cash, subtracting from Savings.");
			_remainder = abs(obj_MyLedger.Cash);
			obj_MyLedger.Cash = 0;
			obj_MyLedger.Savings -= _remainder;
			if (obj_MyLedger.Savings < 0)
			{
				show_debug_message("Not enough Savings, adding to Bank Loan.");
				_remainder = abs(obj_MyLedger.Savings);
				obj_MyLedger.BankLoan += _remainder;
			}
		}
			// Modify Morale
			for (var i = 0; i <= _count; i ++) // For every crew member on board...
			{
				var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is the current crew member
				_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.Bad);
			}
	}
	if (_category == "Neutral")
	{
		
			// Modify Morale
			for (var i = 0; i <= _count; i ++) // For every crew member on board...
			{
				var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is the current crew member
				_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.Nothing);
			}	
	}
	
	instance_destroy(myCard);
	instance_destroy();	
	exit;
	
	case "Destination":
	
	if (_category == "Good")
	{
		G.DistanceCost -= _amt;
		show_debug_message("Doing Good Destination Event. Reducing DistanceCost by " + string(_amt) + ".");
		
	} if (_category == "Bad")
	{
		G.DistanceCost += _amt;
		show_debug_message("Doing Bad Destination Event. Increasing DistanceCost by " + string(_amt) + ".");
		
		// Modify Morale
		for (var i = 0; i <= _count; i ++) // For every crew member on board...
		{
			var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is the current crew member
			_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.Bad);
		}	
		
		if (obj_MyBarrels.MyBarrels[# 0,21] < G.DistanceCost)
		{
			show_debug_message("Not enough food. Additional Morale penalty applied.");
			// Modify Morale
			for (var i = 0; i <= _count; i ++) // For every crew member on board...
			{
				var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is the current crew member
				_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.Bad);
			}	
		}
	} if (_category == "Neutral")
	{
		
	}
	
	
	exit;
}