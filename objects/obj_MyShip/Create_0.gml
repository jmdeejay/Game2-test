/// @description DS MAP CREATE

// INSTANCE VAR
ReadyPercent = 0; // Increased by Seamen on board. Cannot exceed MaxReady.
CookingSkill = 0; // Increased by Cooks on board. Cannot exceed PassengerCapacity.
MannedGuns = 0; // Increased by Gunners on board. Cannot exceed CurrentCannons.
CurrentPassengers = 0;


// DS MAP 
myShip = ds_map_create();

ds_map_add(myShip, "Name", "");
ds_map_add(myShip, "Capacity", 100);
ds_map_add(myShip, "SailSpeed", 10);
ds_map_add(myShip, "MaxReady", 100);
ds_map_add(myShip, "CurrentReady", 0);
ds_map_add(myShip, "PassengerCapacity", 10);
ds_map_add(myShip, "CurrentCannons", 5);
ds_map_add(myShip, "CannonCapacity", 10);
ds_map_add(myShip, "SightRange", 1);
ds_map_add(myShip, "CurrentHP", 3);
ds_map_add(myShip, "MaxHP", 3);
ds_map_add(myShip, "isCorvusCaptain", false);
ds_map_add(myShip, "isDanteCaptain", false);
ds_map_add(myShip, "isChristianCaptain", false);
ds_map_add(myShip, "CurrentSeamen", 0);
ds_map_add(myShip, "CurrentCooks", 0);
ds_map_add(myShip, "CurrentGunners", 0);
