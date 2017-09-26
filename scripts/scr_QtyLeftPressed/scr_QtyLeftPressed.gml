// Invoked by: obj_ButtonQty - Left Pressed Event **EXCLUSIVE**

var _roomName = room_get_name(room);
_roomName = string_copy(_roomName, 1, string_length(_roomName) - 1);

switch (_roomName)
{
	case "rm_Store": 
	pressDelay = false;

	if (!myType and 
		myInput.printNumber < 100 and 
		obj_InfoTxtTwo.valueOne < obj_InfoTxtTwo.valueTwo) // Make sure Current Barrels is less than Barrel Capacity
			myInput.printNumber ++;

	else if (myType and myInput.printNumber > 0)
		myInput.printNumber -= 1;

	alarm_set(0, 40);
	break;
	
	case "rm_Tavern": 
	pressDelay = false;

	if (!myType and 
		myInput.printNumber < 100)
			myInput.printNumber ++;

	else if (myType and myInput.printNumber > 0)
		myInput.printNumber -= 1;

	alarm_set(0, 40);
	break;
	
}