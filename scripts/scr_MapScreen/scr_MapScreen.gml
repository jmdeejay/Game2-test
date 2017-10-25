// Invoked by: obj_GameStates


with (obj_Tracer)
{
	if (isDone and obj_GameStates.hasTriggered == false)
	{
		with (obj_MapLeftLabel)
		{
			alarm_set(0, myTicks);	
		}
		obj_GameStates.hasTriggered = true;
	}
}

if (obj_Player.path_position == 1)
{
	room_goto(rm_EndTurn);	
}