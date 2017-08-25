/// @description SPAWN TRACER

//Add walls
mp_grid_add_instances(global.ourGrid, obj_HexCapLand, true);
mp_grid_add_instances(global.ourGrid, obj_HexCapWater, true);

with (obj_hexTester)
{
	if (landTitle == "Port0_1") // set by obj_hexMap.Alarm[0] Event
	{
		show_debug_message("Tracer Start Here.");
		other.tracerX = x;
		other.tracerY = y;
	}
}

 instance_create_layer(tracerX, tracerY, "Colliders", obj_Tracer);

with (obj_Player)
{
	event_user(0);
}