/// @description INIT VARIABLES

hasEvent = false;
hasArrived = false;
eventResolved = false;
canSail = false;
myStartX = 0;
myStartY = 0;

myCourse = path_add();
path_set_closed(myCourse, false);
path_clear_points(myCourse);
mySpeed = 25;
myPath = 0;
TargetX = xstart;
TargetY = ystart;

landStart = "";
currentTile = 0;