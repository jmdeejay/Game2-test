/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15558C49
/// @DnDArgument : "code" "speed = random_range(2.01, 4.01);$(13_10)$(13_10)if (myStartPointX < (room_width / 2))$(13_10)	{$(13_10)		direction = 0;$(13_10)	}$(13_10)$(13_10)	if (myStartPointX > (room_width / 2))$(13_10)	{$(13_10)		direction = 180;$(13_10)	}$(13_10)$(13_10)$(13_10)switch (direction)$(13_10){$(13_10)	case 0:$(13_10)	if (place_meeting((x + (4*mySpeed)), y, obj_NPCshadow))$(13_10)	{$(13_10)		y += speed;$(13_10)	}$(13_10)	break;$(13_10)	$(13_10)	case 180:$(13_10)	if (place_meeting((x - (4*mySpeed)), y, obj_NPCshadow))$(13_10)	{$(13_10)		y -= speed;$(13_10)	}$(13_10)	break;$(13_10)}$(13_10)$(13_10)$(13_10)"

{
	speed = random_range(2.01, 4.01);

if (myStartPointX < (room_width / 2))
	{
		direction = 0;
	}

	if (myStartPointX > (room_width / 2))
	{
		direction = 180;
	}


switch (direction)
{
	case 0:
	if (place_meeting((x + (4*mySpeed)), y, obj_NPCshadow))
	{
		y += speed;
	}
	break;
	
	case 180:
	if (place_meeting((x - (4*mySpeed)), y, obj_NPCshadow))
	{
		y -= speed;
	}
	break;
}



}

