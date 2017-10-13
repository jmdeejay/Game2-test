/// scr_saveGrid();
// Objective: Write and Save the contents of myMap
var iter = 0;
var jsonFileName = "jsonMap.json";
var savFileName = "hexLands.sav";

show_debug_message("SAVE START");

repeat (global.hexCount)
{
	with (instance_find(obj_hexTester, iter))
	{
		if(tileID == iter)
		{
			ds_map_replace(global.hexLandMap, tileKey, landType);
		}
	}
	iter += 1;
}

// save list
ds_map_secure_save(global.hexLandMap, savFileName);
var _jsonCopy = json_encode(global.hexLandMap);
var file = file_text_open_write(jsonFileName)
file_text_write_string(file, _jsonCopy);
file_text_close(file);

show_debug_message("SAVE END");
