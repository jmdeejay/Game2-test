var tileNum = argument0;

// create, find, load our ds list
var loadMap;
loadMap = ds_map_secure_load("hexLands.sav")

if(ds_exists(loadMap, ds_type_map)){
  with (obj_hexTester)
  {
    if (tileID == tileNum)
    {

        landType = ds_map_find_value(loadMap, tileKey);

    }
  }
  ds_map_destroy(loadMap);
}else{
  room_goto(rm_FirstTurn);
}