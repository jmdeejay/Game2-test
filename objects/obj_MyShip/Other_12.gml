/// @description UPDATE READINESS
// Invoked by: Port Room Creation Code.

var totalReadiness = 0;

with (obj_MyCaptain)
{
	for(var i = 0; i < ds_list_size(myCrewManifest); i++)
	{
	     var thisMap = myCrewManifest[| i];
		 totalReadiness += thisMap[? "Readiness"];
	}
}


myShip[? "CurrentReady"] = totalReadiness;

if (myShip[? "CurrentReady"] > myShip[? "MaxReady"])
	myShip[? "CurrentReady"] = myShip[? "MaxReady"];

ReadyPercent = floor((myShip[? "CurrentReady"] / myShip[? "MaxReady"]) * 100);