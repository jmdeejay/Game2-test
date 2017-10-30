// Invoked by: obj_PassengerTurnText,
// argument0 is revenue amount to tax
// argument1 is which tax rate to use. 0 for Commodity, 1 for Passenger.
// Returns the tax amount

var _taxableRevenue = argument0;
var _mode = argument1;

switch (_mode)
{
	case 0: // Commodity tax rate
		return (_taxableRevenue * G.SpiceTaxRate);
	break;
	
	case 1: // Passenger tax rate
		return (_taxableRevenue * G.PassengerTaxRate);
	break;
}