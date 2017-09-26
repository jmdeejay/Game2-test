/// @description UPDATE GUNNING
// Invoked by: Port room creation code

var _gunningTotal = 0;

with (obj_MyCaptain)
{
	for(var i = 0; i < ds_list_size(myCrewManifest); i++)
	{
	     var thisMap = myCrewManifest[| i];
		 _gunningTotal += thisMap[? "Cooking"];
	}
}


MannedGuns = _gunningTotal;

if (MannedGuns > myShip[? "CurrentCannons"])
	MannedGuns = myShip[? "CurrentCannons"];
