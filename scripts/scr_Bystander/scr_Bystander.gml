/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38763528
/// @DnDArgument : "code" "var myRange = 1;$(13_10)if (alarm[0] < room_speed * 2.75) speed = 0;$(13_10)$(13_10)if (distance_to_object(obj_shadow) < 5)$(13_10){$(13_10)    alarm[0] = room_speed * 3;$(13_10)    direction = point_direction(obj_shadow.x, obj_shadow.y, x, y);$(13_10)	speed = 3;	$(13_10)}$(13_10)if (alarm[0] <= 0)$(13_10){$(13_10)    var distanceToStart = distance_to_point(myStartPointX, myStartPointY);$(13_10)    if (distanceToStart > 1)$(13_10)    {$(13_10)        move_towards_point(myStartPointX, myStartPointY, min(3, distanceToStart));$(13_10)    }$(13_10)    else$(13_10)    {$(13_10)        speed = 0;$(13_10)    }$(13_10)}"

{
	var myRange = 1;
if (alarm[0] < room_speed * 2.75) speed = 0;

if (distance_to_object(obj_shadow) < 5)
{
    alarm[0] = room_speed * 3;
    direction = point_direction(obj_shadow.x, obj_shadow.y, x, y);
	speed = 3;	
}
if (alarm[0] <= 0)
{
    var distanceToStart = distance_to_point(myStartPointX, myStartPointY);
    if (distanceToStart > 1)
    {
        move_towards_point(myStartPointX, myStartPointY, min(3, distanceToStart));
    }
    else
    {
        speed = 0;
    }
}
}

