/// @description MOVE BOAT

if (canSail) // starts at false, set to 'true' in User Event 1
{
	var _dist = point_distance(x, y, TargetX, TargetY); // How close are we to the next cell?
	show_debug_message("Player Boat: Distance to next cell is: " + string(_dist));
	move_towards_point(TargetX, TargetY, min(1, _dist))
	if (_dist < 0.4 and (_dist < path_get_length(myCourse)))
	{
		show_debug_message("Player Boat: Arrived at next cell.");
		// We have arrived at the next cell
		path_delete_point(myCourse, 0);
		TargetX = path_get_point_x(myCourse, 0);
		TargetY = path_get_point_y(myCourse, 0);
		show_debug_message("Player Boat: My X and Y is: " + string(x) + "," + string(y));
		show_debug_message("Player Boat: Target X and Y is: " + string(TargetX) + "," + string(TargetY));
		if (!hasEvent)
		{
			var _chance = random(0.99);
			show_debug_message("random roll is " + string(_chance));
			if (_chance < G.RandomChance)
			{
				hasEvent = true;
				show_debug_message("A Random Event occured!");
			}
		}
	} else
	{
		show_debug_message("Player Boat: Reached Last Cell.");
		hasArrived = true; // TRiggers GameState Mapscreen to goto Room End
	}
}