/// @description INIT VARS
// Purpose: To define the number of passengers that wish to depart from Current Town and go to a specific
// destination. Needs to look up Current Town. Needs to look up Tourism Index globals? Needs to check Advertising
// expenditure. Needs to check ticket price set by player (and other players). Then fill random range 
// of Passengers for ports based on those factors.


CurrentTown = G.CurrentTown;
PlayersInTown = 1;
AverageAttraction = 0;


TotalPassengersAvailable = G.TotalTourismDemand;

PassengersForPort[6] = 0;

DestinationStack = ds_stack_create();