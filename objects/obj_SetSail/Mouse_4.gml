/// @description MOVE THE BOAT

if (canPress and isVisible)
{
	with (obj_Player)
	{
		event_user(1); // Move the Boat
	}

}
canPress = false;
isVisible = false;