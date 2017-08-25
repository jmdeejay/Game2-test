/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7987D8F8
/// @DnDArgument : "code" "/// @description Run Step Event$(13_10)// argument0 is myDepth$(13_10)// argument1 is y address$(13_10)$(13_10)var newDepth = argument0 - (argument1 - obj_Floor.bbox_top);$(13_10)$(13_10)return newDepth;"

{
	/// @description Run Step Event
// argument0 is myDepth
// argument1 is y address

var newDepth = argument0 - (argument1 - obj_Floor.bbox_top);

return newDepth;
}

