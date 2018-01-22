/// @description Init Variables

scr_enumInit();
global.hexLandMap = ds_map_create(); // create map
global.hexCount = 0;

var hexCol = 25;
var hexRow = 27;
myMap = ds_grid_create(hexCol, hexRow);

myXpos = x;  
myYpos = y; // Without these two variables, the table builds at the top right of the room.

c = 0; // start at 0
r = 0; // start at 0

cmax = ds_grid_width(myMap);
rmax = ds_grid_height(myMap);

event_user(0); // Build Hex Tiles

show_debug_message("HexMap X address: " + string(x));
show_debug_message("HexMap Y address: " + string(y));




