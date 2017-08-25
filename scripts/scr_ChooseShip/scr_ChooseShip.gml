// Objective: Take arguments from obj_AllShip User Event 0 and load them into ds map
// for obj_MyCaptain. Argument0 is an array.
// Invoked By: obj_AllShipPicker
// Invokes: obj_MyShip

var _thisArray = argument0;

var _name, _sailSpd, _nrmlReq, _minReq, _passCap, _currCann, _maxHP, 
_cannCap, _sightRan, _shipHP, _isCorv, _isDant, _isChris, _capac;

_name = _thisArray[0];
_sailSpd = _thisArray[1];
_nrmlReq = _thisArray[2];
_minReq = _thisArray[3];
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
	Name = _name;
	Capacity = _capac;
	SailSpeed = _sailSpd;
	NormalRequired = _nrmlReq;
	MinRequire = _minReq;
	PassengerCapacity = _passCap;
	CurrentCannons = _currCann;
	CannonCapacity = _cannCap;
	SightRange = _sightRan;
	CurrentHP = _shipHP;
	MaxHP = _maxHP;

	isCorvusCaptain = false;
	isDanteCaptain = false;
	isChristianCaptain = false;
	
	event_user(0); // Save the DS MAP
}

with (obj_ButtonChooseShip)
{
	isVisible = true;
	isActive = true;
}