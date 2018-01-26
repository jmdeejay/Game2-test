/// @description INIT VARS
event_inherited();
myAction = undefined;

myToolTip = "";
myDestination = 0;
myAmount = 0;
myCard = instance_nearest(x, y, obj_RandomCard);
myType = "";
nextCard = noone;
depth = myCard.depth - 5;

if (myCard != noone)
{
	xOffset = xstart - myCard.x;
	yOffset = ystart - myCard.y;
}

image_speed = 0;
image_index = 0;