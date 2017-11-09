// Invoked by: obj_Tracer Step Event(?)
// Argument0 is a number range from 1 thru 7 (VAIO thru KAND) which is equivalent to a Port with passengers.

var _slot = argument0;
var _port = "";

switch (_slot)
{
	case VAIO:
	_port = "Port0_1";
	break;
	
	case DOMO:
	_port = "Port10_1";
	break;
	
	case CHIRS:
	_port = "Port22_4";
	break;
	
	case ZAND:
	_port = "Port8_15";
	break;
	
	case BARC:
	_port = "Port1_22";
	break;
	
	case SYRR:
	_port = "Port15_26";
	break;
	
	case KAND:
	_port = "Port24_18";
	break;
}

return _port;