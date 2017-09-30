// Objective: Take arguments from obj_Captain**** and load them into ds map
// for obj_MyCaptain
// Invoked by: obj_ParentCharPicker - User Event 0

var _name = argument0;
var _crewStatus = argument1;
var _crewXP = argument2;
var _crewMod = argument3;
var _crewPay = argument4;
var _crewTraitor = argument5;
var _crewQuit = argument6;
var _cannonStart = argument7;

with (obj_NewGame)
{
	NewGameCaptain[? "Name"] = _name;
	NewGameCaptain[? "CrewXPGrow"] = _crewXP;
	NewGameCaptain[? "CrewReadinessModifier"] = _crewMod;
	NewGameCaptain[? "CrewPayRate"] = _crewPay;
	NewGameCaptain[? "CrewTraitorChance"] = _crewTraitor;
	NewGameCaptain[? "CrewQuitChance"] = _crewQuit;
	NewGameCaptain[? "StartingCannons"] = _cannonStart;
	
}

show_debug_message("Update Complete");
var debugName = obj_NewGame.NewGameCaptain[? "Name"];
show_debug_message("You chose " + debugName);

with (obj_ButtonChooseShip)
{
	isVisible = true;
	isActive = true;
}