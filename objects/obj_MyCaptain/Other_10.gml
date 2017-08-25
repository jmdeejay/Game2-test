/// @description SAVE CAPTAIN

show_debug_message("Updating Captain DS Map");

ds_map_replace(myCaptain, "name", Name);
ds_map_replace(myCaptain, "CrewStatus", CrewStatus);
ds_map_replace(myCaptain, "CrewXPGrow", CrewXPGrow);
ds_map_replace(myCaptain, "CrewRequired", CrewRequired);
ds_map_replace(myCaptain, "CrewPayRate", CrewPayRate);
ds_map_replace(myCaptain, "CrewTraitorChance", CrewTraitorChance);
ds_map_replace(myCaptain, "CrewQuitChance", CrewQuitChance);
ds_map_replace(myCaptain, "StartingCannon", StartingCannons);

show_debug_message("Update Complete");
var thisName = ds_map_find_value(myCaptain, "name");
show_debug_message("You chose " + thisName);