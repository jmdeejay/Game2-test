/// @description CHECK CAPTAIN, APPLY BONUS
// NOTE: Do not invoke in Step Event


switch (obj_MyCaptain.myCaptain[? "Name"])
{
	case "Corvus Castigar":
	myShip[? "isCorvusCaptain"] = true;
	break;
	
	case "Dante Castigar":
	myShip[? "isDanteCaptain"] = true;
	break;
	
	case "Christian King":
	myShip[? "isChristianCaptain"] = true;
	break;
}

if (myShip[? "isCorvusCaptain"] == true)
{
	myShip[? "SailSpeed"] += 1;
}

if (myShip[? "isDanteCaptain"] == true)
{
	myShip[? "CurrentCannons"] += 2;
}

if (myShip[? "isChristianCaptain"] == true)
{
	myShip[? "Capacity"] += 10;
}