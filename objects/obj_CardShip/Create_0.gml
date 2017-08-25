/// @description INIT VARIABLES
// This object is a "selection hotspot" for large, clickable choices.
event_inherited();

myBlend = COLOR_WHITE_DARK; // During Draw, Card gets brighter if Mouse Enter, Clicked.
myStartX = x;
myStartY = y;
isHot = false; // Mouse-Over
isSelected = false; // Mouse-Click

myShip = instance_nearest(x,y, obj_AllShipPicker);