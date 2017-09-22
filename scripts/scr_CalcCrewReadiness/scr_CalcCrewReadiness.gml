// Invoked by: Port room creation code

with (obj_MyCaptain)
{
	var _size = ds_list_size(myCrewManifest); // should be 10 at game start
	for (var i = 0; i < _size; i++)
	{
		 var thisMap= myCrewManifest[| i]; // pull ds_map from ds_list
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