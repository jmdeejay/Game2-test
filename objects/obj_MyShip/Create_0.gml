/// @description DS MAP CREATE

myShip = ds_map_create();

Name = "";
Capacity = 100;
SailSpeed = 10;
NormalRequired = 10;
MinRequire = 5;
PassengerCapacity = 10;
CurrentCannons = 5;
CannonCapacity = 10;
CurrentAmmo = 0;
SightRange = 1;
CurrentHP = 3;
MaxHP = 3;

isCorvusCaptain = false;
isDanteCaptain = false;
isChristianCaptain = false;

CurrentSeamen = 0;
CurrentCooks = 0;
CurrentGunners = 0;

ds_map_add(myShip, "Name", "");
ds_map_add(myShip, "Capacity", 100);
ds_map_add(myShip, "SailSpeed", 10);
ds_map_add(myShip, "NormalRequired", 10);
ds_map_add(myShip, "MinRequire", 5);
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
