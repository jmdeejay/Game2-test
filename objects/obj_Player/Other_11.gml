/// @description BUILD PATH
// Invoked by: obj_OkayButton and obj_SetSail


for (var i = 0; i <= ds_list_size(global.selectedHex); i++)
{
	var _hex = ds_list_find_value(global.selectedHex, i);
	if (!is_undefined(_hex))
		path_add_point(myCourse, _hex.x, _hex.y, mySpeed);
}

TargetX = path_get_point_x(myCourse, 1);
TargetY = path_get_point_y(myCourse, 1);
show_debug_message("Player Boat: My X and Y is: " + string(x) + "," + string(y));
show_debug_message("Player Boat: Target X and Y is: " + string(TargetX) + "," + string(TargetY));
canSail = true;
