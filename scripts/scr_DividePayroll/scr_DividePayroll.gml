// Invoked by: scr_PayPayroll
// argument0 is the total amount paid to crew. Think of this number as a pile of money.
// This function goes threw the crew manifest and each crew member subtracts their 
// PayOwed from the pile in order.

var _payPile = argument0; // A pile of cash
var _count = ds_list_size(obj_MyCaptain.myCrewManifest); // The number of crew

for (var i = 0; i <= _count; i ++) // not sure if I want to do less-than||equal-to
{
	var _map = obj_MyCaptain.myCrewManifest[| i]; // where _map is the current crew member
	var _pay = _map[? "PayOwed"]; // How much this crew member is owed.
	if (_pay < _payPile) // Is there enough money in the pile?
	{
		_map[? "PayOwed"] = 0; // This crew memeber gets paid.
		_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.GetPaid);
		_payPile -= _pay; // subtract the pay amount from the pile.
	} else // If there isn't enough money left in the pile to pay the crew member...
	{
		_map[? "PayOwed"] -= _payPile;	// Pay them with what's left
		_payPile = 0;
		_map[? "Morale"] = scr_SetMorale(_map[? "Morale"], MORALE.GetStiffed);
	}
}

