/// @description 
if (isAccessible == false)
{
	myState = States.Cold;

}

if (myState == States.Cold)
{
	switch (landType)
	{
		case landColor.grass:
			image_index = 1;
			isAccessible = false;
		break;
	
		case landColor.shallows:
			image_index = 0;
			myColor = COLOR_BLUE_LIGHT;
			isAccessible = true;
		break;
	
		case landColor.deepsea:
			image_index = 0;
			myColor = COLOR_BLUE_DARK;
			isAccessible = true;
		break;
	
		case landColor.port:
			image_index = 6;
			isAccessible = true;
		break;
   
		case landColor.desert:
			image_index = 3;
			isAccessible = false;
		break;   
	
		case landColor.forest:
			image_index = 2;
			isAccessible = false;
		break;
	
		case landColor.mountain:
			image_index = 4;
			isAccessible = false;
		break;
	
		case landColor.peak:
			image_index = 5;
			isAccessible = false;
		break;
	
		case landColor.neutral:
			myColor = COLOR_WHITE_LIGHT;
			isAccessible = false;
	}
}

if (myState == States.Leader)
{
	switch (landType)
	{
		case landColor.grass:
			image_index = 1;
			isAccessible = false;
		break;
	
		case landColor.shallows:
			image_index = 0;
			myColor = COLOR_BLUE_LEAD;
			isAccessible = true;
		break;
	
		case landColor.deepsea:
			image_index = 0;
			myColor = COLOR_BLUE_LEAD;
			isAccessible = true;
		break;
	
		case landColor.port:
			image_index = 6;
			myColor = COLOR_WHITE_HOT;
			isAccessible = true;
		break;
   
		case landColor.desert:
			image_index = 3;
			isAccessible = false;
		break;   
	
		case landColor.forest:
			image_index = 2;
			isAccessible = false;
		break;
	
		case landColor.mountain:
			image_index = 4;
			isAccessible = false;
		break;
	
		case landColor.peak:
			image_index = 5;
			isAccessible = false;
		break;
	
		case landColor.neutral:
			myColor = COLOR_WHITE_LIGHT;
			isAccessible = false;
	}
}