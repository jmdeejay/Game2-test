/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7842BD43
/// @DnDArgument : "code" "// Argument0 is the y of an object. Usually the moving object. $(13_10)// "atHeight should be pre-adjusted, ie 0 is the bottom of the stage"$(13_10)$(13_10)var adjuster = obj_Floor.bbox_bottom - argument0;$(13_10)$(13_10)return adjuster / cos(global.theta);"

{
	// Argument0 is the y of an object. Usually the moving object. 
// "atHeight should be pre-adjusted, ie 0 is the bottom of the stage"

var adjuster = obj_Floor.bbox_bottom - argument0;

return adjuster / cos(global.theta);
}

