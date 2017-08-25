/// @description GOT PICKED
// Is invoked by obj_Card.STEP EVENT

scr_ChooseCap(	thisCaptain.Name, 
				thisCaptain.CrewStatus, 
				thisCaptain.CrewXPGrow,
				thisCaptain.CrewRequired,
				thisCaptain.CrewPayRate,
				thisCaptain.CrewTraitorChance,
				thisCaptain.CrewQuitChance,
				thisCaptain.StartingCannons
			 );
// the script takes these arguments, which are different for each child, and then
// invokes obj_MyCaptain to save them in a DS MAP