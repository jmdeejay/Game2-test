/// @description MOVE THE BOAT

if (canPress and isVisible)
{
	with (obj_Player)
	{
		event_user(1); // Move the Boat
	}
	
	with (obj_MyLedger)
	{
		event_user(2);	// Update Payroll
	}
}
canPress = false;