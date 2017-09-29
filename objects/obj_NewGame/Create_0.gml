/// @description INIT DS MAPS

// MY SHIP
NewGameShip = ds_map_create();

ds_map_add(NewGameShip, "Name", "");
ds_map_add(NewGameShip, "Capacity", 100);
ds_map_add(NewGameShip, "SailSpeed", 10);
ds_map_add(NewGameShip, "MaxReady", 100);
ds_map_add(NewGameShip, "CurrentReady", 0);
ds_map_add(NewGameShip, "PassengerCapacity", 10);
ds_map_add(NewGameShip, "CurrentCannons", 5);
ds_map_add(NewGameShip, "CannonCapacity", 10);
ds_map_add(NewGameShip, "SightRange", 1);
ds_map_add(NewGameShip, "CurrentHP", 3);
ds_map_add(NewGameShip, "MaxHP", 3);
ds_map_add(NewGameShip, "isCorvusCaptain", false);
ds_map_add(NewGameShip, "isDanteCaptain", false);
ds_map_add(NewGameShip, "isChristianCaptain", false);
ds_map_add(NewGameShip, "CurrentSeamen", 0);
ds_map_add(NewGameShip, "CurrentCooks", 0);
ds_map_add(NewGameShip, "CurrentGunners", 0);

// MY CAPTAIN
NewGameCaptain = ds_map_create();

ds_map_add(NewGameCaptain, "Name", "");
ds_map_add(NewGameCaptain, "CrewXPGrow", 1.00);
ds_map_add(NewGameCaptain, "CrewReadinessModifier", 1.00);
ds_map_add(NewGameCaptain, "CrewPayRate", 1.00);
ds_map_add(NewGameCaptain, "CrewTraitorChance", 1.00);
ds_map_add(NewGameCaptain, "CrewQuitChance", 0.15);
ds_map_add(NewGameCaptain, "StartingCannon", 0);


// MY LEDGER
NewGameLedger = ds_map_create();

ds_map_add(NewGameLedger, "Cash", Cash);
ds_map_add(NewGameLedger, "Savings", Savings);
ds_map_add(NewGameLedger, "SharkLoan", SharkLoan);
ds_map_add(NewGameLedger, "BankLoan", BankLoan);
ds_map_add(NewGameLedger, "CrewPay", CrewPay);
ds_map_add(NewGameLedger, "Taxes", Taxes);

