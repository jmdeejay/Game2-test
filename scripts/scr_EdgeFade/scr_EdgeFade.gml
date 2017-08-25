/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4412DDE7
/// @DnDArgument : "code" "/// @description Draw Event Only$(13_10)//var leftDistance = argument0 - scr_LeftMargin(scr_adjustedY(argument1));$(13_10)//var rightDistance = scr_RightMargin(scr_adjustedY(argument1)) - argument0;$(13_10)$(13_10)//if (leftDistance < 100) image_alpha = (leftDistance / 100);$(13_10)//if (rightDistance < 100) image_alpha = (rightDistance / 100);$(13_10)$(13_10)return image_alpha;"
/// @description Draw Event Only
//var leftDistance = argument0 - scr_LeftMargin(scr_adjustedY(argument1));
//var rightDistance = scr_RightMargin(scr_adjustedY(argument1)) - argument0;

//if (leftDistance < 100) image_alpha = (leftDistance / 100);
//if (rightDistance < 100) image_alpha = (rightDistance / 100);

return image_alpha;