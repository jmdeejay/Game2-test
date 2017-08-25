/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40DCCA54
/// @DnDArgument : "code" "// Argument0 is a number, the current y value of moving object.$(13_10)// Argument1 is a number, the current y value plus mySpeed of moving object.$(13_10)// Argument2 is a number, the current x value of moving object.$(13_10)$(13_10)var beforeMovingOpposite = -1 * (room_width / 2 - argument2);$(13_10)var beforeMovingAdjacent = scr_heightAtVanishPoint() - scr_adjustedY(argument0);$(13_10)var afterMovingAdjacent = scr_heightAtVanishPoint() - scr_adjustedY(argument1);$(13_10)var myAngle = arctan(beforeMovingOpposite/beforeMovingAdjacent);$(13_10)var afterMovingOpposite = afterMovingAdjacent * tan(myAngle);$(13_10)$(13_10)return beforeMovingOpposite - afterMovingOpposite;$(13_10)"

{
	// Argument0 is a number, the current y value of moving object.
// Argument1 is a number, the current y value plus mySpeed of moving object.
// Argument2 is a number, the current x value of moving object.

var beforeMovingOpposite = -1 * (room_width / 2 - argument2);
var beforeMovingAdjacent = scr_heightAtVanishPoint() - scr_adjustedY(argument0);
var afterMovingAdjacent = scr_heightAtVanishPoint() - scr_adjustedY(argument1);
var myAngle = arctan(beforeMovingOpposite/beforeMovingAdjacent);
var afterMovingOpposite = afterMovingAdjacent * tan(myAngle);

return beforeMovingOpposite - afterMovingOpposite;

}

