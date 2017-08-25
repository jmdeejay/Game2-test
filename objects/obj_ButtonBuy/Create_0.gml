/// @description INIT VAR

event_inherited();

myAction = scr_BuyBarrel;
mySpice = 0;

image_speed = 0;
image_index = 2;
visible = false; // Turned on in Step Event

Hotzone_x1 = obj_MrktGrid.bbox_left;
Hotzone_x2 = bbox_right + sprite_width;

Hotzone_y1 = ystart; // Starts at zero, needs update after dialogue finishes.
Hotzone_y2 = ystart + 13;

myHotzone = point_in_rectangle(mouse_x, mouse_y, Hotzone_x1, Hotzone_y1, Hotzone_x2, Hotzone_y2);