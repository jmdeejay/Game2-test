/// @description INIT VAR
event_inherited();

switch (G.CurrentTown)
{
	case VAIO:
	myRoom = rm_Tavern1;
	break;

	case DOMO:
	myRoom = rm_Tavern2;
	break;

	case CHIRS:
	myRoom = rm_Tavern3;
	break;

	case BARC:
	myRoom = rm_Tavern4;
	break;

	case ZAND:
	myRoom = rm_Tavern5;
	break;
	
	case SYRR:
	myRoom = rm_Tavern6;
	break;
	
	case KAND:
	myRoom = rm_Tavern7;
	break;	
}