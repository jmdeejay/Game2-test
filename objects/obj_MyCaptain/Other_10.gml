/// @description STARTING CREW

// START OUT WITH TEN CREW MEMBERS
for (var i = 0; i < 10; i++)
{
    var cm = ds_map_create();
    ds_map_add(cm,"Name","Tom_" + string(i));
	ds_map_add(cm, "Type", "Seaman");
	ds_map_add(cm,"Status","Green"); 
	ds_map_add(cm, "ExperiencePoints", 0);
	ds_map_add(cm, "Turns", 0);
	ds_map_add(cm, "PayOwed", 0);
	ds_map_add(cm, "Morale", 100);
    ds_map_add(cm,"Readiness", 3);
	ds_map_add(cm, "Cooking", 0);
	ds_map_add(cm, "Gunning", 0);
    ds_list_add(myCrewManifest, cm);
	ds_list_mark_as_map(myCrewManifest, i);
}