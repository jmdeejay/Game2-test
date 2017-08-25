/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6AB0FE10
/// @DnDArgument : "code" "/// @description Random Spawn time$(13_10)if (instance_exists(myBaby))$(13_10){$(13_10)	canSpawn = false;$(13_10)} else canSpawn = true;"

{
	/// @description Random Spawn time
if (instance_exists(myBaby))
{
	canSpawn = false;
} else canSpawn = true;
}

