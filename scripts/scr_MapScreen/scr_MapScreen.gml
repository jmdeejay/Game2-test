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
	
	if (instance_exists(obj_RandomCard))
	{
		canSail = false;
		obj_SetSail.visible = false;
	}
	
	
	if (hasArrived)
	{
		
		room_goto(rm_EndTurn);	
	}
}