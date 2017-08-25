
var tileNumber = argument0;


with (obj_hexTester)
{
	if(tileID == tileNumber)
	{
		
		ds_map_replace(global.hexLandMap, tileKey, landType);
	}
}

// save list
ds_map_secure_save(global.hexLandMap, "hexLands.sav")
