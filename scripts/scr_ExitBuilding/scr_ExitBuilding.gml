// Invoked by: obj_ButtonExitRoom

var _mode = argument0;

switch (_mode)
{
	case VAIO: // Just a normal Exit Button behavior.
	room_goto(rm_Port1);
	break;
	
	case DOMO: // Just a normal Exit Button behavior.
	room_goto(rm_Port2);
	break;
	
	case CHIRS: // Just a normal Exit Button behavior.
	room_goto(rm_Port3);
	break;

	case BARC: // Just a normal Exit Button behavior.
	room_goto(rm_Port4);
	break;

	case ZAND: // Just a normal Exit Button behavior.
	room_goto(rm_Port5);
	break;

	case SYRR: // Just a normal Exit Button behavior.
	room_goto(rm_Port6);
	break;
	
	case KAND: // Just a normal Exit Button behavior.
	room_goto(rm_Port7);
	break;
}