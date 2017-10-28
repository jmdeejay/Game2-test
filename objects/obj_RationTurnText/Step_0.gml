/// @description AFTER DONE, MAKE FLOATER

if (obj_EndTurn.isDone == true)
{
	if (allDone == false)
	{
		var _xspot = x + string_width(labelOne) + string_width(string(valueOne)) + xMargin;
		var _thisString = string(G.DistanceCost);
		var thisFloater = instance_create_layer(_xspot, y, "Floaters", obj_EndTurnFloater);
		thisFloater.myString = _thisString;
		thisFloater.myColor = COLOR_RED_LIGHT;
		
		obj_MyBarrels.MyBarrels[# 0, 21] -= G.DistanceCost; // Update the Current Rations
		
		allDone = true; // allDone is needed by obj_ButtonStartTurn
		with (obj_PassengerTurnText)
		{
			alarm_set(0, room_speed); // Passenger Text Spawn Floater	
		}
	}
}

if (obj_MyBarrels.MyBarrels[# 0, 21] != obj_EndTurn.previousRations) // Were the Current Rations updated?
{
	var _difference =  obj_EndTurn.previousRations - obj_MyBarrels.MyBarrels[# 0, 21];
	
	for (var i = _difference; i > 0; i--)
	{
		show_debug_message("Loop " + string(i));
		valueOne -= 1;
	}
	
	obj_EndTurn.previousRations = obj_MyBarrels.MyBarrels[# 0, 21];
}