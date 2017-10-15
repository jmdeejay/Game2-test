/// @description PLACE PASSENGERS

// Sum the Attractiveness
show_debug_message("Start Placing Passengers");
var _sum = 0;

for (var i = 1; i < 8; i++)
{
	if (i == CurrentTown)
		continue; // Skip this town, we are already here so passengers don't want this place.
	_sum += PortAttractionLevels[i];
}

show_debug_message("Sum is " + string(_sum));

// Find Ratios
var _Ratio;
_Ratio[0] = 0;

_Ratio[VAIO] = PortAttractionLevels[VAIO] / _sum;
_Ratio[DOMO] = PortAttractionLevels[DOMO] / _sum;
_Ratio[CHIRS] = PortAttractionLevels[CHIRS] / _sum;
_Ratio[BARC] = PortAttractionLevels[BARC] / _sum;
_Ratio[ZAND] = PortAttractionLevels[ZAND] / _sum;
_Ratio[SYRR] = PortAttractionLevels[SYRR] / _sum;
_Ratio[KAND] = PortAttractionLevels[KAND] / _sum;

// Multiply by Total Passengers
var PassForPortTotal = 0;
for (var i = 1; i < 8; i++)
{
    if (i == CurrentTown)
    {
        PassengersForPort[i] = 0;
        continue; // Skip to the next iteration
    }
    
    PassengersForPort[i] = floor(_Ratio[i] * TotalPassengersAvailable);
    PassForPortTotal += PassengersForPort[i];
}

show_debug_message("Ratio Passengers Total is " + string(PassForPortTotal));
show_debug_message("Total Passengers Available is " + string(TotalPassengersAvailable));

if (PassForPortTotal != TotalPassengersAvailable)
{
	var best_ports = ds_list_create();
	//total ports is the literally the total number of ports, not just ones wanting to be traveled to
	//we do it this way for safety
	for(var i = 0; i < total_ports; i++)
	{
	    if(i == CurrentTown)
	        continue;
	    //we add the indicies of your ports to the list
	    ds_list_add(best_ports, i)
	}
	show_debug_message("best_ports contains " + string(ds_list_size(best_ports)) + " ports.");
	
	for(var i = 0; i < total_ports - (TotalPassengersAvailable - PassForPortTotal)-1; i++) 
	{
	    var to_test = G.PASSENGERS_MAX; //basically just a huge number
	    var ind = 0;
    
	    //we find the smallest values and cull them
	    for(var j = 0; j < ds_list_size(best_ports); j++) 
		{
	        if(to_test > PassengersForPort[(best_ports[|j])]) 
			{
	            to_test = PassengersForPort[(best_ports[|j])];
	            ind = j;
	        }
	    }
		show_debug_message("Deleting best_port " + string(ind) + " which has " + string(best_ports[| j]) + " passengers.");
	    ds_list_delete(best_ports,ind);
	}
	
	for(var i = 0; i < ds_list_size(best_ports); i++) 
	{
	        PassengersForPort[(best_ports[|i])]++;
			
	}
	ds_list_destroy(best_ports);
	
	
}

show_debug_message("PASSENGERS AT PORTS:");
show_debug_message("VAIO: " + string(PassengersForPort[VAIO]));
show_debug_message("DOMO: " + string(PassengersForPort[DOMO]));
show_debug_message("CHIRSK: " + string(PassengersForPort[CHIRS]));
show_debug_message("BARC: " + string(PassengersForPort[BARC]));
show_debug_message("ZAND: " + string(PassengersForPort[ZAND]));
show_debug_message("SYRR: " + string(PassengersForPort[SYRR]));
show_debug_message("KANDA: " + string(PassengersForPort[KAND]));

show_debug_message("Placing Passengers Complete.")