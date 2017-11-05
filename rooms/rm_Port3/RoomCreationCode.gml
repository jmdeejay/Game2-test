/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B58BCF1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)ds_stack_push(G.stateStack, GameState.InTownScreen);$(13_10)with (obj_MyBarrels)$(13_10){$(13_10)	event_user(0); // Sum Barrels$(13_10)}$(13_10)$(13_10)with (obj_MyShip)$(13_10){$(13_10)	event_user(2); // Update Readiness$(13_10)	event_user(3); // Update Cooking$(13_10)	event_user(4); // Update Gunning$(13_10)}$(13_10)$(13_10)with (obj_MyCaptain)$(13_10){$(13_10)	event_user(1);$(13_10)}$(13_10)scr_CalcCrewReadiness();"
/// @description Execute Code

ds_stack_push(G.stateStack, GameState.InTownScreen);
with (obj_MyBarrels)
{
	event_user(0); // Sum Barrels
}

with (obj_MyShip)
{
	event_user(2); // Update Readiness
	event_user(3); // Update Cooking
	event_user(4); // Update Gunning
}

with (obj_MyCaptain)
{
	event_user(1);
}
scr_CalcCrewReadiness();