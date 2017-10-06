/// @description Update Position

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

x = _viewx;
y = _viewy;

var hotZone = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_MouseController, false, true);

if (hotZone)
{
	if (mouse_check_button_released(mb_left))
	{
		script_execute(myAction);
	}
}