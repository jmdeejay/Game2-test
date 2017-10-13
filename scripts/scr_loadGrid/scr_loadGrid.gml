/// scr_loadGrid();
// Objective: Load previously-saved contents of myMap
var time = current_time;
var jsonFileName = "jsonMap.json";
var savFileName = "hexLands.sav";
var isTileUndefined = false;

show_debug_message("LOAD START");
var loadMap = ds_map_secure_load(savFileName);

if(loadMap == -1){
	show_debug_message("LOAD JSON!!!!");
	if(file_exists(jsonFileName)){
		var myFile = file_text_open_read(jsonFileName);
		loadMap = json_decode(file_text_read_string(myFile));
		file_text_close(myFile);
	}
}

if(ds_exists(loadMap, ds_type_map))
{
	var loadedTileKey = ds_map_find_first(loadMap);
	for (var iter = 0; iter < ds_map_size(loadMap); iter++)
	{
		with (instance_find(obj_hexTester, iter))
		{
			if (tileID == iter){
				landType = ds_map_find_value(loadMap, tileKey);
				if(is_undefined(landType)){ landType = 0; isTileUndefined= true; }
			}
		}
		
		loadedTileKey = ds_map_find_next(loadMap, loadedTileKey);
	}
	ds_map_destroy(loadMap);
	
	if(isTileUndefined){
		show_debug_message("Warning: Some tiles are undefined & were not able to load properly.");
		show_debug_message("You should check if obj_hexMap has moved in the room. If so, you must re-export the map files.");
	}
	show_debug_message("LOAD COMPLETE");
	show_debug_message(string((current_time - time) / 1000) + "s to load grid");
}else{
	show_debug_message("LOAD FAILED. Map file didn't exist.");
	room_goto(rm_FirstTurn);
}
