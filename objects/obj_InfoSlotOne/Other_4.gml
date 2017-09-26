/// @description Configure Xoffset
var _roomName = room_get_name(room);
currentRoom = string_copy(_roomName, 1, string_length(_roomName) - 1);
var _width = string_width(labelOne);

switch (currentRoom)
{
	case "rm_Market":
	xOffset = _width / 2;
	break;
	
	case "rm_Store":
	xOffset = 0;
	break;
	
	case "rm_Tavern":
	// Set up Start Value to show how many Cook Crew I already have.
	var _size = ds_list_size(obj_MyCaptain.myCrewManifest);
	for (var i = 0; i < _size; i++)
	{
		var _type = "";
		var _map = obj_MyCaptain.myCrewManifest[| i];
	
		if (_map[? "Type"] == "Cook") // If this crew is a Cook...
		{	
			startValue += 1; // ... increment startValue
		}
	}
	
	break;
}
