/// @description UPDATE COOKING SKILL
// Invoked by: Port room creation code.

var _cookingTotal = 0;

with (obj_MyCaptain)
{
	for(var i = 0; i < ds_list_size(myCrewManifest); i++)
	{
	     var thisMap = myCrewManifest[| i];
		 _cookingTotal += thisMap[? "Cooking"];
	}
}


CookingSkill = _cookingTotal;

if (CookingSkill > myShip[? "PassengerCapacity"])
	CookingSkill = myShip[? "PassengerCapacity"];
