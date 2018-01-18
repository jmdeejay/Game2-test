/// @description RESUME PATH
// Invoked by: scr_OkayButton


for (var i = currentTile; i <= ds_list_size(global.selectedHex); i++)
{
	var _hex = ds_list_find_value(global.selectedHex, i);
	if (!is_undefined(_hex))
		path_add_point(myCourse, _hex.x, _hex.y, mySpeed);
		
}

path_start(myCourse, mySpeed, path_action_stop, false); 