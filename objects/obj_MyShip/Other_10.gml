/// @description SAVE SHIP
// argument0 is an array with all the ship data
// Invoked by: scr_ChooseShip


show_debug_message("Updating Ship DS Map");

ds_map_replace(myShip, "Name", Name);
ds_map_replace(myShip, "Capacity", Capacity);
ds_map_replace(myShip, "SailSpeed", SailSpeed);
ds_map_replace(myShip, "NormalRequired", NormalRequired);
ds_map_replace(myShip, "MinRequire", MinRequire);
ds_map_replace(myShip, "PassengerCapacity", PassengerCapacity);
ds_map_replace(myShip, "CurrentCannons", CurrentCannons);
ds_map_replace(myShip, "CurrentAmmo", CurrentAmmo);
ds_map_replace(myShip, "CannonCapacity", CannonCapacity);
ds_map_replace(myShip, "SightRange", SightRange);
ds_map_replace(myShip, "CurrentHP", CurrentHP);
ds_map_replace(myShip, "MaxHP", MaxHP);
ds_map_replace(myShip, "isCorvusCaptain", isCorvusCaptain);
ds_map_replace(myShip, "isDanteCaptain", isDanteCaptain);
ds_map_replace(myShip, "isChristianCaptain", isChristianCaptain);

show_debug_message("Update Complete");
var thisName = ds_map_find_value(myShip, "Name");
show_debug_message("You chose " + thisName);