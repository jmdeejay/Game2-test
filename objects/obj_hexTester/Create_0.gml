/// @description Init variables

// Map Building Variables
vectorX = 0; // also for Pathfinding
vectorY = 0; // also for Pathfinding
landType = 0;
tileID = 0;


// Save / Load Variables
tileKey = scr_getTileKey();
var _savedata = ds_map_find_value(global.hexLandMap, tileKey);
if (!is_undefined(_savedata))
	landType = _savedata;
	else landType = 0;	

image_speed = 0;
codeName = "";
landTitle = ""; // For Ports

// Pathfinding variables
myColor = COLOR_WHITE_LIGHT;
myBlendMode = bm_normal;
myAlpha = 1.0;
alphaIncrement = 0.05;
isAccessible = false;
myState = 0;
isEncountered = false;

alarm_set(0, 3);

enum States 
{
	Cold = 0,
	Warm = 1,
	Hot = 2,
	Leader = 3
}



