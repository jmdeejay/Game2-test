/// @description Print ViewX ViewY
var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

show_debug_message("View X is " + string(_viewx));
show_debug_message("View Y is " + string(_viewy));