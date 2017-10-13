/// @description INIT VARS
// Purpose: To define the number of passengers that wish to depart from Current Town and go to a specific
// destination. Needs to look up Current Town. Needs to look up Tourism Index globals? Needs to check Advertising
// expenditure. Needs to check ticket price set by player (and other players). Then fill random range 
// of Passengers for ports based on those factors.


CurrentTown = G.CurrentTown;
PlayersInTown = 1;
AverageAttraction = 0;
total_ports = 7;

TotalPassengersAvailable = G.TotalTourismDemand;

PassengersForPort[7] = 0;

PortAttractionLevels[0] = 0;
PortAttractionLevels[VAIO] = G.VaiosAttract;
PortAttractionLevels[DOMO] = G.DomosAttract;
PortAttractionLevels[CHIRS] = G.ChirskAttract;
PortAttractionLevels[BARC] = G.BarcellusAttract;
PortAttractionLevels[ZAND] = G.ZandrettaAttract;
PortAttractionLevels[SYRR] = G.SyrrAttract;
PortAttractionLevels[KAND] = G.KandaAttract;

DestinationStack = ds_stack_create();

PopularPorts = ds_list_create();
ds_list_add(PopularPorts, 0, VAIO, DOMO, CHIRS, BARC, ZAND, SYRR, KAND);