/// @description SETUP CAPTAIN
// Invoked by: rm_FirstRoom Creation Code

var _name, _crewXP, _crewReady, _crewPay, _crewTraitor, _crewMorale, _cannonStart;

_name = NewGameCaptain[? "Name"];
_crewXP = NewGameCaptain[? "CrewXPGrow"];
_crewReady = NewGameCaptain[? "CrewReadinessModifier"];
_crewPay = NewGameCaptain[? "CrewPayRate"];
_crewTraitor = NewGameCaptain[? "CrewTraitorChance"];
_crewMorale = NewGameCaptain[? "MoraleModifier"];
_cannonStart = NewGameCaptain[? "StartingCannons"];

with (obj_MyCaptain)
{
	myCaptain[? "Name"] = _name;
	myCaptain[? "CrewXPGrow"] = _crewXP;
	myCaptain[? "CrewReadinessModifier"] = _crewMorale;
	myCaptain[? "CrewPayRate"] = _crewPay;
	myCaptain[? "CrewTraitorChance"] = _crewTraitor;
	myCaptain[? "MoraleModifier"] = _crewMorale;
	myCaptain[? "StartingCannons"] = _cannonStart;
}