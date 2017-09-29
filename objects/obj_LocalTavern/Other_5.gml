/// @description DESTROY DS MAPS


repeat(mySeamanCount)
{
	var _unique = string(current_time);
    var cm = ds_map_create();
    ds_map_add(cm,"Name","Timmy_" + _unique + string(irandom(9)));
	ds_map_add(cm, "Type", "Seaman");
	ds_map_add(cm,"Status", "Green");
	ds_map_add(cm,"ExperiencePoints", 0);  
    ds_map_add(cm,"Readiness", 3);
	ds_map_add(cm, "Cooking", 0);
	ds_map_add(cm, "Gunning", 0);
	var _slot = ds_list_size(obj_MyCaptain.myCrewManifest);
    ds_list_add(obj_MyCaptain.myCrewManifest, cm);
	ds_list_mark_as_map(obj_MyCaptain.myCrewManifest, _slot - 1);	
}

repeat(myCookCount)
{
	var _unique = string(current_time);
    var cm = ds_map_create();
    ds_map_add(cm,"Name","Jean_" + _unique + string(irandom(9)));
	ds_map_add(cm, "Type", "Cook");
	ds_map_add(cm,"Status", "Green");
	ds_map_add(cm,"ExperiencePoints", 0);
    ds_map_add(cm,"Readiness", 0);
	ds_map_add(cm, "Cooking", 2);
	ds_map_add(cm, "Gunning", 0);
	var _slot = ds_list_size(obj_MyCaptain.myCrewManifest);
    ds_list_add(obj_MyCaptain.myCrewManifest, cm);
	ds_list_mark_as_map(obj_MyCaptain.myCrewManifest, _slot - 1);	
}

repeat(myGunnerCount)
{
	var _unique = string(current_time);
    var cm = ds_map_create();
    ds_map_add(cm,"Name","Frank_" + _unique + string(irandom(9)));
	ds_map_add(cm, "Type", "Gunner");
	ds_map_add(cm,"Status", "Green");
	ds_map_add(cm,"ExperiencePoints", 0); 
    ds_map_add(cm,"Readiness", 1);
	ds_map_add(cm, "Cooking", 0);
	ds_map_add(cm, "Gunning", 1);
	var _slot = ds_list_size(obj_MyCaptain.myCrewManifest);
    ds_list_add(obj_MyCaptain.myCrewManifest, cm);
	ds_list_mark_as_map(obj_MyCaptain.myCrewManifest, _slot - 1);	
}

ds_list_destroy(myMenu);