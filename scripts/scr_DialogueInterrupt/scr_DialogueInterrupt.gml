// Invoked by: obj_MrktSupply
// Purpose: When User clicks on a column, it should set the global Town Destination variable, and trigger a
// reactive dialogue event where the shopkeeper remarks on where you are going next.

var _location = argument0; // This will be a number between 1 and 7.

G.TownSelected = _location;

switch (_location)
{
	case VAIO:
	with (obj_Dialog)
	{
		event_user(0); // Reset Dialogue
		message[0] = obj_Codex.MRK_DestinationVaio;
	}
	break;
	
	case DOMO:
	with (obj_Dialog)
	{
		event_user(0); // Reset Dialogue
		message[0] = obj_Codex.MRK_DestinationDomos;			
	}
	break;
	
	case CHIRS:
	with (obj_Dialog)
	{
		event_user(0); // Reset Dialogue
		message[0] = obj_Codex.MRK_DestinationChirsk;
		
	}
	break;
	
	case BARC:
	with (obj_Dialog)
	{
		event_user(0); // Reset Dialogue
		message[0] = obj_Codex.MRK_DestinationBarc;	
	}
	break;

	case ZAND:
	with (obj_Dialog)
	{
		event_user(0); // Reset Dialogue
		message[0] = obj_Codex.MRK_DestinationZand;		
	}
	break;
	
	case SYRR:
	with (obj_Dialog)
	{
		event_user(0); // Reset Dialogue
		message[0] = obj_Codex.MRK_DestinationSyrr;
	}
	break;
	
	case KAND:
	with (obj_Dialog)
	{
		event_user(0); // Reset Dialogue	
		message[0] = obj_Codex.MRK_DestinationKand;		
	}
	break;
}

ds_stack_push(G.stateStack, GameState.BuildingDialog);
