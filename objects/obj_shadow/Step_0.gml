/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 144AE3F4
/// @DnDArgument : "code" "dx = keyboard_check(vk_right)-keyboard_check(vk_left); // should end up being 0 or 1$(13_10)dy = keyboard_check(vk_down)-keyboard_check(vk_up); // should end up being 0 or 1$(13_10)// NOTE: dx and dy input method allows for diagonal movement that is not cumulative.$(13_10)// However moving up no longer puts you towards vanishing point.$(13_10)$(13_10)if(point_distance(0,0,dx,dy)>0) // are one of those keys being pressed?$(13_10){$(13_10)     motion_set(point_direction(0,0, dx, dy), mySpeed); // move me in the direction that they are pressed$(13_10)}$(13_10)else$(13_10){$(13_10)	motion_set(0,0); // stop moving$(13_10)}$(13_10)$(13_10)$(13_10)if (y < obj_Floor.bbox_top) // am I above the stage floor?$(13_10){$(13_10)	y += mySpeed ; // Move me back down. NOTE: Defective because the player can "outrun" this limitation.$(13_10)}$(13_10)$(13_10)if (y > room_height) // am I below the room? NOTE: Should be changed to the bottom of stage.$(13_10){$(13_10)	y -= mySpeed ; // place me back within the room.$(13_10)}$(13_10)$(13_10)myScale = abs(scr_scaleAtHeight(scr_adjustedY(y)));$(13_10)image_xscale = myScale;$(13_10)image_yscale = myScale;$(13_10)mySpeed = myBaseSpeed * myScale;$(13_10)"
dx = keyboard_check(vk_right)-keyboard_check(vk_left); // should end up being 0 or 1
dy = keyboard_check(vk_down)-keyboard_check(vk_up); // should end up being 0 or 1
// NOTE: dx and dy input method allows for diagonal movement that is not cumulative.
// However moving up no longer puts you towards vanishing point.

if(point_distance(0,0,dx,dy)>0) // are one of those keys being pressed?
{
     motion_set(point_direction(0,0, dx, dy), mySpeed); // move me in the direction that they are pressed
}
else
{
	motion_set(0,0); // stop moving
}


if (y < obj_Floor.bbox_top) // am I above the stage floor?
{
	y += mySpeed ; // Move me back down. NOTE: Defective because the player can "outrun" this limitation.
}

if (y > room_height) // am I below the room? NOTE: Should be changed to the bottom of stage.
{
	y -= mySpeed ; // place me back within the room.
}

myScale = abs(scr_scaleAtHeight(scr_adjustedY(y)));
image_xscale = myScale;
image_yscale = myScale;
mySpeed = myBaseSpeed * myScale;