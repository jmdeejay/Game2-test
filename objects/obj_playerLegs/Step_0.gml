/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 587AE9CC
/// @DnDArgument : "code" "/// @description STEP EVENT$(13_10)scr_LegMovement(myParent, targetY); // I need to animate and adjust my direction$(13_10)depth = scr_DepthAdjust(myDepth, y); // I need to adjust my depth or there will be render issues."

{
	/// @description STEP EVENT
scr_LegMovement(myParent, targetY); // I need to animate and adjust my direction
depth = scr_DepthAdjust(myDepth, y); // I need to adjust my depth or there will be render issues.
}

