/// @description INIT VAR

event_inherited();

myInput = noone;

myType = 0; 
// 0 Means Add Qty
// 1 Means Minus Qty
// 2 Means Confirm
// 3 Means Cancel

pressDelay = false;

targetGood = "";

image_speed = 0;
image_index = 0; // Change to 2 if Minus Qty

// visible = false; // Turned on in Step Event

Hotzone_x1 = obj_StorePanel.bbox_left; // zone detection
Hotzone_x2 = 375; // zone detection

Hotzone_y1 = ystart; // Starts at zero, needs update after dialogue finishes.
Hotzone_y2 = ystart + 13;

