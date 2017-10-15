/// @description MODE SWITCH

if (visible)
{
	switch (myMode)
	{
	    case 0: // Show Barrel Space Available
	    myPath = pth_RightLabelOne;
	    labelOne = "Space: "
	    valueOne = G.MaxBarrels - G.CurrentBarrels;
	    break;
    
	    case 1: // Show Cooking Skill
	    //do stuff
	    myPath = pth_RightLabelTwo;
	    labelOne = "Cooking: "
	    valueOne = obj_MyShip.CookingSkill;
	    break;
    
	    case 2: // Show Passengers Here at this Port
	    //do stuff
	    myPath = pth_RightLabelThree;
	    labelOne = "Passengers: ";
		var _destination = obj_Tracer.destinationPort;	
	    valueOne = scr_GetPassengersAtPort(_destination);
	    break;
    
	    case 3: // Show Ticket Revenue
	    myPath = pth_RightLabelFour;
	    labelOne = "Ticket Sales: ";
		var _destination = obj_Tracer.destinationPort;
		var _passengers = scr_GetPassengersAtPort(_destination);
	    valueOne = _passengers * obj_MyLedger.TicketPrice;
	    break;
	}
}
