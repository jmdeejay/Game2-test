/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 086E97DB
/// @DnDArgument : "code" "/// spawn passerby Left Side$(13_10)$(13_10)var spawnPointY = y;$(13_10)//var spawnLeftSide = (scr_LeftMargin(scr_adjustedY(spawnPointY))) + 10;$(13_10)// var spawnRightSide = (scr_RightMargin(scr_adjustedY(spawnPointY))) - 10;$(13_10)if (canSpawn == true)$(13_10){$(13_10)	myBaby = instance_create_layer(x, spawnPointY, "Shadows", obj_NPCshadow)$(13_10)	with myBaby$(13_10)	{$(13_10)		myType = scr_Passerby;$(13_10)		direction = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)alarm_set(1, irandom_range(60, 240));"
/// spawn passerby Left Side

var spawnPointY = y;
//var spawnLeftSide = (scr_LeftMargin(scr_adjustedY(spawnPointY))) + 10;
// var spawnRightSide = (scr_RightMargin(scr_adjustedY(spawnPointY))) - 10;
if (canSpawn == true)
{
	myBaby = instance_create_layer(x, spawnPointY, "Shadows", obj_NPCshadow)
	with myBaby
	{
		myType = scr_Passerby;
		direction = 0;
	}
}

alarm_set(1, irandom_range(60, 240));