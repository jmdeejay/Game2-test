/// @description DS MAP CREATE

//INSTANCE VARIABLES
totalSeamen = 0;
totalCooks = 0;
totalGunners = 0;


// CAPTAIN STATS
myCaptain = ds_map_create();

ds_map_add(myCaptain, "Name", "");
ds_map_add(myCaptain, "CrewXPGrow", 1.00);
ds_map_add(myCaptain, "CrewReadinessModifier", 1.00);
ds_map_add(myCaptain, "CrewPayRate", 1.00);
ds_map_add(myCaptain, "CrewTraitorChance", 1.00);
ds_map_add(myCaptain, "MoraleModifier", 0);
ds_map_add(myCaptain, "StartingCannon", 0);
ds_map_add(myCaptain, "LuckModifier", 0);


//CREW LIST

myCrewManifest = ds_list_create();

//MORALE ENUMS

enum MORALE
{
	Nothing,
	Bad,
	WitnessPunishment,
	WitnessMercy,
	BePunished,
	Fortune,
	GoodCrew,
	BattleWon,
	BattleLost,
	GetPaid,
	GetStiffed
}