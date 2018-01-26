// Invoked by: obj_ButtonRandomOKAY
// Objectives: enact the effects of myCard, destroy myCard, and proceed with boat animation.
// Note: Uses variables specific to obj_ButtonOKAY

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
		for (var i = 0; i < _count; i ++) // For every crew member on board...
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
			for (var i = 0; i < _count; i ++) // For every crew member on board...
			{
				var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is the current crew member
				_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.Bad);
			}
	}
	if (_category == "Neutral")
	{
		
			// Modify Morale
			for (var i = 0; i < _count; i ++) // For every crew member on board...
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
		// Get the id of the hexagon the boat is resting on
		var _boatHex = instance_place(obj_Player.x, obj_Player.y, obj_hexTester);
		
		// Search the ds_list for this id.
		var _index = ds_list_find_index(global.selectedHex, _boatHex);
		obj_Player.currentTile = _index;
		
		// Delete list entries up until _index
		while (ds_list_size(global.selectedHex) - 1 > _index)
		{
		    ds_list_delete(global.selectedHex, _index + 1);
		}
		
		// Teleport Tracer
		obj_Tracer.x = obj_Player.x;
		obj_Tracer.y = obj_Player.y;
		
		// Move Tracer
		obj_Tracer.isDone = false;
		
		var _portName = scr_GetPortString(_amt);
		var _portLocation = scr_GetPort(_portName);
		var _mx = 0;
		var _my = 0;
		path_clear_points(obj_Tracer.myPath);
		
		// Get x/y location of new destination
		with (obj_hexTester)
		{
			if (landTitle == _portName)
			{
				_mx = x + 16;
				_my = y + 16;
			}
		}
		
		with (obj_Tracer)
		{
			if (mp_grid_path(global.ourGrid, myPath, x, y, _mx, _my, 1) and isDone == false)
			{
				path_start(myPath, 8, path_action_stop, false);
				if (path_position == 1)
				{
					obj_Player.eventResolved = true;
				}
			}
		}
		with (obj_Player)
		{
			event_user(2); // Resume Sailing	
		}
	}

	exit;
}