/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A67B9C3
/// @DnDArgument : "code" "/// @description for Step Event$(13_10)// Initially called "LegMovement" because the Legs were the first animated object created.$(13_10)// However the Torso and Head also use this same script for animation and directionality.$(13_10)// argument0 is a shadow object. Either player or NPC shadow.$(13_10)// argument1 is y value for placement$(13_10)$(13_10)myScale = abs(scr_scaleAtHeight(scr_adjustedY(y))); $(13_10)x = argument0.x;$(13_10)y = (argument0.y - (argument1 * myScale)); // recall that argument1 is targetY.$(13_10)$(13_10)if(argument0.dx != 0 or argument0.dy != 0) image_speed = 1;$(13_10)$(13_10)if(abs(argument0.dx)) $(13_10){$(13_10)myXscale = (-1 * argument0.dx); $(13_10)}$(13_10)$(13_10)if (argument0.dx == 0 and argument0.dy == 0)$(13_10){$(13_10)	image_index = 0;$(13_10)	image_speed = 0;$(13_10)}$(13_10)$(13_10)image_xscale = myScale * 2 * myXscale;$(13_10)image_yscale = myScale * 2;"

{
	/// @description for Step Event
// Initially called "LegMovement" because the Legs were the first animated object created.
// However the Torso and Head also use this same script for animation and directionality.
// argument0 is a shadow object. Either player or NPC shadow.
// argument1 is y value for placement

myScale = abs(scr_scaleAtHeight(scr_adjustedY(y))); 
x = argument0.x;
y = (argument0.y - (argument1 * myScale)); // recall that argument1 is targetY.

if(argument0.dx != 0 or argument0.dy != 0) image_speed = 1;

if(abs(argument0.dx)) 
{
myXscale = (-1 * argument0.dx); 
}

if (argument0.dx == 0 and argument0.dy == 0)
{
	image_index = 0;
	image_speed = 0;
}

image_xscale = myScale * 2 * myXscale;
image_yscale = myScale * 2;
}

