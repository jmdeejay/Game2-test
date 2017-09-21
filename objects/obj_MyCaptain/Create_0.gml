/// @description DS MAP CREATE


// CAPTAIN STATS
myCaptain = ds_map_create();

ds_map_add(myCaptain, "Name", "");
ds_map_add(myCaptain, "CrewStatus", "Green");
ds_map_add(myCaptain, "CrewXPGrow", 1.00);
ds_map_add(myCaptain, "CrewReadinessModifier", 1.00);
ds_map_add(myCaptain, "CrewPayRate", 1.00);
ds_map_add(myCaptain, "CrewTraitorChance", 1.00);
ds_map_add(myCaptain, "CrewQuitChance", 0.15);
ds_map_add(myCaptain, "StartingCannon", 0);


//CREW LIST

myCrewManifest = ds_list_create();

// START OUT WITH TEN CREW MEMBERS
for (var i = 0; i < 10; i++)
{
    var cm = ds_map_create();
    ds_map_add(cm,"Name","Tom_" + string(i));
	ds_map_add(cm, "Type", "Seaman");
	ds_map_add(cm,"Status","Green"); // probably not necessary.
    ds_map_add(cm,"Readiness", 3);
    ds_list_add(myCrewManifest, cm);
	ds_list_mark_as_map(myCrewManifest, i);
}

