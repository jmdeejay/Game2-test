/// @description BUILD PATH



for (var i = 0; i <= ds_list_size(global.selectedHex); i++)
{
	var _hex = ds_list_find_value(global.selectedHex, i);
	if (!is_undefined(_hex))
		path_add_point(myCourse, _hex.x, _hex.y, mySpeed);
	
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
}

path_start(myCourse, mySpeed, path_action_stop, false); 