/// @description INIT VARS

event_inherited();
myAction = scr_ExitBuilding;
myMode = G.CurrentTown;
image_speed = 0;
image_index = 0;
visible = false;

myHotzone = point_in_rectangle(mouse_x,mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);