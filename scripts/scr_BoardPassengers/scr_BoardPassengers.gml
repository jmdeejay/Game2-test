// Invoked by: obj_ButtonBoardPassengers

var _waitingPassengers = obj_AllPassengers.PassengersForPort[obj_MyShip.MyDestination];

// Repeat this process for however many Passengers are waiting at the Port that MyShip is going to.
repeat (_waitingPassengers)
{
	if (G.MaxBarrels - G.CurrentBarrels > 0) // Is there space?
	{
			if (obj_MyShip.CookingSkill > obj_MyShip.CurrentPassengers) // Are there enough Cooks?
			{
				// add a passenger
				obj_MyShip.CurrentPassengers ++;
				show_debug_message("There are " + string(obj_MyShip.CurrentPassengers) + " on board.")
				// subtract passenger from port
				obj_AllPassengers.PassengersForPort[obj_MyShip.MyDestination] -= 1;
				show_debug_message("There are " + string(obj_AllPassengers.PassengersForPort[obj_MyShip.MyDestination]) + " passengers remaining.")
				// update CurrentBarrels
				obj_MyBarrels.MyBarrels[# 0, 18] = obj_MyShip.CurrentPassengers;
				with (obj_MyBarrels)
				{
					event_user(0); // Sum the barrels	
				}
			}
	}	
}