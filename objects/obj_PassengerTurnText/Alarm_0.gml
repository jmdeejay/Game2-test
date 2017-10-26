/// @description SPAWN FLOATER
// Invoked by: obj_RationTurnText - Step Event

if (obj_EndTurn.isDone == true)
{
	if (allDone == false and obj_RationTurnText.allDone == true)
	{
		var _xspot = x + string_width(labelOne) + string_width(string(valueOne));
		var _thisString = string(obj_MyShip.CurrentPassengers * obj_MyLedger.TicketPrice);
		var thisFloater = instance_create_layer(_xspot, y, "Floaters", obj_EndTurnFloater);
		thisFloater.myString = _thisString;
		thisFloater.myColor = COLOR_GREEN_LIGHT;
		allDone = true;
	}
}