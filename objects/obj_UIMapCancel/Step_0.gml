/// @description Update Position

var hotZone = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_MouseController, false, true);

if (hotZone)
{
	if (mouse_check_button_released(mb_left))
	{
		script_execute(myAction);
	}
}