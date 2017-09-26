// Invoked by: obj_ButtonQty **EXCLUSIVE**
// Purpose: Increment Qty number of obj_InputQty


var _roomName = room_get_name(room);
_roomName = string_copy(_roomName, 1, string_length(_roomName) - 1);

switch (_roomName)
{
	case "rm_Store": 
	if (myInput.printNumber < 100 
		and obj_InfoTxtTwo.valueOne < obj_InfoTxtTwo.valueTwo // Is Current Barrels Less Than Max Barrels?
		and myInput.isManual == false)
			myInput.printNumber ++;

	if (myInput.isManual == true)
	{
		myInput.isManual = false;
		myType = 0;
	}
	break;
	
	case "rm_Tavern": 
	if (myInput.printNumber < 100 
		and myInput.isManual == false)
			myInput.printNumber ++;

	if (myInput.isManual == true)
	{
		myInput.isManual = false;
		myType = 0;
	}
	break;
	
}