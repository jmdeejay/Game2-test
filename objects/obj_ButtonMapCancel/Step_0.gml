/// @description Update Position

var hotZone = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_MouseController, false, true);

x = xstart + view_get_xport(0);
y = ystart + view_get_yport(0);

if (hotZone)
{
	show_debug_message("That's a hit!");
}