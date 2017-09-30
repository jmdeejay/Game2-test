/// @description SETUP CAPTAIN
// Invoked by: rm_FirstRoom Creation Code

var _name, _crewXP, _crewMod, _crewPay, _crewTraitor, _crewQuit, _cannonStart;

_name = NewGameCaptain[? "Name"];
_crewXP = NewGameCaptain[? "CrewXPGrow"];
_crewMod = NewGameCaptain[? "CrewReadinessModifier"];
_crewPay = NewGameCaptain[? "CrewPayRate"];
_crewTraitor = NewGameCaptain[? "CrewTraitorChance"];
_crewQuit = NewGameCaptain[? "CrewQuitChance"];
_cannonStart = NewGameCaptain[? "StartingCannons"];

with (obj_MyCaptain)
{
	myCaptain[? "Name"] = _name;
	myCaptain[? "CrewXPGrow"] = _crewXP;
	myCaptain[? "CrewReadinessModifier"] = _crewMod;
	myCaptain[? "CrewPayRate"] = _crewPay;
	myCaptain[? "CrewTraitorChance"] = _crewTraitor;
	myCaptain[? "CrewQuitChance"] = _crewQuit;
	myCaptain[? "StartingCannons"] = _cannonStart;
}