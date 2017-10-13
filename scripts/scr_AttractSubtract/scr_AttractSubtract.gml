// Invoked by: obj_AllPassengers - RoomStart

var _town = argument0;

if (AverageAttraction > PortAttractionLevels[_town]) // Is Vaios less attractive than the average?
{
	var _difference = floor(AverageAttraction - PortAttractionLevels[_town]); // What's the whole-number difference?
	PassengersForPort[_town] -= _difference;	// Subtract those Passengers from that slot.
			
	if (PassengersForPort[_town] < 0)
		PassengersForPort[_town] = 0; // Can't have "negative" passengers.
				
	repeat (_difference)
	{
		if (PassengersForPort[_town] > 0) // Make sure that there are passengers to take.
			ds_stack_push(DestinationStack, 1); // Add them to the stack for each whole point below.
	}
}
show_debug_message("Vaio has " + string(PassengersForPort[_town]) + " waiting.");