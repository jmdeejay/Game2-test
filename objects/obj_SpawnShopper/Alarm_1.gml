/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 086E97DB
/// @DnDArgument : "code" "/// spawn shopper$(13_10)if(canSpawn == true)$(13_10){ $(13_10)	myBaby = instance_create_layer( x, y, "Shadows", obj_NPCshadow)$(13_10)	with myBaby$(13_10)	{$(13_10)		myType = scr_Shopper;$(13_10)		canMove = true;$(13_10)		myPath = other.mySpawnPoint;$(13_10)	}$(13_10)}$(13_10)alarm_set(1,irandom_range(120, 240));"

{
	/// spawn shopper
if(canSpawn == true)
{ 
	myBaby = instance_create_layer( x, y, "Shadows", obj_NPCshadow)
	with myBaby
	{
		myType = scr_Shopper;
		canMove = true;
		myPath = other.mySpawnPoint;
	}
}
alarm_set(1,irandom_range(120, 240));
}

