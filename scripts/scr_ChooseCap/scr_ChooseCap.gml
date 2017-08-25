// Objective: Take arguments from obj_Captain**** and load them into ds map
// for obj_MyCaptain

var _name = argument0;
var _crewStatus = argument1;
var _crewXP = argument2;
var _crewReq = argument3;
var _crewPay = argument4;
var _crewTraitor = argument5;
var _crewQuit = argument6;
var _cannonStart = argument7;

with (obj_MyCaptain)
{
	Name = _name;
	CrewStatus = _crewStatus;
	CrewXPGrow = _crewXP;
	CrewRequired = _crewReq;
	CrewPayRate = _crewPay;
	CrewTraitorChance = _crewTraitor;
	CrewQuitChance = _crewQuit;
	StartingCannons = _cannonStart;
	
	event_user(0);
}

with (obj_ButtonChooseShip)
{
	isVisible = true;
	isActive = true;
}