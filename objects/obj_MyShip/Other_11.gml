/// @description CHECK CAPTAIN, APPLY BONUS
// NOTE: Do not invoke in Step Event


switch (obj_MyCaptain.Name)
{
	case "Corvus Castigar":
	isCorvusCaptain = true;
	break;
	
	case "Dante Castigar":
	isDanteCaptain = true;
	break;
	
	case "Christian King":
	isChristianCaptain = true;
	break;
}

if (isCorvusCaptain and Name == "Remex")
{
	SailSpeed += 1;
}

if (isDanteCaptain and Name == "Nostro")
{
	CurrentCannons += 2;
}

if (isChristianCaptain and Name == "Ark")
{
	Capacity += 10;
}