/// @description MODE SWITCH

event_inherited();

switch (myMode)
{
	case 0: // Show Barrel Space Available
	labelOne = "Space: ";
	valueOne = G.MaxBarrels - G.CurrentBarrels;
	break;
    
	case 1: // Show Cooking Skill
	labelOne = "Cooking: ";
	if(instance_exists(obj_MyShip)){
		valueOne = obj_MyShip.CookingSkill;
	}
	break;
    
	case 2: // Show Passengers Here at this Port
	labelOne = "Passengers: ";
	if(instance_exists(obj_Tracer)){
	  var _destination = obj_Tracer.destinationPort;	
	  valueOne = scr_GetPassengersAtPort(_destination);
	}
	break;
    
	case 3: // Show Ticket Revenue
	labelOne = "Ticket Sales: ";
	if(instance_exists(obj_Tracer) && instance_exists(obj_MyLedger)){
		var _destination = obj_Tracer.destinationPort;
		var _passengers = scr_GetPassengersAtPort(_destination);
		valueOne = _passengers * obj_MyLedger.TicketPrice;
	}
	break;
}
