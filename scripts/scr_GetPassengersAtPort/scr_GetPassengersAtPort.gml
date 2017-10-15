// Invoked by: obj_MapLeftLabel - Step Event
// Argument0 is a string like "Port10_1" which is equivalent to a Port with passengers.

var _port = argument0;
var _slot = 0;

switch (_port)
{
	case "Port0_1":
	_slot = VAIO;
	break;
	
	case "Port10_1":
	_slot = DOMO;
	break;
	
	case "Port22_4":
	_slot = CHIRS;
	break;
	
	case "Port8_15":
	_slot = ZAND;
	break;
	
	case "Port1_22":
	_slot = BARC;
	break;
	
	case "Port15_26":
	_slot = SYRR;
	break;
	
	case "Port24_18":
	_slot = KAND;
	break;
}

return obj_AllPassengers.PassengersForPort[_slot];