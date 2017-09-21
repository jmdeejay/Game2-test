// Objective: Take arguments from obj_AllShip User Event 0 and load them into ds map
// for obj_MyCaptain. Argument0 is an array.
// Invoked By: obj_AllShipPicker
// Invokes: obj_MyShip

var _thisArray = argument0;

var _name, _sailSpd, _maxRdy, _curRdy, _passCap, _currCann, _maxHP, 
_cannCap, _sightRan, _shipHP, _isCorv, _isDant, _isChris, _capac;

_name = _thisArray[0];
_sailSpd = _thisArray[1];
_maxRdy = _thisArray[2];
_curRdy = _thisArray[3];
_passCap = _thisArray[4];
_currCann = _thisArray[5];
_cannCap = _thisArray[6];
_sightRan = _thisArray[7];
_shipHP = _thisArray[8];
_isCorv = _thisArray[9];
_isDant = _thisArray[10];
_isChris = _thisArray[11];
_capac = _thisArray[12];
_maxHP = _thisArray[13];

with (obj_MyShip)
{
	//First, update the variables
	myShip[? "Name"] = _name;
	myShip[? "Capacity"] = _capac;
	myShip[? "SailSpeed"] = _sailSpd;
	myShip[? "MaxReady"] = _maxRdy;
	myShip[? "CurrentReady"] = _curRdy;
	myShip[? "PassengerCapacity"] = _passCap;
	myShip[? "CurrentCannons"] = _currCann;
	myShip[? "CannonCapacity"] = _cannCap;
	myShip[? "SightRange"] = _sightRan;
	myShip[? "CurrentHP"] = _shipHP;
	myShip[? "MaxHP"] = _maxHP;

	myShip[? "isCorvusCaptain"] = false;
	myShip[? "isDanteCaptain"] = false;
	myShip[? "isChristianCaptain"] = false;
}

	show_debug_message("Update Complete");
	var debugName = obj_MyShip.myShip[? "Name"];
	show_debug_message("You chose " + debugName);
	
with (obj_ButtonChooseShip)
{
	isVisible = true;
	isActive = true;
}