/// @description GOT PICKED
// Is invoked by obj_Card.STEP EVENT

scr_ChooseCap(	thisCaptain.Name, 
				thisCaptain.CrewStatus, 
				thisCaptain.CrewXPGrow,
				thisCaptain.CrewReadinessModifier,
				thisCaptain.CrewPayRate,
				thisCaptain.CrewTraitorChance,
				thisCaptain.MoraleModifier,
				thisCaptain.StartingCannons,
				thisCaptain.LuckModifier
			 );
// the script takes these arguments, which are different for each child, and then
// invokes obj_MyCaptain to save them in a DS MAP