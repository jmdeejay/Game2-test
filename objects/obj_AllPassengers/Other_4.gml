/// @description PLACE PASSENGERS

show_debug_message("Placing Passengers..");
show_debug_message("There are a total of " + string(TotalPassengersAvailable) + " passengers.")

#region Setup Average
// Average the Attact Level
switch (CurrentTown)
{
	case VAIO:
	AverageAttraction = scr_AttractAverage(VAIO);
	break;
	
	case DOMO:
	AverageAttraction = scr_AttractAverage(DOMO);
	break;
	
	case CHIRS:
	AverageAttraction = scr_AttractAverage(CHIRS);
	break;
	
	case BARC:
	AverageAttraction = scr_AttractAverage(BARC);
	break;
	
	case ZAND:
	AverageAttraction = scr_AttractAverage(ZAND);
	break;
	
	case SYRR:
	AverageAttraction = scr_AttractAverage(SYRR);
	break;
	
	case KAND:
	AverageAttraction = scr_AttractAverage(KAND);
	break;
}
#endregion

#region Distribute Passengers
// Now that we have the Average, we need to first assign an Average number of Passengers to 
// Each port that is NOT the current Town

var _averagePassengerCount = TotalPassengersAvailable div 6;

for (var i = 1; i < 8; i++) // Ports 1 through 7
{
	if (i == CurrentTown) // Is this where we're currently at already?
	{
		PassengersForPort[i] = 0;
		continue; // Skip this loop. No passengers for this port.
	} 
	PassengersForPort[i] = _averagePassengerCount; // Assign the passengers.
}
#endregion

#region Compare and Subtract

// Now, we need to compare each port's Attractiveness against the Average Attractiveness. If it's
// lower, then we (checking for zero first) subtract the PassengersForPort number by the difference
// between Attractiveness and Average Attractiveness. That number is then pushed into the ds stack.
for (var i = 1; i < 8; i++)
{
	if (i == CurrentTown)
		continue;  // Skip the slot of the Town we're currently at.
	
	switch (i) // Which slot are we looking at?
	{
		case VAIO: // Vaio?
		if (AverageAttraction > G.VaiosAttract) // Is Vaios less attractive than the average?
		{
			var _difference = floor(AverageAttraction - G.VaiosAttract); // What's the whole-number difference?
			PassengersForPort[VAIO] -= _difference;	// Subtract those Passengers from that slot.
			
			if (PassengersForPort[VAIO] < 0)
				PassengersForPort[VAIO] = 0; // Can't have "negative" passengers.
				
			repeat (_difference);
			{
				if (PassengersForPort[VAIO] > 0) // Make sure that there are passengers to take.
					ds_stack_push(DestinationStack, 1); // Add them to the stack for each whole point below.
			}
		}
		show_debug_message("Vaio has " + string(PassengersForPort[VAIO]) + " waiting.");
		break;
		
		case DOMO: 
		if (AverageAttraction > G.DomosAttract) 
		{
			var _difference = floor(AverageAttraction - G.DomosAttract); 
			PassengersForPort[DOMO] -= _difference;
			
			if (PassengersForPort[DOMO] < 0)
				PassengersForPort[DOMO] = 0; 
				
			repeat (_difference);
			{
				if (PassengersForPort[DOMO] > 0) 
					ds_stack_push(DestinationStack, 1);
			}
		}
		show_debug_message("Domos has " + string(PassengersForPort[DOMO]) + " waiting.");
		break;
		
		case CHIRS: 
		if (AverageAttraction > G.ChirskAttract) 
		{
			var _difference = floor(AverageAttraction - G.ChirskAttract); 
			PassengersForPort[CHIRS] -= _difference;
			
			if (PassengersForPort[CHIRS] < 0)
				PassengersForPort[CHIRS] = 0; 
				
			repeat (_difference);
			{
				if (PassengersForPort[CHIRS] > 0) 
					ds_stack_push(DestinationStack, 1);
			}
		}
		show_debug_message("Chirsk has " + string(PassengersForPort[CHIRS]) + " waiting.");
		break;
		
		case BARC: 
		if (AverageAttraction > G.BarcellusAttract) 
		{
			var _difference = floor(AverageAttraction - G.BarcellusAttract); 
			PassengersForPort[BARC] -= _difference;
			
			if (PassengersForPort[BARC] < 0)
				PassengersForPort[BARC] = 0; 
				
			repeat (_difference);
			{
				if (PassengersForPort[BARC] > 0) 
					ds_stack_push(DestinationStack, 1);
			}
		}
		show_debug_message("Barcellus has " + string(PassengersForPort[BARC]) + " waiting.");
		break;
		
		case ZAND: 
		if (AverageAttraction > G.ZandrettaAttract) 
		{
			var _difference = floor(AverageAttraction - G.ZandrettaAttract); 
			PassengersForPort[ZAND] -= _difference;
			
			if (PassengersForPort[ZAND] < 0)
				PassengersForPort[ZAND] = 0; 
				
			repeat (_difference);
			{
				if (PassengersForPort[ZAND] > 0) 
					ds_stack_push(DestinationStack, 1);
			}
		}
		show_debug_message("Zandretta has " + string(PassengersForPort[ZAND]) + " waiting.");
		break;
		
		case SYRR: 
		if (AverageAttraction > G.SyrrAttract) 
		{
			var _difference = floor(AverageAttraction - G.SyrrAttract); 
			PassengersForPort[SYRR] -= _difference;
			
			if (PassengersForPort[SYRR] < 0)
				PassengersForPort[SYRR] = 0; 
				
			repeat (_difference);
			{
				if (PassengersForPort[SYRR] > 0) 
					ds_stack_push(DestinationStack, 1);
			}
		}
		show_debug_message("Syrr has " + string(PassengersForPort[SYRR]) + " waiting.");
		break;
		
		case KAND: 
		if (AverageAttraction > G.KandaAttract) 
		{
			var _difference = floor(AverageAttraction - G.KandaAttract); 
			PassengersForPort[KAND] -= _difference;
			
			if (PassengersForPort[KAND] < 0)
				PassengersForPort[KAND] = 0; 
				
			repeat (_difference);
			{
				if (PassengersForPort[KAND] > 0) 
					ds_stack_push(DestinationStack, 1);
			}
		}
		show_debug_message("Kanda has " + string(PassengersForPort[KAND]) + " waiting.");
		break;
		
	}	
}
#endregion

show_debug_message("Total Passengers unassigned is " + string(ds_stack_size(DestinationStack)));

show_debug_message("Placing Passengers COMPLETE");