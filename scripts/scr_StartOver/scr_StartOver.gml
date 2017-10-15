/// @description RESTART COURSE

show_debug_message("Gotta Start Over");
with (obj_Tracer)
{
	x = startPointX;
	y = startPointY;
	isDone = false; // you can move again.
}

with (obj_hexTester)
{
	myState = 0;
	isEncountered = false;
}

with (obj_PathTracker)
{
	listIndex = 0;
	ds_list_clear(global.selectedHex);
}

with (obj_SetSail)
{
	isVisible = false;
	canPress = true;
}

with (obj_Player)
{
	x = myStartX;
	y = myStartY;
	path_clear_points(myCourse);
}

with (obj_GameStates)
{
	hasTriggered = false;	
}

event_user(0); // Hide the Redo button