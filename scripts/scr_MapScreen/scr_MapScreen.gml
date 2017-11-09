// Invoked by: obj_GameStates

with (obj_Tracer)
{
	if (isDone and obj_GameStates.hasTriggered == false)
	{
		with (obj_MapLeftLabel)
		{
			alarm_set(0, myTicks);	// Board Passengers UI
		}
		obj_GameStates.hasTriggered = true;
	}
}

with (obj_Player)
{
	if (path_position == 1)
	{
		
		room_goto(rm_EndTurn);	
	}
}