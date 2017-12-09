/// @description SPAWN ONCE

// If Player encounters a random event but we haven't done anything about it yet...
if (obj_Player.hasEvent == true and hasRolled == false)
{
		event_user(1); // Set up a Random Card
		show_debug_message("RandomController activating User Event 0");
		hasRolled = true;
}