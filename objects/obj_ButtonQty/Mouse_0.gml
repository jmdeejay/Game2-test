/// @description Activate Script

if (pressDelay)
	script_execute(myAction);

switch (myType)
{
	case 0: // + Button
	image_index = 1;
	break;
	
	case 1: // - Button
	image_index = 3;
	break;
	
}