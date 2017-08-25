/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 144AE3F4
/// @DnDArgument : "code" "if (myType != scr_Shopper)$(13_10){$(13_10)    script_execute(myType); // ByStander or Passerby$(13_10)}else if(canMove == true) // am I a shopper and can I move?$(13_10){$(13_10)    script_execute(myType); // start my path$(13_10)    canMove = false; // flag false <-- without this, I never leave my starting point.$(13_10)}$(13_10)$(13_10)if (y < obj_Floor.bbox_top)$(13_10){$(13_10)	y += speed ;$(13_10)}$(13_10)$(13_10)if (y > room_height)$(13_10){$(13_10)	y -= speed ;$(13_10)}$(13_10)$(13_10)myScale = abs(scr_scaleAtHeight(scr_adjustedY(y)));$(13_10)image_xscale = myScale;$(13_10)image_yscale = myScale;$(13_10)$(13_10)$(13_10)if (myType == scr_Shopper)$(13_10){$(13_10)	if (path_position == 1) instance_destroy();$(13_10)}"
if (myType != scr_Shopper)
{
    script_execute(myType); // ByStander or Passerby
}else if(canMove == true) // am I a shopper and can I move?
{
    script_execute(myType); // start my path
    canMove = false; // flag false <-- without this, I never leave my starting point.
}

if (y < obj_Floor.bbox_top)
{
	y += speed ;
}

if (y > room_height)
{
	y -= speed ;
}

myScale = abs(scr_scaleAtHeight(scr_adjustedY(y)));
image_xscale = myScale;
image_yscale = myScale;


if (myType == scr_Shopper)
{
	if (path_position == 1) instance_destroy();
}