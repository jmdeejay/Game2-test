/// @description SETUP SHIP

var _name, _capacity, _sailSpeed, _maxRdy, _currentRdy, _passengerCapacity,
_currentCannon, _cannonCapacity, _sightRange, _currentHP, _maxHP, 
_isCorvus, _isDante, _isChris;

_name = NewGameShip[? "Name"];
_capacity = NewGameShip[? "Capacity"];
_sailSpeed = NewGameShip[? "SailSpeed"];
_maxRdy = NewGameShip[? "MaxReady"]
_currentRdy = NewGameShip[? "CurrentReady"];
_passengerCapacity = NewGameShip[? "PassengerCapacity"];
_currentCannon = NewGameShip[? "CurrentCannons"];
_cannonCapacity = NewGameShip[? "CannonCapacity"];
_sightRange = NewGameShip[? "SightRange"];
_currentHP = NewGameShip[? "CurrentHP"];
_maxHP = NewGameShip[? "MaxHP"];
_isCorvus = NewGameShip[? "isCorvusCaptain"];
_isDante = NewGameShip[? "isDanteCaptain"];
_isChris = NewGameShip[? "isChristianCaptain"];

with (obj_MyShip)
{
	myShip[? "Name"] = _name;
	myShip[? "Capacity"] = _capacity;
	myShip[? "SailSpeed"] = _sailSpeed;
	myShip[? "MaxReady"] = _maxRdy;
	myShip[? "CurrentReady"] = _currentRdy;
	myShip[? "PassengerCapacity"] = _passengerCapacity;
	myShip[? "CurrentCannons"] = _currentCannon;
	myShip[? "CannonCapacity"] = _cannonCapacity;
	myShip[? "SightRange"] = _sightRange;
	myShip[? "CurrentHP"] = _currentHP;
	myShip[? "MaxHP"] = _maxHP;
	myShip[? "isCorvusCaptain"] = _isCorvus;
	myShip[? "isDanteCaptain"] = _isDante;
	myShip[? "isChristianCaptain"] = _isChris;
}
