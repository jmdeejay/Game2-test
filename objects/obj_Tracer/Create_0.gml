/// @description INIT VAR
myPath = path_add(); // empty path for mp_grid
addToList = true; // used in collision event: obj_hexTester
isDone = false; // used to stop movement once port is reached.

startPointX = x;
startPointY = y;

oldHex = noone;
thisHex = noone;

destinationPort = "";
isDestination = false;