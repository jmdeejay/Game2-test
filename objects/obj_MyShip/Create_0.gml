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

ds_map_add(myShip, "Name", Name);
ds_map_add(myShip, "Capacity", Capacity);
ds_map_add(myShip, "SailSpeed", SailSpeed);
ds_map_add(myShip, "NormalRequired", NormalRequired);
ds_map_add(myShip, "MinRequire", MinRequire);
ds_map_add(myShip, "PassengerCapacity", PassengerCapacity);
ds_map_add(myShip, "CurrentCannons", CurrentCannons);
ds_map_add(myShip, "CannonCapacity", CannonCapacity);
ds_map_add(myShip, "SightRange", SightRange);
ds_map_add(myShip, "CurrentHP", CurrentHP);
ds_map_add(myShip, "MaxHP", MaxHP);
ds_map_add(myShip, "isCorvusCaptain", isCorvusCaptain);
ds_map_add(myShip, "isDanteCaptain", isDanteCaptain);
ds_map_add(myShip, "isChristianCaptain", isChristianCaptain);