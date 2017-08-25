/// scr_Transaction(1dArray[])
// argument[0] is an array of obj_ButtonTransact to create. Each button needs 
// an x address, y address, and timer.
// Invoked By: obj_Dialog. NOTE: obj_Dialog is the **only** object allowed to invoke this script.

// show_debug_message("Start Button Create")
var buttons = argument0
var buttonCount = array_length_1d(argument0);

//Create buttons
if (G.gameState != GameState.BuildingTransaction)
{
	for( var i = 0; i < buttonCount; i++)
	{
		//spawn new buttons at proper placement.
		var _x = x + 10 + (i * 80); // x padding, plus distance for each button
		var _y = y + 10;// y padding is same across.
		var newButton = instance_create_layer(_x, _y, "Portraits", obj_ButtonTransact); //create new button
		newButton.myTrigger = (i * 10) + 10; // set new button's trigger timer
		newButton.myTitle = buttons[i];
		with (newButton)
		{
			event_user(0); // start the alarm
		}
	}
}
 
// show_debug_message("There are now " + string(instance_number(obj_ButtonTransact)) + " buttons.")