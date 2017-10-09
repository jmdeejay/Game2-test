
var tileNumber = argument0;


with (obj_hexTester)
{
	if(tileID == tileNumber)
	{
		
		ds_map_replace(global.hexLandMap, tileKey, landType);
	}
}

// save list
var _jsonCopy = json_encode(global.hexLandMap);
var file = file_text_open_write(working_directory + "\jsonMap.txt")
file_text_write_string(file, _jsonCopy);
file_text_close(file);
ds_map_secure_save(global.hexLandMap, "hexLands.sav")
