/// @description SPAWN CAPS
// Set by Room Start Event, 10 frames.

with (obj_hexTester)
{
	event_user(0);
	if (landType == landColor.port)
	{
		// Used later on in obj_GridController
		landTitle = "Port" + string(vectorX) + "_" + string(vectorY);
	}
}

