/// @description RESTART COURSE
// Invoked by: obj_UIMapRedo


show_debug_message("Gotta Start Over");

scr_ResetPassengers();

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

with (obj_MapLeftLabel)
{
	event_user(0); // Reset the passenger labels.	
}

with (obj_ButtonBoardPassengers)
{
	event_user(0); // Reset the Board Passengers button
}

with (obj_MyShip)
{
	MyDestination = 0;	
}

event_user(0); // Hide the Redo button