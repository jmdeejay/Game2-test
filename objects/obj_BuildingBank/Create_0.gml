/// @description INIT VAR
event_inherited();

switch (G.CurrentTown)
{
	case VAIO:
	myRoom = rm_Bank1;
	break;

	case DOMO:
	myRoom = rm_Bank2;
	break;

	case CHIRS:
	myRoom = rm_Bank3;
	break;

	case BARC:
	myRoom = rm_Bank4;
	break;

	case ZAND:
	myRoom = rm_Bank5;
	break;
	
	case SYRR:
	myRoom = rm_Bank6;
	break;
	
	case KAND:
	myRoom = rm_Bank7;
	break;	
}