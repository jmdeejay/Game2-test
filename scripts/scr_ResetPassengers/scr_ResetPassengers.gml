// Invoked by: scr_StartOver, scr_ExitMapScreen

// Return Passengers on MyShip to Port desired queue.
var _currentPassengers = obj_MyShip.CurrentPassengers;

repeat (_currentPassengers) // If this number is already ZERO then nothing should happen.
{
	obj_MyShip.CurrentPassengers -= 1;
	obj_AllPassengers.PassengersForPort[obj_MyShip.MyDestination] += 1;	
} // After this is done, there should be ZERO passengers on MyShip

obj_MyBarrels.MyBarrels[# 0, 18] = obj_MyShip.CurrentPassengers;
with (obj_MyBarrels)
{
	event_user(0); // Sum the barrels	
}