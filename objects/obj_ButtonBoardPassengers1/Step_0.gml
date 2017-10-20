/// @description CHECK ALL

if (isTriggered) // Did obj_Tracer hit a Port?
{
	with (obj_MapLeftLabel) // With All Left Labels
	{
		if (myMode == 0) // The one that is concerned with space remaining
		{
			if (valueOne > 0) // Is there space remaining?
				other.hasSpace = true;
		}
		
		if (myMode == 1) // The one that is concerned with Cooking Skill
		{
			if (valueOne > 0) // Is there any cooking skills on the boat?
				other.hasCooks = true;
		}
		
		if (myMode == 2) // The one that is concerned with Passenger Count at this port...
		{
			if (valueOne > 0) // If there are any passengers...
				other.hasPassengers = true; // ... hasPassengers is true.
		}
	}
}

if (hasSpace and hasCooks and hasPassengers)
	visible = true;

