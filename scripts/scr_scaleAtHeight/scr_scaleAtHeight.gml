/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0CDB856B
/// @DnDArgument : "code" "// argument0 is the y of an Object. Usually the moving object.$(13_10)// "atHeight should be pre-adjusted. ie 0 is the bottom of the stage"$(13_10)$(13_10)// var adjuster = obj_Floor.bbox_bottom - argument0;$(13_10)$(13_10)return (obj_Floor.sprite_height / argument0) / 2.5;$(13_10)$(13_10)"
// argument0 is the y of an Object. Usually the moving object.
// "atHeight should be pre-adjusted. ie 0 is the bottom of the stage"

// var adjuster = obj_Floor.bbox_bottom - argument0;

return (obj_Floor.sprite_height / argument0) / 2.5;