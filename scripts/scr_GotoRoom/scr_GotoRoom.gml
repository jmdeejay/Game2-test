// For switching Rooms.
// argument0 is String. Determines which room to go to.

var myRoom = argument0;

switch (myRoom)
{
	case "vaios":
	room_goto(rm_vaios);
	break;
	
	case "domos":
	room_goto(rm_domos);
	break;
	
	case "chirsk":
	room_goto(rm_chirsk);
	break;
	
	case "barcellus":
	room_goto(rm_barcellus);
	break;
	
	case "zandretta":
	room_goto(rm_zandretta);
	break;
	
	case "syrr":
	room_goto(rm_syrr);
	break;
	
	case "kanda":
	room_goto(rm_kanda);
	break;
	
	case "":
	room_goto(room0);
	break;
}