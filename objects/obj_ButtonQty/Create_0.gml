/// @description INIT VAR

event_inherited();

myAction = scr_placeholder;
myInput = noone;
myType = 0; // Change to 1 if Minus Qty

image_speed = 0;
image_index = 0; // Change to 2 if Minus Qty

visible = false; // Turned on in Step Event

Hotzone_x1 = obj_StorePanel.bbox_left;
Hotzone_x2 = 375;

Hotzone_y1 = ystart; // Starts at zero, needs update after dialogue finishes.
Hotzone_y2 = ystart + 13;

myHotzone = point_in_rectangle(mouse_x, mouse_y, Hotzone_x1, Hotzone_y1, Hotzone_x2, Hotzone_y2);