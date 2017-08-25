/// @description DS MAP CREATE

myCaptain = ds_map_create();

Name = "";
CrewStatus = "Green";
CrewXPGrow = 1.00;
CrewRequired = 1.00;
CrewPayRate = 1.00;
CrewTraitorChance = 1.00;
StartingCannons = 0;
CrewQuitChance = 0.15;

ds_map_add(myCaptain, "name", Name);
ds_map_add(myCaptain, "CrewStatus", CrewStatus);
ds_map_add(myCaptain, "CrewXPGrow", CrewXPGrow);
ds_map_add(myCaptain, "CrewRequired", CrewRequired);
ds_map_add(myCaptain, "CrewPayRate", CrewPayRate);
ds_map_add(myCaptain, "CrewTraitorChance", CrewTraitorChance);
ds_map_add(myCaptain, "CrewQuitChance", CrewQuitChance);
ds_map_add(myCaptain, "StartingCannon", StartingCannons);


// Testing GIT out