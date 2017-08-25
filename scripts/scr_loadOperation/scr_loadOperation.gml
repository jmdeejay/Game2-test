var tileNum = argument0;

// create, find, load our ds list
var loadMap = ds_map_create();
loadMap = ds_map_secure_load("hexLands.sav")

with (obj_hexTester)
{
	if (tileID == tileNum)
	{

		landType = ds_map_find_value(loadMap, tileKey);

	}
}

ds_map_destroy(loadMap);