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