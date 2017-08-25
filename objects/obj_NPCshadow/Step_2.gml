/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 47F0C3EF
/// @DnDArgument : "code" "/// @description Animation Checks$(13_10)if (x != xprevious) // did I move?$(13_10){$(13_10)	if ((x - xprevious)> 0) $(13_10)	dx = 1;$(13_10)	if ((x - xprevious) < 0)$(13_10)	dx = -1;$(13_10)} $(13_10)$(13_10)if (y != yprevious) dy = 1;$(13_10)$(13_10)if ((x - xprevious) == 0 and (y - yprevious) == 0)$(13_10){$(13_10)	dx = 0;$(13_10)	dy = 0;$(13_10)}$(13_10)"

{
	/// @description Animation Checks
if (x != xprevious) // did I move?
{
	if ((x - xprevious)> 0) 
	dx = 1;
	if ((x - xprevious) < 0)
	dx = -1;
} 

if (y != yprevious) dy = 1;

if ((x - xprevious) == 0 and (y - yprevious) == 0)
{
	dx = 0;
	dy = 0;
}

}

