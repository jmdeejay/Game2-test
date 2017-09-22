// Invoked by: scr_StartNewGame

with (obj_MyCaptain)
{
	var _CrewStat = myCaptain[? "CrewStatus"] // should be "Green" "Able" or "Seasoned"
	var _size = ds_list_size(myCrewManifest); // should be 10 at game start
	for (var i = 0; i < _size; i++)
	{
		 var thisMap= myCrewManifest[| i]; // pull ds_map from ds_list
		 thisMap[? "Status"] = _CrewStat; // set the crew's Status to the Captain's Crew Status (first time only)
		 var _readiness = thisMap[? "Readiness"];
		 
		 switch (thisMap[? "Status"])
		 {
			case "Green":
			_readiness = 3 * myCaptain[? "CrewReadinessModifier"];
			// stick the _readiness value back into the ds map
			thisMap[? "Readiness"] = _readiness;
			break;
			
			case "Able":
			_readiness = 5 * myCaptain[? "CrewReadinessModifier"];
			// stick the _readiness value back into the ds map
			thisMap[? "Readiness"] = _readiness;
			break;
			
			case "Seasoned":
			_readiness = 7 * myCaptain[? "CrewReadinessModifier"];
			// stick the _readiness value back into the ds map
			thisMap[? "Readiness"] = _readiness;
			break;
		 }
	 
	}
}