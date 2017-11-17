/// @description UPDATE PAYROLL
// Invoked by: obj_SetSail - Left Pressed Event

var _headCount = ds_list_size(obj_MyCaptain.myCrewManifest); // How many crew do I have?
var _payRate = G.CrewWages * obj_MyCaptain.myCaptain[? "CrewPayRate"] // How much should they be paid EACH?
var _payPeriod = _headCount * _payRate; // Total payroll owed for this turn
//for example, 10 crew (headcount) x 100 wages = 1000 pay period.

MyLedger[? "Payroll"] += _payPeriod; // Add that to the existing payroll owed number.

// Update each crew individual paystubs
for (var i = 0; i < _headCount; i++)
{
	var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is a crew member ds_map
	_map[? "PayOwed"] += _payRate; // add it to the existing pay owed (if any)
	var _name = _map[? "Name"]; // debug purposes
	show_debug_message(_name + " is owed " + string(_map[?"PayOwed"])); // debug purposes
}
