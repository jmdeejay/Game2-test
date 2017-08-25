// Invoked by: obj_LocalMarket
// Argument0 is the extended-cost (price paid * qty) for  that spice
// Argument1 is the quantity of barrels for that spice

var _extCost = argument0;
var _quantity = argument1;
var _pricePaid = 0;

if (_quantity == 0)
	return (0);

_pricePaid = round(_extCost / _quantity);

return (_pricePaid); 