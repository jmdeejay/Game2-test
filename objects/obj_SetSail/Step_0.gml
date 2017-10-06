/// @description UPDATE BOOLS

if (!isVisible)
	visible = false;
else
	visible = true;

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

x = _viewx;
y = _viewy;