/// @description CREATE CAPS
// Triggered by obj_hexMap Alarm0()

if (isAccessible == true)
	instance_create_layer(x,y, "Colliders", obj_HexCapWater);
else
	instance_create_layer(x,y, "Colliders", obj_HexCapLand);