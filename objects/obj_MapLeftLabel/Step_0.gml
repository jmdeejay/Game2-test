/// @description MODE SWITCH

if (visible)
{
	switch (myMode)
	{
	    case 0: // Show Barrel Space Available
	    labelOne = "Space: "
	    valueOne = G.MaxBarrels - G.CurrentBarrels;
	    break;
    
	    case 1: // Show Cooking Skill
	    //do stuff
	    labelOne = "Cooking: "
	    valueOne = obj_MyShip.CookingSkill;
	    break;
    
	    case 2: // Show Passengers Here at this Port
	    //do stuff
	    labelOne = "Passengers: ";
		var _destination = obj_Tracer.destinationPort;	
	    valueOne = scr_GetPassengersAtPort(_destination);
	    break;
    
	    case 3: // Show Ticket Revenue
	    labelOne = "Ticket Sales: ";
		var _destination = obj_Tracer.destinationPort;
		var _passengers = scr_GetPassengersAtPort(_destination);
	    valueOne = _passengers * obj_MyLedger.TicketPrice;
	    break;
	}
}
