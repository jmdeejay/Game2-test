/// @description UPDATE BOOLS

if (!isVisible)
	visible = false;
else
	visible = true;

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

x = _viewx;
y = _viewy;


var _rations = obj_MyBarrels.MyBarrels[# 0, 21];
if (_rations < G.DistanceCost)
{
	myString = "Get\nRations";
	myColor = COLOR_RED_DARK;
	canPress = false;
} else 
{
	myString = "Set Sail";
	myColor = COLOR_WHITE_LIGHT;
}