// Invoked by: obj_AllPassengers - Create Event


var _demand = 0; // This number will be tacked onto the G.TourismDemand number later.
var _advertSpend = (obj_MyLedger.Advertising div 1000); 
// Should return a whole number for each 1000 gold spent on Advertising.

repeat (_advertSpend) // How many thousands did we spend on Advertsing?
{
	var _morePassengers = irandom_range(4, 9); // For each thousand, add several passengers
	_demand += _morePassengers; 
}


var _tixDemand = (G.StandardTicketPrice - obj_MyLedger.TicketPrice);
if (_tixDemand < 0)
	_tixDemand = 0;
else
	_tixDemand = _tixDemand div 50; // Should return a whole number for each 50 below the standard price.

_demand += _tixDemand;
show_debug_message("Total Tourism Demand is " + string(G.TotalTourismDemand + _demand));
return G.TotalTourismDemand + _demand;

